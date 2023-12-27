using MaterialDesignThemes.Wpf;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Đồ_án.Components
{
    /// <summary>
    /// Interaction logic for BindablePasswordBox.xaml
    /// </summary>
    public partial class BindablePasswordBox : UserControl
    {
        public string Password
        {
            get { return (string)GetValue(PasswordProperty); }
            set { SetValue(PasswordProperty, value); }
        }

        public static readonly DependencyProperty PasswordProperty =
            DependencyProperty.Register("Password", typeof(string), typeof(BindablePasswordBox), new PropertyMetadata(string.Empty));




        public string TextPasswordBox
        {
            get { return (string)GetValue(TextPasswordBoxProperty); }
            set { SetValue(TextPasswordBoxProperty, value); }
        }

        // Using a DependencyProperty as the backing store for TextPasswordBox.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty TextPasswordBoxProperty =
            DependencyProperty.Register("TextPasswordBox", typeof(string), typeof(BindablePasswordBox), new PropertyMetadata(string.Empty));


        public BindablePasswordBox()
        {
            InitializeComponent();

            //HintAssist.SetHint(passwordBox, TextPasswordBox);
        }

        private void passwordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            Password = passwordBox.Password;
        }
    }
}
