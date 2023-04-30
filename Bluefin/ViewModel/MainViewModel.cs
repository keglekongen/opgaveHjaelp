using Bluefin.Core;
using Bluefin.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bluefin.ViewModel
{

    // The MainViewModel class contains three properties of type RelayCommand.
    // These are commands that can be executed when the user interacts with a specific part of the user interface.

    class MainViewModel : ObservableObject
    {

    // These properties represent the different ViewModels that are associated with the views

        public RelayCommand HomeViewCommand { get; set; }
        public RelayCommand AdminViewCommand { get; set; }
        public  RelayCommand RegisterUCCommand { get; set; }

        public HomeViewModel HomeVM { get; set; }

        public AdminViewModel AdminVM { get; set; }
        public RegisterUCViewModel RegisterVM { get; set; }

        // This private field represents the current view that is being displayed

        private object _currentView;

        // This public property exposes the current view that is being displayed

        public object CurrentView
        {
            get { return _currentView; }
            set
            { 
                _currentView = value;
                OnPropertyChanged();
            }
        }

        // This constructor initializes the ViewModels and sets the initial view to the Home view

        public MainViewModel()
        {
            HomeVM = new HomeViewModel();
            AdminVM = new AdminViewModel();
            RegisterVM = new RegisterUCViewModel();

            CurrentView = HomeVM;

            // These commands switch the current view to the appropriate view

            // o is not used within the lambda expression, so it could be any valid identifier-
            // It is simply a placeholder parameter that can be used to pass in data or information to the command.

            HomeViewCommand = new RelayCommand(o =>
            {
                CurrentView = HomeVM;
            });

            AdminViewCommand = new RelayCommand(o =>
            {
                CurrentView = AdminVM;
            });

            RegisterUCCommand = new RelayCommand(o =>
            {
                CurrentView = RegisterVM;
            });
        }
    }
}
