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
    public class ClassViewModel
    {
        private Class _class;
        public Class Class
        {
            get { return _class; }
            set { _class = value; }
        }


        private ClassCommand _classCommand;
        public ClassCommand ClassCommand
        {
            get { return _classCommand; }
            set { _classCommand = value; }
        }
        public ClassViewModel()
        {
            _class = new Class();
            ClassCommand = new ClassCommand(this);
        }
        public void OnExcute()
        {
            ((MainWindow)System.Windows.Application.Current.MainWindow).MainFrame.Content = _class;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnHome.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSetting.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnProfile.Background = Brushes.DarkSlateGray;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnClasses.Background = Brushes.CornflowerBlue;
            ((MainWindow)System.Windows.Application.Current.MainWindow).btnSchedule.Background = Brushes.DarkSlateGray;
        }
    }
}
