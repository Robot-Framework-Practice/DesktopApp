using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Đồ_án.ViewModel;

namespace Đồ_án.Command
{
    public class FindCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }
        public FindViewModel findViewModel { get; set; }
        public FindCommand(FindViewModel a)
        {
            findViewModel = a;
        }
        public void Execute(object parameter)
        {
            findViewModel.OnExcute();
        }
    }
}
