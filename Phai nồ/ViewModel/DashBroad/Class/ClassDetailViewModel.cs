using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.View;
using Đồ_án.ViewModel.Login.Service;
using Đồ_án.ViewModel.Login;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Xml;
using static System.Net.Mime.MediaTypeNames;
using Class = Đồ_án.Database.Class;
using System.Windows.Forms;
using System.Data.Entity;

namespace Đồ_án.ViewModel.DashBroad
{
    public class ClassDetailViewModel : BaseViewModel
    {
        private readonly ClassDataStore _classDataStore;
        

        private User selectedDetailStudent;
        public User SelectedDetailStudent
        {
            get 
            {
                return _classDataStore.SelectedStudent;
            }
            set 
            { 
                _classDataStore.SelectedStudent = value;
                
            }
        }

        private Relative _selectedFather;
        public Relative SelectedFather
        {
            get { return _selectedFather; }
            set
            {
                _selectedFather = value;
                OnPropertyChanged();
            }
        }

        private Relative _selectedMother;
        public Relative SelectedMother
        {
            get { return _selectedMother; }
            set
            {
                _selectedMother = value;
                OnPropertyChanged();
            }
        }


        private MainClass _mainclass;
        public MainClass MainClass
        {
            get { return _mainclass; }
            set { _mainclass = value; }
        }


        private string _updatePassWord;
        public string UpdatePassWord
        {
            get { return _updatePassWord; }
            set
            {
                _updatePassWord = value;
                OnPropertyChanged();
            }
        }



        Đồ_ÁnEntities đồ_ÁnEntities;
        public ICommand UpdateCommand { get; set; }

        public ClassDetailViewModel(ClassDataStore classDataStore)
        {
            UpdatePassWord = string.Empty;
            _classDataStore = classDataStore;
            _classDataStore.OnSelectedStudentChanged += SelectedDetailStudentChanged;
            UpdateCommand = new RelayCommand<object>((p) => true, Update);
            đồ_ÁnEntities = DataProvider.Instance.Database;
            
        }
        public async void Update(object obj)
        {
            if (!string.IsNullOrEmpty(UpdatePassWord))
            {
                SelectedDetailStudent.Passwd = SHA256Cryptography.Instance.EncryptString(UpdatePassWord);
                UpdatePassWord = string.Empty;
            }

            if (!string.IsNullOrEmpty(SelectedFather.CCCD))
            {
                Relative relative = DataProvider.Instance.Database.Relatives.FirstOrDefault(temp => temp.CCCD == SelectedFather.CCCD);
                if (relative == null)
                {
                    DataProvider.Instance.Database.Relatives.Add(SelectedFather);
                }
                if (!SelectedDetailStudent.DetailUser.Relatives.Where(temp => temp.CCCD == SelectedFather.CCCD).Any())
                    SelectedDetailStudent.DetailUser.Relatives.Add(SelectedFather);
            }
            if (!string.IsNullOrEmpty(SelectedMother.CCCD))
            {
                Relative relative = DataProvider.Instance.Database.Relatives.FirstOrDefault(temp => temp.CCCD == SelectedMother.CCCD);
                if (relative == null)
                {
                    DataProvider.Instance.Database.Relatives.Add(SelectedMother);
                }
                if (!SelectedDetailStudent.DetailUser.Relatives.Where(temp => temp.CCCD == SelectedMother.CCCD).Any())
                    SelectedDetailStudent.DetailUser.Relatives.Add(SelectedMother);
            }

            int i = DataProvider.Instance.Database.SaveChanges();
            if (i > 0)
            {
                MessageBox.Show("Update successfully", "Update", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Update unsuccessfully", "Update", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            OnPropertyChanged(nameof(SelectedDetailStudent));
            _mainclass = new MainClass();
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = _mainclass;
        }

        private async void SelectedDetailStudentChanged()
        {
            SelectedFather = await UserServices.Instance.GetFather(SelectedDetailStudent);
            if (SelectedFather == null)
            {
                SelectedFather = new Relative();
                SelectedFather.Gender = true;
                SelectedFather.CCCD = string.Empty;
            }
            SelectedMother = await UserServices.Instance.GetMother(SelectedDetailStudent);
            if (SelectedMother == null)
            {
                SelectedMother = new Relative();
                SelectedMother.Gender = false;
                SelectedMother.CCCD = string.Empty;
            }

            OnPropertyChanged(nameof(SelectedDetailStudent));
        }
    }
}
