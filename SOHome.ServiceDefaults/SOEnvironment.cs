namespace SOHome.ServiceDefaults;

public sealed class SOEnvironment
{
    public static readonly bool IsDebug =
        Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") == "Development" || Environment.GetEnvironmentVariable("SODEBUG") == "1";
}
