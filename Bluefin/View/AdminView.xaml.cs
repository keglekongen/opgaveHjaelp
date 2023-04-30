using Bluefin.Model;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Bluefin.View
{
    /// <summary>
    /// Interaction logic for AdminView.xaml
    /// </summary>
    public partial class AdminView : UserControl
    {
        public LoginViewModel lvm { get; set; }
        public AdminView()
        {
            InitializeComponent();
            lvm = new LoginViewModel();
            DataContext = lvm;
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            List<string> labelList = new List<string>();
            labelList.Add(labelUsername.Content.ToString());
            labelList.Add(labelPassword.Content.ToString());

            List<ValidationError> errors = new List<ValidationError>();
            errors.AddRange(Validation.GetErrors(txtUsername));
            errors.AddRange(Validation.GetErrors(txtPassword));

            List<string> inputCheck = new List<string>();
            inputCheck.Add(txtUsername.Text);
            inputCheck.Add(txtPassword.Text);


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
                        for (int j = i; j < labelList.Count;)
                        {
                            errorMessage.AppendLine($"Field {labelList[j]} is required.");
                            break;

                        }
                    }
                    //Print error message to popup window
                }
                if (errorMessage.Length > 0)
                {

                    MessageBox.Show(errorMessage.ToString(), "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }


            }
            catch (Exception ex)
            {

                MessageBox.Show("An error has occurred: " + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }
    }
}
