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
using Đồ_án.ViewModel.Login.Service;
using System.Collections.ObjectModel;
using System.Xml;
using System.Windows;
using Đồ_án.ViewModel.Login;
using static Đồ_án.ViewModel.Login.LoginServices;

namespace Đồ_án.ViewModel
{
    public class ProfileViewModel : BaseViewModel
    {
        private string findID;
        public string FindID
        {
            get { return findID; }
            set { findID = value; OnPropertyChanged(); }
        }
        public bool IsExpanded
        {
            get
            {
                if (Student == null)
                    return true;
                return Student.UserRole.Role == "GV" ? false : true;
            }
        }

        public Visibility IsSV { get; set; }

        private User student;
        public User Student
        {
            get { return student; }
            set { student = value; OnPropertyChanged(); }
        }
        private string _gender;

        public string Gender
        {
            get { return _gender; }
            set
            {
                _gender = value;
                OnPropertyChanged();
            }
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





        public ICommand FindCommand { get; set; }
        public ICommand ProfileCommand { get; set; }

        private Profile profile { get; set; }
        public ProfileViewModel()
        {
            ProfileCommand = new RelayCommand<object>((p) => true, p => OnExcute());
            FindCommand = new RelayCommand<object>((p) => true, p => Find());
            ReLoad(this, new LoginEvent(CurrentUser));
            LoginServices.UpdateCurrentUser += ReLoad;
        }

        private async void Find()
        {
            User temp = FindID == CurrentUser.IdUser ? CurrentUser : UserServices.Instance.GetUserById(FindID);
            if (temp == null)
            {
                MessageBox.Show("Can't found student", "Students management", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            student = temp;
            if (temp.DetailUser.Gender == null) Gender = "null";
            else Gender = temp.DetailUser.Gender.Value ? "Male" : "Female";
            Father = await UserServices.Instance.GetFather(temp);
            Mother = await UserServices.Instance.GetMother(temp);

            OnPropertyChanged(nameof(Student));
            OnPropertyChanged(nameof(IsExpanded));
        }

        public void OnExcute()
        {
            if (profile == null)
                profile = new Profile();
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = profile;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.CornflowerBlue;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnInsert.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSubject.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnTeacher.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.DarkSlateGray;
        }

        private void ReLoad(object sender, LoginEvent e)
        {
            IsSV = Visibility.Visible;
            if (LoginServices.CurrentUser == null) return;
            string Role = LoginServices.CurrentUser.UserRole.Role;
            if (Role == "ADMIN") return;
            if (string.Compare(Role, "SV") != 0)
            {
                IsSV = Visibility.Collapsed;
            }
            OnPropertyChanged(nameof(IsSV));
            FindID = CurrentUser.IdUser;
            Find();
        }
    }
}
