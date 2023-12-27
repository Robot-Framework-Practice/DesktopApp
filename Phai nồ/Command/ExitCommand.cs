using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Đồ_án.ViewModel;
namespace Đồ_án.Command
{
    public class ExitCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;
       
        private ExitViewModel exitViewModel;

        public ExitViewModel ExitViewModel
        {
            get { return exitViewModel; }
            set { exitViewModel = value; }
        }


        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            exitViewModel.OnExcute();
        }
        public ExitCommand(ExitViewModel e)
        {
            exitViewModel = e;
        }
    }
}
