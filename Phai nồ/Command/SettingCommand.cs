using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Đồ_án.ViewModel;
namespace Đồ_án.Command
{
    public class SettingCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            _settingViewModel.OnExcute();
        }

        SettingViewModel _settingViewModel;
       
        public SettingCommand(SettingViewModel a)
        {
            _settingViewModel = a;
        }
    }
}
