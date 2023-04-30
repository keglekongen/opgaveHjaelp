using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bluefin.Model.Db
{
    public class RestaurantRepo : IRepository<Restaurant> // inherit interface to ensure it has necessary crud methods 
    {
        // connect to database with connection string
        private string connectionString { get; } = ConfigurationManager.ConnectionStrings["DbConnect"].ConnectionString;

        public bool Add(Restaurant restaurant)
        {
            // define query that has the sql insert statement
            string query = @"INSERT INTO dbo.Restaurant  
                             ([Name], Email, PhoneNumber, [Address], City, Address, CVR) 
                             VALUES (@Name, @Email, PhoneNumber, @Address, @City, @Address, @CVR)";

            try
            {
                using (SqlConnection myCon = new SqlConnection(connectionString))
                {
                    myCon.Open();
                    using (SqlCommand myCommand = new SqlCommand(query, myCon)) // use SqlCommand class to insert the entry with query string

                    {
                        myCommand.Parameters.AddWithValue("@Name", restaurant.Name);
                        myCommand.Parameters.AddWithValue("@Address", restaurant.Address);
                        myCommand.Parameters.AddWithValue("@PhoneNumber", restaurant.PhoneNumber);
                        myCommand.Parameters.AddWithValue("@Email", restaurant.Email);
                        myCommand.Parameters.AddWithValue("@City", restaurant.City);
                        myCommand.Parameters.AddWithValue("@CVR", restaurant.CVR);
                        myCommand.ExecuteNonQuery();
                        myCon.Close();
                    }
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Restaurant GetById(int id)
        {
            throw new NotImplementedException();
        }

        public bool Update(Restaurant restaurant)
        {
            throw new NotImplementedException();
        }
    }
}
