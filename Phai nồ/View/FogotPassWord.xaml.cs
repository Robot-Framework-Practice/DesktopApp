using Đồ_án.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Đồ_án.View
{
    /// <summary>
    /// Interaction logic for FogotPassWord.xaml
    /// </summary>
    public partial class FogotPassWord : Window
    {
        LoginViewModel LoginViewModel;
        public FogotPassWord()
        {
            InitializeComponent();
            focusFirstTextBox.Focus();

            LoginViewModel = mainLogin.DataContext as LoginViewModel;
            LoginViewModel.CloseFogotPassWordWindowEvent += Close;
        }

        private void Close(object sender, EventArgs e)
        {
            Close();
        }
    }
}
