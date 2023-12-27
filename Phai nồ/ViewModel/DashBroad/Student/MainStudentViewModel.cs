using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Media;
using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.View;
using Đồ_án.ViewModel.DashBroad;
using static System.Net.Mime.MediaTypeNames;


namespace Đồ_án.ViewModel
{
    public class MainStudentViewModel
    {
        private MainStudent _mainstudent;
        public MainStudent MainStudent
        {
            get { return _mainstudent; }
            set { _mainstudent = value; }
        }
        public StudentListingViewModel StudentListingViewModel { get; set; }
        public ICommand MainStudentCommand { get; set; }
        public ICommand AddStudentCommand { get; set; } 
        public MainStudentViewModel()
        {
            StudentListingViewModel = new StudentListingViewModel();
            MainStudentCommand = new RelayCommand<object>(p => true, OnExcute);
            AddStudentCommand = new RelayCommand<object>(p => true, p => AddStudentCommandExcute());
        }
 
        private void AddStudentCommandExcute()
        {
            View.AddStudent _addStudent = new View.AddStudent();
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = _addStudent;
        }

        private void OnExcute(object obj)
        {
            _mainstudent = new MainStudent();
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = _mainstudent;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.CornflowerBlue;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnInsert.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSubject.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnTeacher.Background = Brushes.DarkSlateGray;
        }
    }
}
