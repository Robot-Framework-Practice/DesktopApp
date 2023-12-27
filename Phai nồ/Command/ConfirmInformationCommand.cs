using Đồ_án.ViewModel.DashBroad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Đồ_án.Database;
namespace Đồ_án.Command
{
    public class ConfirmInformationCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }
        public ConfirmInformationViewModel confirmInformationViewModel { get; set; }
        public ConfirmInformationCommand(ConfirmInformationViewModel confirmInformationViewModel)
        {
            this.confirmInformationViewModel = confirmInformationViewModel;
        }
        public void Execute(object parameter)
        {
            confirmInformationViewModel.OnExcute();
        }
    }
}
