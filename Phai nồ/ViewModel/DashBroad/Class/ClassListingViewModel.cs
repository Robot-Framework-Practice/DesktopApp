using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.View;
using Đồ_án.ViewModel.DashBroad;
using Đồ_án.ViewModel.Login;
using Đồ_án.ViewModel.Login.Service;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Input;
using static System.Net.Mime.MediaTypeNames;
using Class = Đồ_án.Database.Class;
using System.Xml;

namespace Đồ_án.ViewModel
{
    public class ClassListingViewModel : BaseViewModel
    {

        private MainClass mainClass;

        public MainClass MainClass
        {
            get { return mainClass; }
            set { mainClass = value; }
        }
        


        public ObservableCollection<User> List
        {
            get { return ClassDataStore.SList; }
            set
            {
                ClassDataStore.SList = value;
                OnPropertyChanged();
            }
        }

        public User SelectedStudent
        {
            set
            {
                ClassDataStore.SelectedStudent = value;
            }
        }


        private User _student;
        public User Student
        {
            get { return _student; }
            set { _student = value; }
        }

        private DetailUser _detailStudent;
        public DetailUser DetailStudent
        {
            get { return _detailStudent; }
            set { _detailStudent = value; }
        }

        private Relative _father;
        public Relative Father
        {
            get { return _father; }
            set
            {
                _father = value;
                OnPropertyChanged();
            }
        }

        private Relative _mother;
        public Relative Mother
        {
            get { return _mother; }
            set
            {
                _mother = value;
                OnPropertyChanged();
            }
        }



        public string IdStudent
        {
            get { return Student.IdUser; }
            set
            {
                if (Student.IdUser == DefaultPassWord || string.IsNullOrEmpty(DefaultPassWord))
                    DefaultPassWord = value;
                if (Student.IdUser + "@gm.uit.edu.vn" == Gmail || string.IsNullOrEmpty(Gmail))
                    Gmail = value + "@gm.uit.edu.vn";
                Student.IdUser = value;
                OnPropertyChanged();
            }
        }

        private string _defaultPassWord;
        public string DefaultPassWord
        {
            get { return _defaultPassWord; }
            set
            {
                _defaultPassWord = value;
                OnPropertyChanged();
            }
        }
        private string _gmail;
        public string Gmail
        {
            get { return _gmail; }
            set
            {
                _gmail = value;
                OnPropertyChanged();
            }
        }
        private Guid _idRoleSV = UserServices.Instance.GetIdUserRole("SV");



        Đồ_ÁnEntities Đồ_ÁnEntities;
        
        public readonly ClassDataStore ClassDataStore;
        public ICommand AddCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand DeleteAll { get; set; }



        public ClassListingViewModel(ClassDataStore classDataStore)
        {
            Đồ_ÁnEntities = DataProvider.Instance.Database;
            // classList = new ObservableCollection<Đồ_án.Database.Class>(Đồ_ÁnEntities.Classes);


            ClassDataStore = classDataStore;
            Student = new User();
            DetailStudent = new DetailUser();
            Father = new Relative();
            Father.Gender = true;
            Mother = new Relative();
            Mother.Gender = false;
            
            List = new ObservableCollection<User>(Đồ_ÁnEntities.Users.Where(temp => temp.IdUserRole == _idRoleSV));

            DefaultPassWord = string.Empty;
            Gmail = string.Empty;



            AddCommand = new RelayCommand<object>((p) => true, Add);
            DeleteCommand = new RelayCommand<object>((p) => true, Delete);
            DeleteAll = new RelayCommand<object>((p) => true, Deleteall);

        }



        private async void Deleteall(object obj)
        {
            var a = Đồ_ÁnEntities.Users.Where(temp => temp.IdUserRole == _idRoleSV);
            Đồ_ÁnEntities.Users.RemoveRange(a);
            await Đồ_ÁnEntities.SaveChangesAsync();
            List.Clear();
        }

        private async void Delete(object obj)
        {
            var student = obj as User;
            Đồ_ÁnEntities.Users.Remove(student);
            await Đồ_ÁnEntities.SaveChangesAsync();
            List.Remove(student);
            OnPropertyChanged("List");
        }
        private async void Add(object obj)
        {
            Student.Passwd = SHA256Cryptography.Instance.EncryptString(DefaultPassWord);
            Student.IdUserRole = _idRoleSV;
            Student.Email = Gmail;
            Student.DisplayName = DetailStudent.FullName;
            Student.CCCD = DetailStudent.CCCD;
            
            if (!string.IsNullOrEmpty(Father.CCCD))
            {
                DataProvider.Instance.Database.Relatives.Add(Father);
                DetailStudent.Relatives.Add(Father);
            }
            if (!string.IsNullOrEmpty(Mother.CCCD))
            {
                DataProvider.Instance.Database.Relatives.Add(Mother);
                DetailStudent.Relatives.Add(Mother);
            }

            DataProvider.Instance.Database.DetailUsers.Add(DetailStudent);

            int i = await UserServices.Instance.SaveUserToDatabase(Student);
            if (i > 0)
            {
                mainClass = new MainClass();    
                List.Add(Student);
                OnPropertyChanged(nameof(List));
                MessageBox.Show("Add student succesfully","Success",MessageBoxButtons.OK,MessageBoxIcon.Information);
                OnPropertyChanged();
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = mainClass;
            }
            else
            {
                MessageBox.Show("Add student failed", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            Student = new User();
            DetailStudent = new DetailUser();
            Father = new Relative();
            Father.Gender = true;
            Mother = new Relative();
            Mother.Gender = false;
            DefaultPassWord = string.Empty;
            Gmail = string.Empty;
        }
    }
}
