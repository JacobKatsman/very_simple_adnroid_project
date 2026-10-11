package mono.android.app;

public class ApplicationRegistration {

	public static void registerApplications ()
	{
				// Application and Instrumentation ACWs must be registered first.
		mono.android.Runtime.register ("PortMonitor.Android.Application, PortMonitor.Android, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", crc6434804fbd7c310c5c.Application.class, crc6434804fbd7c310c5c.Application.__md_methods);
		
	}
}
