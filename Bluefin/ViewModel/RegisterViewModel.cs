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

namespace Bluefin.ViewModel
{
    public class RegisterViewModel : ValidationModel
    {
        private User user { get; set; }
        private readonly UserRepo userRepo = new UserRepo();

        private Role role;
        private string username;
        [Required(ErrorMessage = "Username is required.")]
        public string Username
        {
            get { return username; }
            set
            {

                //Code that can throw a validationException
                if (OnPropertyChanged(ref username, value))
                {
                    // Perform validation
                    ValidateProperty(value, "Username");
                }


            }
        }

        private string password1;
        [Required(ErrorMessage = "Password is required.")]
        [PasswordPropertyText]
        [RegularExpression(@"^(?=.*[a-zA-Z])(?=.*[\W_]).{6,}$", ErrorMessage = "Password must contain at least one uppercase letter and one symbol.")]
        public string Password1
        {
            get { return password1; }
            set
            {

                //Code that can throw a validationException
                if (OnPropertyChanged(ref password1, value))
                {
                    // Perform validation
                    ValidateProperty(value, "Password1");
                }


            }
        }

        private string password2;
        [Required(ErrorMessage = "Password is required.")]
        [Compare("Password1", ErrorMessage = "Password must be identical")]
        public string Password2
        {
            get { return password2; }
            set
            {

                //Code that can throw a validationException
                if (OnPropertyChanged(ref password2, value))
                {
                    // Perform validation
                    ValidateProperty(value, "Password2");
                }


            }
        }

        private string firstName;
        [Required(ErrorMessage = "Firstname is required.")]
        public string FirstName
        {
            get { return firstName; }
            set
            {

                //Code that can throw a validationException
                if (OnPropertyChanged(ref firstName, value))
                {
                    // Perform validation
                    ValidateProperty(value, "FirstName");
                }


            }
        }
        private string lastName;
        [Required(ErrorMessage = "Lastname is required.")]
        public string LastName
        {
            get { return lastName; }
            set
            {

                //Code that can throw a validationException
                if (OnPropertyChanged(ref lastName, value))
                {
                    // Perform validation
                    ValidateProperty(value, "LastName");
                }


            }
        }

        private string phoneNumber;
        [Required(ErrorMessage = "Phone number is required.")]
        [Phone]
        public string PhoneNumber
        {
            get { return phoneNumber; }
            set
            {

                if (OnPropertyChanged(ref phoneNumber, value))
                {
                    // Perform validation
                    ValidateProperty(value, nameof(PhoneNumber));
                }



            }
        }

        private string email;
        [Required(ErrorMessage = "Email is required.")]
        //[RegularExpression("^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$", ErrorMessage = "Must be a valid email")]
        [EmailAddress]
        public string Email
        {
            get { return email; }
            set
            {

                if (OnPropertyChanged(ref email, value))
                {
                    //Code that can throw a validationException
                    ValidateProperty(value, "Email");
                }



            }
        }

        public RegisterViewModel(User user)
        {
            this.user = user;
            username = user.Username;
            password1 = user.Password;
            firstName = user.FirstName;
            lastName = user.LastName;
            phoneNumber = user.PhoneNumber;
            email = user.Email;

        }

        public RegisterViewModel()
        {

        }


        private void ValidateProperty<T>(T value, string name)
        {
            try
            {
                Validator.ValidateProperty(value, new ValidationContext(this, null, null)
                {
                    MemberName = name


                });
            }
            catch (Exception)
            {

                throw;
            }
        }


        public void CreateNewUser()
        {
            
            try
            {
                if (username != null && password1 != null)
                {
                    User newUser = new User(username, password2, role, firstName, lastName, phoneNumber, email);
                    userRepo.Register(newUser);


                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, $"Login error", MessageBoxButton.OK);
            }
            
        }


    }
}
