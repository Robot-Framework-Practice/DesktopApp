using Đồ_án.View;
using Đồ_án.ViewModel;
using Đồ_án.ViewModel.Login;
using System;
using System.IO;
using System.Windows;

namespace Đồ_án
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            

            if (!LoginServices.Instance.InitRememberedAccount())
            {
                Login login = new Login();
                login.ShowDialog();
            }
        }
    }
}
