﻿using System;
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

namespace Đồ_án.View
{
    /// <summary>
    /// Interaction logic for MainClass.xaml
    /// </summary>
    public partial class MainClass : Page
    {
        public MainClass()
        {
            InitializeComponent();
        }

        public static explicit operator MainClass(Window v)
        {
            throw new NotImplementedException();
        }
    }
}
