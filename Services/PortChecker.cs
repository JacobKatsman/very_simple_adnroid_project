namespace PortMonitor.Services;

public record PortCheckResult(
    bool IsOpen,
    long LatencyMs,
    string? Error,
    DateTimeOffset Timestamp);
