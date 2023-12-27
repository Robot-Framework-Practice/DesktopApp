using Đồ_án.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Đồ_án.Command
{
    public class ShowRegisterOrLogin : ICommand
    {
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            return true;

        }

        public void Execute(object parameter)
        {
            _loginViewModel.SwitchView();
        }

        private LoginViewModel _loginViewModel { get; set; }
        public ShowRegisterOrLogin(LoginViewModel loginViewModel)
        {
            _loginViewModel = loginViewModel;
        }
    }
}
