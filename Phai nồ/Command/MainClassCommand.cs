using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Đồ_án.ViewModel;

namespace Đồ_án.Command
{
    public class MainClassCommand : ICommand
    {

        private MainClassViewModel _mainclassViewModel;
        public MainClassCommand(MainClassViewModel vm)
        {
            _mainclassViewModel = vm;
        }

        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            _mainclassViewModel.OnExcute();
        }
    }
}

