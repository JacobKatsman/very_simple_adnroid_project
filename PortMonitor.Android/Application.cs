using System;
using Android.App;
using Android.Runtime;
using Avalonia;
using Avalonia.Android;


namespace PortMonitor.Android;

[Application]
public class Application : global::Android.App.Application
{
    public Application(IntPtr handle, JniHandleOwnership transfer)
        : base(handle, transfer)
    {
    }

    public override void OnCreate()
    {
        base.OnCreate();

        // Инициализируем жизненный цикл Avalonia 11 под Android
        BuildAvaloniaApp();
    }

    public static AppBuilder BuildAvaloniaApp()
    {
        return AppBuilder.Configure<PortMonitor.App>()
            .UseAndroid();
    }
}
