using Đồ_án.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Input;

namespace Đồ_án.Command
{
    public class RegisterCommand : ICommand
    {
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            //string confirmPassword = (string)parameter;

            if (LoginViewModel.ConfirmPassword == LoginViewModel.User.Password &&
                !string.IsNullOrEmpty(LoginViewModel.ConfirmPassword) &&
                !string.IsNullOrEmpty(LoginViewModel.User.Username) &&
                !string.IsNullOrEmpty(LoginViewModel.User.Password))
                return true;

            return false;

        }

        public void Execute(object parameter)
        {
            LoginViewModel.Register();
        }


        private LoginViewModel LoginViewModel;
        public RegisterCommand(LoginViewModel loginViewModel)
        {
            LoginViewModel = loginViewModel;
        }
    }
}
