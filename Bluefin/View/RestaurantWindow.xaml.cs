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
using System.Windows.Shapes;

namespace Bluefin.View
{
    /// <summary>
    /// Interaction logic for AddRestaurant.xaml
    /// </summary>
    public partial class RestaurantWindow : Window
    {
        public RestaurantWindow()
        {
            InitializeComponent();
        }

        private void AddMenu_Click(object sender, RoutedEventArgs e)
        {

        }

        private void AddRestaurant_Click(object sender, RoutedEventArgs e)
        {

        }


        private void ButtonClose(object sender, RoutedEventArgs e)
        {
           this.Close();
        }
    }
}
