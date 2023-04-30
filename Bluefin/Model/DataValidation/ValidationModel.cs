using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace Bluefin.Model.DataValidation
{
    
    public abstract class ValidationModel : INotifyPropertyChanged
    {
        //Event for notifying property changes
        public event PropertyChangedEventHandler PropertyChanged;

        //Method to trigger property changed notification
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        //Method to update a backing field value and trigger a notification if value changes
        protected virtual bool OnPropertyChanged<T>(ref T backingField, T value, [CallerMemberName] string propertyName = "")
        {
            //Compare values to chck if there is a change
            if (EqualityComparer<T>.Default.Equals(backingField, value))
                return false;
            //Updating backing field value and triggering notification
            backingField = value;
            OnPropertyChanged(propertyName);
            return true;
        }
    }
}