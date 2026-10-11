using PortMonitor.ViewModels;
using Avalonia;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Markup.Xaml;
using PortMonitor.ViewModels;
using PortMonitor.Views;

namespace PortMonitor;

public partial class App : Application
{
    public override void Initialize()
    {
        AvaloniaXamlLoader.Load(this);
    }

    public override void OnFrameworkInitializationCompleted()
    {
        // Настройка для Десктопа (если будете запускать на ПК)
        if (ApplicationLifetime is IClassicDesktopStyleApplicationLifetime desktop)
        {
            desktop.MainWindow = new MainWindow
            {
                DataContext = new MainViewModel()
            };
        }
        // Настройка для Мобильных устройств (Android/iOS)
        else if (ApplicationLifetime is ISingleViewApplicationLifetime singleViewPlatform)
        {

	    singleViewPlatform.MainView = new MainView
              {
                DataContext = new MainViewModel()
              };
	    
        }

        base.OnFrameworkInitializationCompleted();
    }

}




