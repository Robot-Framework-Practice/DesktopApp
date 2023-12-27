using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.View;
using Đồ_án.ViewModel.Login;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity;
using System.Linq;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;

using Class = Đồ_án.Database.Class;

namespace Đồ_án.ViewModel.DashBroad
{
    public class StudentListingViewModel : BaseViewModel
    {
        public ICommand RegisterClass { get; set; }
        public ICommand CancelRegisterClass { get; set; }
        private ObservableCollection<Class> _classList;
        public ObservableCollection<Class> ClassList // 
        {
            get { return _classList; }
            set
            {
                _classList = value;
                OnPropertyChanged("ClassList");
            }
        }
        private ObservableCollection<Đồ_án.Database.Class> listRegisterClasses;

        public ObservableCollection<Đồ_án.Database.Class> ListRegisterClasses
        {
            get { return listRegisterClasses; }
            set { listRegisterClasses = value; OnPropertyChanged(nameof(ListRegisterClasses)); }
        }

        private string _filter;
        public string Filter
        {
            get { return _filter; }
            set
            {
                _filter = value;
                OnPropertyChanged("Filter");
                ClassFiltering.Filter = FilterBy;
            }
        }

        private Class _class;
        public Class Class
        {
            get { return _class; }
            set { _class = value; }
        }

        private string _idSubject;
        public string IdSubject
        {
            get { return _idSubject; }
            set
            {
                _idSubject = value;
                OnPropertyChanged();
            }
        }


        private MainStudent _mainStudent;
        public MainStudent MainStudent
        {
            get { return _mainStudent; }
            set { _mainStudent = value; }
        }

        Đồ_ÁnEntities Đồ_ÁnEntities;
        public ICommand AddClass { get; set; }
        public ICommand DeleteClass { get; set; }



        private ICollectionView _classFiltering;
        public ICollectionView ClassFiltering
        {
            get { return _classFiltering; }
            set { _classFiltering = value; }
        }
        public StudentListingViewModel()
        {
            Đồ_ÁnEntities = DataProvider.Instance.Database;
            LoadRegisterClasses();
            Class = new Class();
            LoadStudent();
            ClassFiltering = CollectionViewSource.GetDefaultView(ClassList);
            AddClass = new RelayCommand<object>((p) => true, Addclass);
            DeleteClass = new RelayCommand<object>((p) => true, Delete);
            RegisterClass = new RelayCommand<object>(p => true, RegisterClassForStudent);
            CancelRegisterClass = new RelayCommand<object>(p => true, Cancel);
        }

        private async void Cancel(object obj)
        {
            var rs = obj as Đồ_án.Database.Class;
            User user = LoginServices.CurrentUser;
            Đồ_án.Database.Result result = (from s in DataProvider.Instance.Database.Results where s.IdStudent == user.IdUser && s.IdClass == rs.IdClass select s).FirstOrDefault();
            DataProvider.Instance.Database.Results.Remove(result);
            user.Classes.Remove(rs);
            int i = await DataProvider.Instance.Database.SaveChangesAsync();
            if (i > 0)
            {
                //DataProvider.Instance.Database.SaveChanges();
                ListRegisterClasses.Remove(rs);
            }    
            else
            {
                MessageBox.Show($"Add class {rs.IdClass} got an Error", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void LoadRegisterClasses()
        {
            if (LoginServices.CurrentUser != null)
            {
                string struser = LoginServices.CurrentUser.IdUser;
                User user = (from s in DataProvider.Instance.Database.Users where struser == s.IdUser select s).FirstOrDefault();
                listRegisterClasses = new ObservableCollection<Class>(user.Classes);
                OnPropertyChanged(nameof(ListRegisterClasses));
            }
        }

        private async void RegisterClassForStudent(object obj)
        {
            var rs = obj as Đồ_án.Database.Class;
            User user = LoginServices.CurrentUser;
            user.Classes.Add(rs);
            int i = await DataProvider.Instance.Database.SaveChangesAsync();
            if (i > 0)
            {
                Đồ_án.Database.Result result = new Đồ_án.Database.Result()
                {
                    User = user,
                    Class = rs,
                    QT = 0,
                    GK = 0,
                    TH = 0,
                    CK = 0,
                    DiemTB = 0,
                }; 
                DataProvider.Instance.Database.Results.Add(result);
                await DataProvider.Instance.Database.SaveChangesAsync();
                MessageBox.Show($"Add class {rs.IdClass} successfully","Success",MessageBoxButton.OK, MessageBoxImage.Information);
                LoadRegisterClasses();
            }
            else
            {
                MessageBox.Show($"Add class {rs.IdClass} got an Error", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private bool FilterBy(object obj)
        {

            if (!string.IsNullOrEmpty(Filter))
            {
                var a = obj as Class;
                return a != null && a.Subject.NameSubject.Contains(Filter) || a.IdClass.Contains(Filter);
            }
            return true;
        }

        private async void Delete(object obj)
        {
            var _class = obj as Class;

            Đồ_ÁnEntities.Classes.Remove(_class);
            await Đồ_ÁnEntities.SaveChangesAsync();
            ClassList.Remove(_class);
            OnPropertyChanged(nameof(ClassList));
        }
        private async void Addclass(object obj)
        {
            if (!await Đồ_ÁnEntities.Subjects.Where(temp => temp.IdSubject == IdSubject).AnyAsync())
            {
                MessageBox.Show("Fail to Add class\nIdSubject Not Found", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            Class.IdSubject = IdSubject;
            Đồ_ÁnEntities.Classes.Add(Class);
            int i = await Đồ_ÁnEntities.SaveChangesAsync();
            _mainStudent = new MainStudent();
            ClassList.Add(Class);
            OnPropertyChanged(nameof(ClassList));
            MessageBox.Show($"Add class {Class.IdClass} successfully", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = _mainStudent;
            Class = new Class();
        }
        public void LoadStudent()
        {
            ClassList = new ObservableCollection<Class>(Đồ_ÁnEntities.Classes);
        }












    }
}
