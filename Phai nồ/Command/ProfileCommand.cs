using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Đồ_án.ViewModel;
namespace Đồ_án.Command
{
    public class ProfileCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            profileViewModel.OnExcute();
        }
        ProfileViewModel profileViewModel;
        public ProfileCommand(ProfileViewModel a)
        {
            profileViewModel = a;
        }
    }
}
