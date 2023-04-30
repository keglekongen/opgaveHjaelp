using Bluefin.Model;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Media.Animation;

// The purpose of this class is to provide a way to create commands
// that can be executed by user interface elements, such as buttons.

namespace Bluefin.Core
{
    // This is a class called RelayCommand that implements the ICommand interface

    //ICommand interface helps in implementing the Command design pattern in WPF
    //and other UI frameworks. It provides a way to define a command that can be bound
    //to user interface elements such as buttons, menu items, and so on. 

    internal class RelayCommand : ICommand
    {
        // Private fields store the delegate functions for executing
        // the command and checking if it can be executed

        // declares a private field called _execute
        // type Action<object>.

        // Action is a delegate that represents a method that doesn't return a value,
        // and takes zero or more parameters. In this case, the Action delegate takes
        // an object parameter. This field will be used to store the method that the
        // command will execute.

        private Action<object> _execute;

        // Func is a delegate that represents a method that returns a value, and takes
        // zero or more parameters.

        // Func delegate takes an object parameter and returns a bool.

        //The field will be used to store the method that determines whether the
        //command can be executed or not. If this field is null, the command can
        //always be executed.

        private Func<object, bool> _canExecute;

        // This event is used to notify user interface elements when the ability
        // to execute the command has changed

        // CanExecuteChanged event is raised when the ability of a command to execute
        // has changed, and this code allows other parts of the program to subscribe
        // to that event so they can be notified when it happens.

        public event EventHandler CanExecuteChanged
        {
            // When an event handler is added using the add block, it is executed
            // whenever the CanExecuteChanged event is raised. 

            add { CommandManager.RequerySuggested += value; }

            // When an event handler is removed using the remove block, it will no
            // longer be executed when the event is raised.

            remove { CommandManager.RequerySuggested -= value; }
        }

        // This is a constructor for the RelayCommand class that takes two delegate functions
        // as parameters

        // Action is a type of delegate in C# that can be used to reference a method that
        // doesn't return a value. It's commonly used when you want to perform some action
        // or operation without needing to return any data.

        // Func is also a type of delegate, but it's used to reference a method that does
        // return a value. You can use Func to define a method that takes one or more parameters
        // and returns a value of a specific type.

        // CanExecute is a method that determines whether a command can be executed or not. It
        // typically returns a Boolean value that indicates whether the command can be executed
        // in the current context.In the case of the RelayCommand class, the CanExecute method
        // is defined using a Func delegate, which takes an object parameter and returns a Boolean
        // value.The Func is used to check whether the command can be executed based on the current
        // state of the application.

        public RelayCommand(Action<object> execute, Func<object, bool> canExecute = null)
    {
        _execute = execute;
        _canExecute = canExecute;
    }

        // This method is used to check whether the command can be executed,
        // based on the _canExecute delegate function

        // parameter is used to determine if the command can be executed or
        // not, based on the value of _canExecute field.

        public bool CanExecute(object parameter)
    {
        return _canExecute == null || _canExecute(parameter);
    }

    // This method is used to execute the command, based on the
    // _execute delegate function
        public void Execute(object parameter)
    {
        _execute(parameter);
    }
    }
}
