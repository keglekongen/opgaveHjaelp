using Bluefin.Model;
using Bluefin.Model.Db;
using Bluefin.View;
using Bluefin.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Bluefin.Commands
{
    public class LoginCMD : ICommand // inherit ICommand interface 
    {
        private readonly UserRepo userRepo = new UserRepo();

        public event EventHandler? CanExecuteChanged;
        public bool CanExecute(object? parameter)
        {
            return true;
            // the command can be executed always
        }

        public void Execute(object? parameter)
        {
            if (parameter is LoginViewModel lvm)
            {
                if (lvm.Username != null && lvm.Password != null)
                {

                    Login login = new Login(lvm.Username, lvm.Password);
                    if (userRepo.AuthenticateUser(login))
                    {
                        MessageBox.Show("Welcome: " + lvm.Username);
                        RestaurantWindow restaurant = new RestaurantWindow();
                        restaurant.Show();
                    }

                    else if (!userRepo.AuthenticateUser(login))
                    {
                        MessageBox.Show("Invalid password or username.");
                    }
                }
            }
        }
    }
}
