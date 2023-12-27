using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Media;
using Đồ_án.Command;
using Đồ_án.View;
using Đồ_án.Database;
using System.Windows.Forms;
using System.Collections.ObjectModel;
using Đồ_án.ViewModel.Login.Service;
using Đồ_án.ViewModel.Login;
using System.ComponentModel;
using System.Windows.Data;

namespace Đồ_án.ViewModel.DashBroad.Teacher
{
    public class TeacherViewModel : BaseViewModel
    {
        public ICommand TeacherFrame { get; set; }
        public ICommand AddTeacher { get; set; }
        public ICommand Update { get; set; }
        public ICommand InsertNewTeacher { get; set; }
        public ICommand DeleteTeacher { get; set; }
        public ICommand UpdateInformation { get; set; }
        private bool index = false;

        public bool Index
        {
            get { return this.index; }
            set { this.index = value; this.OnPropertyChanged(nameof(Index)); }
        }


        private ObservableCollection<Đồ_án.Database.User> listTeacher;

        public ObservableCollection<Đồ_án.Database.User> ListTeacher
        {
            get { return listTeacher; }
            set { listTeacher = value; OnPropertyChanged(nameof(ListTeacher)); }
        }

        private Components.TeacherUpdating teacherUpdating;

        public Components.TeacherUpdating TeacherUpdating
        {
            get { return teacherUpdating; }
            set { teacherUpdating = value; }
        }

        private View.Teacher teacher;
        public View.Teacher Teacher
        {
            get { return teacher; }
            set { teacher = value; }
        }

        private Đồ_án.Database.User newTeacher;
        public Đồ_án.Database.User NewTeacher
        {
            get { return newTeacher; }
            set { newTeacher = value; OnPropertyChanged(nameof(NewTeacher)); }
        }
        private DetailUser _newDetailTeacher;
        public DetailUser NewDetailTeacher
        {
            get { return _newDetailTeacher; }
            set
            {
                _newDetailTeacher = value;
                OnPropertyChanged(nameof(NewDetailTeacher));
            }
        }



        public string IdTeacher
        {
            get { return NewTeacher.IdUser; }
            set
            {
                if (NewTeacher.IdUser == DefaultPassWord || string.IsNullOrEmpty(DefaultPassWord))
                    DefaultPassWord = value;
                if (NewTeacher.IdUser + "@uit.edu.vn" == Gmail || string.IsNullOrEmpty(Gmail))
                    Gmail = value + "@uit.edu.vn";
                NewTeacher.IdUser = value;
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


        private Đồ_án.Database.User updateTeacher;

        public Đồ_án.Database.User UpdateTeacher
        {
            get { return updateTeacher; }
            set { updateTeacher = value; OnPropertyChanged(nameof(UpdateTeacher)); }
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

        private string _filter;
        public string Filter
        {
            get { return _filter; }
            set
            {
                _filter = value;
                OnPropertyChanged("Filter");
                TeacherFiltering.Filter = FilterBy;
            }
        }

        private ICollectionView _teacherFiltering;
        public ICollectionView TeacherFiltering
        {
            get { return _teacherFiltering; }
            set { _teacherFiltering = value; }
        }

        private Guid _idRoleGV = UserServices.Instance.GetIdUserRole("GV");
        public View.InsertNewTeacher insertNewTeacher { get; set; }
        public TeacherViewModel()
        {
            LoadTeacher();
            TeacherFiltering = CollectionViewSource.GetDefaultView(ListTeacher);
            NewTeacher = new Đồ_án.Database.User();
            NewDetailTeacher = new DetailUser();

            InsertNewTeacher = new RelayCommand<object>(p => true, p =>
            {
                insertNewTeacher = new View.InsertNewTeacher();
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = insertNewTeacher;
            });
            
            
            DefaultPassWord = string.Empty;
            Gmail = string.Empty;
            UpdatePassWord = string.Empty;


            TeacherFrame = new RelayCommand<object>(p => true, p =>
            {
                teacher = new View.Teacher(false);
                index = false;
                OnPropertyChanged(nameof(index));
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = teacher;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnTeacher.Background = Brushes.CornflowerBlue;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnInsert.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSubject.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.DarkSlateGray;
                ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.DarkSlateGray;
            } 
            );
            AddTeacher = new RelayCommand<object>(p => true, async p =>
            {
                NewTeacher.Passwd = SHA256Cryptography.Instance.EncryptString(DefaultPassWord);
                NewTeacher.IdUserRole = _idRoleGV;
                NewTeacher.Email = Gmail;
                NewTeacher.DisplayName = NewDetailTeacher.FullName;

                if (!string.IsNullOrEmpty(NewDetailTeacher.CCCD))
                {
                    DataProvider.Instance.Database.DetailUsers.Add(NewDetailTeacher);
                    NewTeacher.CCCD = NewDetailTeacher.CCCD;
                }

                int i = await UserServices.Instance.SaveUserToDatabase(NewTeacher);
                if (i > 0)
                {
                    MessageBox.Show("Add teacher successfully");
                    teacher = new View.Teacher(false);
                    ListTeacher.Add(newTeacher);
                    OnPropertyChanged(nameof(ListTeacher));
                    ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = teacher;
                }
                else
                {
                    MessageBox.Show("Add teacher unsuccessfully");
                }
                NewTeacher = new Đồ_án.Database.User();
                NewDetailTeacher = new DetailUser();
                DefaultPassWord = string.Empty;
                Gmail = string.Empty;
            }
            );

            DeleteTeacher = new RelayCommand<object>(p => true, async p =>
            {
                var rs = p as Đồ_án.Database.User;
                DataProvider.Instance.Database.Users.Remove(rs);
                await DataProvider.Instance.Database.SaveChangesAsync();
                ListTeacher.Remove(rs);
                OnPropertyChanged(nameof(ListTeacher));
            }
            );

            Update = new RelayCommand<object>(p => true, p =>
            {
                var rs = p as Đồ_án.Database.User;
                updateTeacher = rs;
                OnPropertyChanged(nameof(updateTeacher));
                index = true;
                OnPropertyChanged(nameof(index));
                teacher = new View.Teacher(index);
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = teacher;
            }
            );

            UpdateInformation = new RelayCommand<object>(p => true, async p =>
            {
                string id = updateTeacher.IdUser;
                Đồ_án.Database.User qr = UserServices.Instance.GetUserById(id);
                ListTeacher.Remove(qr);
                qr = updateTeacher;
                ListTeacher.Add(qr);
                OnPropertyChanged(nameof(ListTeacher));
                if (!string.IsNullOrEmpty(UpdatePassWord))
                {
                    User user = UserServices.Instance.GetUserById(id);
                    user.Passwd = SHA256Cryptography.Instance.EncryptString(UpdatePassWord);
                    UpdatePassWord = string.Empty;
                }
                int i = DataProvider.Instance.Database.SaveChanges();
                if (i > 0)
                {
                    MessageBox.Show("Update successfully", "Update", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    teacher = new View.Teacher(false);
                    ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = teacher;
                }
                else
                {
                    MessageBox.Show("Update unsuccessfully", "Update", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            );
        }
        private bool FilterBy(object obj)
        {

            if (!string.IsNullOrEmpty(Filter))
            {
                var a = obj as Database.User;
                return (a != null) && (a.IdUser.Contains(Filter) || a.DisplayName.Contains(Filter) || a.Email.Contains(Filter));
            }
            return true;
        }

        public void LoadTeacher()
        {
            listTeacher = new ObservableCollection<Database.User>(DataProvider.Instance.Database.Users.Where(temp => temp.IdUserRole == _idRoleGV));
        }
    }
}
