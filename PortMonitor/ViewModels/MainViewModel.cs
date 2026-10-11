using System;
using System.Collections.ObjectModel;
using System.Threading;
using System.Threading.Tasks;
using Avalonia.Media;
using Avalonia.Threading;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;

namespace PortMonitor.ViewModels
{
   public partial class MainViewModel : ObservableObject
   {
       public string Greeting { get; set; } = "Welcome to Avalonia!";
   }
}
