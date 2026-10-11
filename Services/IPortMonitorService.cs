using System;

namespace PortMonitor.Services;

public interface IPortMonitorService
{
    /// <summary>Запустить мониторинг в фоне.</summary>
    void Start(string host, int port, int intervalMs);

    /// <summary>Остановить мониторинг.</summary>
    void Stop();

    /// <summary>Сервис сейчас работает?</summary>
    bool IsRunning { get; }

    /// <summary>Последний результат (для подписки из UI).</summary>
    event Action<PortCheckResult>? ResultUpdated;
}
