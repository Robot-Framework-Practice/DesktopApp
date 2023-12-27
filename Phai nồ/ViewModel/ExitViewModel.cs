using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Input;
using Đồ_án.Command;
using Đồ_án.Database;
using Đồ_án.View;
using Đồ_án.ViewModel.Login;
using Đồ_án.ViewModel.Login.Service;

namespace Đồ_án.ViewModel
{
    public class ExitViewModel : BaseViewModel
    {

        public ICommand ExitCommand { get; set; }

        public ExitViewModel()
        {
            ExitCommand = new RelayCommand<object>(p => true, p => OnExcute());
        }

        public void OnExcute()
        {
            System.Windows.Application.Current.Shutdown();
        }
    }
}
