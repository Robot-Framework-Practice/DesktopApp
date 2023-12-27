using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Đồ_án.Command;
using Đồ_án.Database;
using System.ComponentModel;
using System.Collections.ObjectModel;
using Đồ_án.ViewModel.Login;
using System.Windows.Input;

namespace Đồ_án.ViewModel.DashBroad.Education.Components
{
    public class ScheduleViewModel : BaseViewModel
    {
        public ICommand DeleteCommand { get; set; }
        public ICommand Open { get; set; }
        public ICommand EducationFrame { get; set; }
        private ObservableCollection<Đồ_án.Database.Notifycation> listNotifycations;

        public ObservableCollection<Đồ_án.Database.Notifycation> ListNotifycations
        {
            get { return listNotifycations; }
            set { listNotifycations = value; OnPropertyChanged(nameof(ListNotifycations)); }
        }

        private Notifycation openNotifycation { get; set; }

        public Đồ_án.Database.Notifycation OpenNotifycation
        {
            get { return openNotifycation; }
            set { openNotifycation = value; OnPropertyChanged(nameof(OpenNotifycation)); }
        }

        //public View.OpenNotifycation openNotifycationFrame { get; set; }

        public ScheduleViewModel()
        {
            LoadNotifycation(this, new LoginServices.LoginEvent(LoginServices.CurrentUser));
            DeleteCommand = new RelayCommand<object>(p => true, p =>
            {
                var rs = p as Notifycation;
                User user = LoginServices.CurrentUser;
                rs.Users.Remove(user);
                DataProvider.Instance.Database.SaveChanges();
                LoadNotifycation(this, new LoginServices.LoginEvent(LoginServices.CurrentUser));
            });

            Open = new RelayCommand<object>(p => true, p =>
            {
                var rs = p as Đồ_án.Database.Notifycation;
                openNotifycation = rs;
                DateTime dt = new DateTime(OpenNotifycation.DateNotify.Value.Year, OpenNotifycation.DateNotify.Value.Month, OpenNotifycation.DateNotify.Value.Day, OpenNotifycation.DateNotify.Value.Hour, OpenNotifycation.DateNotify.Value.Minute, OpenNotifycation.DateNotify.Value.Second);
                View.OpenNotifycation openNotifycationFrame = new View.OpenNotifycation();
                openNotifycation.DateNotify = new DateTime(dt.Year, dt.Month, dt.Day, dt.Hour, dt.Minute, dt.Second);
                OnPropertyChanged(nameof(OpenNotifycation));
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = openNotifycationFrame;
            });

            EducationFrame = new RelayCommand<object>(p => true, p =>
            {
                View.Education education = new View.Education();
                ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = education;
                LoadNotifycation(this, new LoginServices.LoginEvent(LoginServices.CurrentUser));
            });

            LoginServices.UpdateCurrentUser += LoadNotifycation;
        }

        private void LoadNotifycation(object sender, LoginServices.LoginEvent loginEvent)
        {
            User user = LoginServices.CurrentUser;
            listNotifycations = new ObservableCollection<Notifycation>(user.Notifycations);
            OnPropertyChanged(nameof(ListNotifycations));
        }
    }
}
