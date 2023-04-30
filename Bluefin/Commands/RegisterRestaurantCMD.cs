using Bluefin.Model;
using Bluefin.Model.Db;
using Bluefin.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Bluefin.Commands
{
    public class RegisterRestaurantCMD : ICommand // inherit ICommand interface 
    {
        private readonly IRepository<Restaurant> _restaurantRepo;

        public event EventHandler? CanExecuteChanged;

        public bool CanExecute(object? parameter)
        {
            return true;
            // the command can be executed always
        }

        public void Execute(object? parameter)
        {
            if (parameter is RestaurantViewModel rvm) // make instance of RestaurantViewModel
            {
                // create restaurant with viewmodel's properties that are binded to view
                Restaurant restaurant = new Restaurant(rvm.Name, rvm.Email, rvm.PhoneNumber, rvm.City, rvm.Address, rvm.CVR);

                bool success = _restaurantRepo.Add(restaurant);
                if (success)
                {
                    // some code when it returns true

                }
                else
                {
                    // some code when it returns false
                }
            }
            else
            {
                throw new NotImplementedException();
            }
        }

    }
}