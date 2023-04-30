using Bluefin.ViewModel;
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

namespace Bluefin.View
{
    /// <summary>
    /// Interaction logic for RegisterWindow.xaml
    /// </summary>
    public partial class RegisterWindow : Window
    {
        public RegisterViewModel rvm { get; set; }
        public RegisterWindow()
        {
            InitializeComponent();
            rvm = new RegisterViewModel();
            DataContext = rvm;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // Checking for validation errors on every input field
            //Adding the validation errors to a List
            List<ValidationError> errors = new List<ValidationError>();
            errors.AddRange(Validation.GetErrors(txtFirstName));
            errors.AddRange(Validation.GetErrors(txtLastName));
            errors.AddRange(Validation.GetErrors(txtPhoneNumber));
            errors.AddRange(Validation.GetErrors(txtEmail));
            errors.AddRange(Validation.GetErrors(txtUsername));
            errors.AddRange(Validation.GetErrors(txtPassword));
            errors.AddRange(Validation.GetErrors(txtPassword2));


            //Adding Label content to a list
            List<string> label = new List<string>();
            label.Add(FName.Content.ToString());
            label.Add(LName.Content.ToString());
            label.Add(Phone.Content.ToString());
            label.Add(Email.Content.ToString());
            label.Add(Username.Content.ToString());
            label.Add(Password.Content.ToString());
            label.Add(Password2.Content.ToString());


            //Adding textfield input to a list
            List<string> inputCheck = new List<string>();
            inputCheck.Add(txtFirstName.Text.ToString());
            inputCheck.Add(txtLastName.Text.ToString());
            inputCheck.Add(txtPhoneNumber.Text.ToString());
            inputCheck.Add(txtEmail.Text.ToString());
            inputCheck.Add(txtUsername.Text.ToString());
            inputCheck.Add(txtPassword.Text.ToString());
            inputCheck.Add(txtPassword2.Text.ToString());



            StringBuilder errorMessage = new StringBuilder();
            try
            {
                //Validate Error to popup window
                if (errors.Count > 0)
                {
                    //Display the error message to UI
                    foreach (var error in errors)
                    {
                        errorMessage.AppendLine(error.ErrorContent.ToString());
                    }


                }
                //Validate Empty textfield to popup window
                for (int i = 0; i < inputCheck.Count; i++)
                {
                    if (string.IsNullOrEmpty(inputCheck[i]))
                    {
                        for (int j = i; j < label.Count;)
                        {
                            errorMessage.AppendLine($"Field {label[j]} cannot be empty.");
                            break;

                        }
                    }
                    //Print error message to popup window
                }
                if (errorMessage.Length > 0)
                {

                    MessageBox.Show(errorMessage.ToString(), "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }else
                {
                    rvm.CreateNewUser();
                    MessageBox.Show("Welcome: " + txtFirstName.Text.ToString());
                    this.Close();
                }

            }
            catch (Exception ex)
            {

                MessageBox.Show("An error has occurred: " + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }


        }
        private void ButtonClose(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
