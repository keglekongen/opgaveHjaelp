using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bluefin.Model.Db
{
    // create Interface that contains necessary CRUD operations 
    public interface IRepository<T>
    {
        // IEnumerable<T> GetAll();
        T GetById(int id);
        bool Add(T item);
        bool Update(T item);
        bool Delete(int id);
    }
}
