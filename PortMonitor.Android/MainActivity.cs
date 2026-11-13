using Android.App;         // модуль главного приложения 
using Android.Content.PM;  // подключает пространство имен, которое предоставляет доступ к информации о пакетах приложений (Package Manager).
using Avalonia;
using Avalonia.Android;
using PortMonitor;

namespace PortMonitor.Android;

/* За что отвечает MainActivity.cs

MainActivity.cs — это ключевой файл в Android-приложении, разрабатываемом на C# (будь то Xamarin.Android или .NET MAUI). По сути, это «главный экран» и точка входа в ваше приложение, которая связывает код на C# с операционной системой Android.
Вот за что конкретно он отвечает и что определяет:
    Главная точка входа (Точка старта)
Именно MainActivity запускается самой первой, когда пользователь нажимает на иконку вашего приложения. За это отвечает атрибут [Activity(MainLauncher = true)], который явно указывает системе Android: «Начинай работу приложения с этого экрана». Без этого флага приложение просто не знало бы, что показывать при запуске.
    Создание и загрузка пользовательского интерфейса
Внутри этого файла находится переопределенный метод OnCreate(). Это то место, где происходит «сборка» первого экрана: здесь вы указываете, какой макет (layout) или какое представление (View) должно отобразиться на экране, как только приложение запустится. В коде это обычно выглядит как вызов SetContentView() для загрузки XML-разметки или инициализация UI в .NET MAUI.
    Управление жизненным циклом
MainActivity (как и любой другой класс Activity) наследуется от базового класса Activity (или MauiAppCompatActivity в MAUI) и берет на себя управление жизненным циклом главного экрана. Вы можете переопределять методы вроде OnResume, OnPause или OnDestroy, чтобы выполнять код в нужные моменты: например, ставить анимацию на паузу, когда пользователь сворачивает приложение, или освобождать ресурсы, когда экран закрывается.
    Обработка пользовательского ввода
Этот файл служит «приемником» событий от пользователя. Именно сюда поступают сигналы о нажатиях на кнопки, свайпах или других действиях на главном экране, и здесь же вы пишете логику, которая должна на них реагировать.
    Управление навигацией
В более сложных приложениях MainActivity часто выступает в роли «хоста» или контейнера. Он может управлять переходами между другими экранами (другими Activity или страницами в Xamarin.Forms/MAUI), создавая для этого навигационные стеки или загружая нужные фрагменты интерфейса.
Если коротко, то MainActivity.cs — это мозг и лицо вашего приложения на старте: он решает, что показать, как на это реагировать и как управлять основным экраном на протяжении его жизни.
Если вы работаете с конкретным фреймворком (Xamarin.Android или .NET MAUI) и хотите разобрать пример кода из этого файла, дайте знать.
*/


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










