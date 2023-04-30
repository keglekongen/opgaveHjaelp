using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bluefin.Model
{
    public class Restaurant
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string City { get; set; }
        public string Address { get; set; }
        public int CVR { get; set; }

        public Restaurant(string name, string email, string phoneNumber, string city, string address, int cvr)
        {
            Name = name;
            Email = email;
            PhoneNumber = phoneNumber;
            City = city;
            Address = address;
            CVR = cvr;
        }
    }
}