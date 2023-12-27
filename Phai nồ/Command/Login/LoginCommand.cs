using Đồ_án.Model;
using Đồ_án.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Đồ_án.Command.Login
{
    public class LoginCommand : ICommand
    {
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            User user = parameter as User;

            if (user != null &&
                !string.IsNullOrEmpty(user.Username) &&
                !string.IsNullOrEmpty(user.Password))
                return true;

            return false;
        }

        public void Execute(object parameter)
        {
            LoginViewModel.Login();
        }

        private LoginViewModel LoginViewModel;
        public LoginCommand(LoginViewModel loginViewModel)
        {
            LoginViewModel = loginViewModel;
        }
    }
}
