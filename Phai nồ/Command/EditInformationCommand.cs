using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using Đồ_án.ViewModel;
namespace Đồ_án.Command
{
    public class EditInformationCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }
        EditInformationViewModel _editInformationViewModel;
        public EditInformationCommand(EditInformationViewModel a)
        {
            _editInformationViewModel = a;
        }
        public void Execute(object parameter)
        {
            _editInformationViewModel.OnExcute();
        }
    }
}
