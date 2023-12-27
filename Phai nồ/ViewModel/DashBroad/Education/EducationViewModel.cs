using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using Đồ_án.Command;
using Đồ_án.View;
using Đồ_án.Database;
using Đồ_án.ViewModel.DashBroad;

namespace Đồ_án.ViewModel
{
    public class EducationViewModel
    {
        private Education _education;
        public Education Education
        {
            get { return _education; }
            set { _education = value; }
        }
        public ICommand EducationCommand { get; set; }
        public EducationViewModel()
        {

            EducationCommand = new RelayCommand<object>(p => true, OnExcute);
            
        }

        private void OnExcute(object obj)
        {
            if (Education == null)
                Education = new Education();
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = Education;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background =  Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnInsert.Background = Brushes.CornflowerBlue;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSubject.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnTeacher.Background = Brushes.DarkSlateGray;
        }


    }


}
