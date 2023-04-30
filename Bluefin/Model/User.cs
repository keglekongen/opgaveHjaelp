using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bluefin.Model
{
    public class User
    {
        public string Username { get; set; }
        public string Password { get; set; }   
        public Role Role { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }

        public User(string username, string password, Role role, string firstName, string lastName, string phoneNumber, string mail)
        {
            Username = username;
            Password = password;
            Role = role;
            FirstName = firstName;
            LastName = lastName;
            PhoneNumber = phoneNumber;
            Email = mail;
            Username = username;
            Password = password;
        }
    }
}
