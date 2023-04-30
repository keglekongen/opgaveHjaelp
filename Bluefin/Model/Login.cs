using Bluefin.Model.DataValidation;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bluefin.Model
{
    public class Login
    {

        public string Username { get; set; }

        public string Password { get; set; }

        //Constructor to user login
        public Login(string username, string password)
        {
            Username = username;
            Password = password;
        }
    }
}
