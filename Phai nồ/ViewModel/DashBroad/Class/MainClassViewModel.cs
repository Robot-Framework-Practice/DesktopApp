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
    public class MainClassViewModel : BaseViewModel
    {
        private MainClass _mainclass;
        public MainClass MainClass
        {
            get { return _mainclass; }
            set { _mainclass = value; }
        }


        private readonly ClassDataStore _classDataStore;
        public ClassListingViewModel ClassListingViewModel { get; set; }
        public ClassDetailViewModel ClassDetailViewModel { get; set; }



        public ICommand MainClassCommand { get; set; }
        public ICommand ClassCommand { get; set; }
        private View.Class _class;

        public View.Class Class
        {
            get { return _class; }
            set { _class = value; OnPropertyChanged("Class"); }
        }


        public MainClassViewModel()
        {
            _classDataStore = new ClassDataStore();
            ClassListingViewModel = new ClassListingViewModel(_classDataStore);
            ClassDetailViewModel = new ClassDetailViewModel(_classDataStore);

            MainClassCommand = new RelayCommand<object>(p => true, p => OnExcute());
            ClassCommand = new RelayCommand<object>(p => true, p => ClassCommandExecute());
        }



        private void ClassCommandExecute()
        {
            _class = new View.Class(ClassListingViewModel);
            OnPropertyChanged(nameof(Đồ_án.ViewModel.DashBroad.StudentListingViewModel.ClassList));
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = _class;
        }

        public void OnExcute()
        {
            _mainclass = new MainClass();
            OnPropertyChanged(nameof(Đồ_án.ViewModel.ClassListingViewModel.List));
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = _mainclass;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.CornflowerBlue;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnInsert.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSubject.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnTeacher.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.DarkSlateGray;
        }
    }
}
