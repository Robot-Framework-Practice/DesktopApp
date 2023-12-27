using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using Đồ_án.Command;
using Đồ_án.View;

namespace Đồ_án.ViewModel
{
    public class MainClassViewModel
    {
        private MainClass _mainclass;
        public MainClass MainClass
        {
            get { return _mainclass; }
            set { _mainclass = value; }
        }


        private MainClassCommand _mainclassCommand;
        public MainClassCommand MainClassCommand
        {
            get { return _mainclassCommand; }
            set { _mainclassCommand = value; }
        }
        public MainClassViewModel()
        {
            _mainclass = new MainClass();
            MainClassCommand = new MainClassCommand(this);
        }
        public void OnExcute()
        {
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = _mainclass;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.CornflowerBlue;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.DarkSlateGray;
        }
    }
}
