using Bluefin.Commands;
using Bluefin.Model;
using Bluefin.Model.DataValidation;
using Bluefin.Model.Db;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using static Bluefin.Model.Role;

namespace Bluefin.ViewModel
{
    public class LoginViewModel : ValidationModel
    {
        public ICommand LoginCMD { get; } = new LoginCMD();

        private string username;

        [Required(ErrorMessage = "The field is required.")]
        public string Username
        {
            get { return username; }
            set
            {

                //Code that can throw a validationException
                if (OnPropertyChanged(ref username, value))
                {
                    // Perform additional validation or other actions
                    ValidateProperty(value, "Username");
                }
            }
        }


        private string password;

        [Required(ErrorMessage = "Password is required.")]
        public string Password
        {
            get { return password; }
            set
            {
                if (OnPropertyChanged(ref password, value))
                {
                    ValidateProperty(value, "Password");
                }

            }
        }

        //value is the value that needs to be validated
        //name represents the name of the property being validated
        private void ValidateProperty<T>(T value, string name)
        {
            //This validator class performs property validation using data annotations.
            //value paramter is the passed value to be validated
            //this is passed as the first argument, which represents the object that contains the property bein validated
            Validator.ValidateProperty(value, new ValidationContext(this, null, null)
            {
                MemberName = name

            });
        }
        //public LoginViewModel()
        //{

        //}

        //public LoginViewModel(Login login)
        //{
        //    this.login = login;
        //    this.username = login.Username;
        //    this.password = login.Password;

        //}

    }
}
