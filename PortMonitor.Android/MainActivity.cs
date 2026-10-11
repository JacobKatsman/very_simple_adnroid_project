using Android.App;
using Android.Content.PM;
using Avalonia;
using Avalonia.Android;
using PortMonitor;

namespace PortMonitor.Android;


[Activity(
    Name = "PortMonitor.Android.MainActivity",
    Label = "PortMonitor",
    Theme = "@style/MyTheme.NoActionBar",
    Icon = "@drawable/Icon",
    MainLauncher = true,
    ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode,
    LaunchMode = LaunchMode.SingleTop,
    WindowSoftInputMode = global::Android.Views.SoftInput.AdjustResize)]
public class MainActivity : AvaloniaMainActivity<App>
{

    private const int NotificationPermCode = 1001;
    
    protected override AppBuilder CustomizeAppBuilder(AppBuilder builder)
    {
        return base.CustomizeAppBuilder(builder)
            .WithInterFont();
    }
}










