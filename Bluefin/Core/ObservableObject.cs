using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

// This class helps to make it easier for other objects to notify things when they change

// This is a namespace called Bluefin.Core that contains the ObservableObject class
namespace Bluefin.Core
{
    // This is a class called ObservableObject that helps to notify other things when it changes
    // INotifyPropertyChanged is a tool that helps an object tell other things when it changes.
    class ObservableObject : INotifyPropertyChanged
    {
        // This is an event that gets raised when a property of the ObservableObject changes
        // "event" is like a button that you can press to make something happen. 
        // "PropertyChanged" event is a button that gets pressed when a property of the ObservableObject changes.
        public event PropertyChangedEventHandler PropertyChanged;

        // This is a protected method that helps to raise the PropertyChanged event
        // "protected": This means that the method can only be accessed from within the class it's defined in (ObservableObject class).
        // "void": This means that the method doesn't return any values.
       
        //"OnPropertyChanged([CallerMemberName] string name = null)": This is the name of the method
        //and it takes one optional parameter called "name".
        
        //[CallerMemberName] attribute is used
        //to automatically set the "name" parameter to the name of the property that was changed.
        protected void OnPropertyChanged([CallerMemberName] string name = null)
        {
            // This line checks if PropertyChanged event is not null and then invokes it with the changed property name
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }
}

