package com.jd.common.network;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LocalHost
{
  private static String hostName;
  private static NetworkInterface localNetworkInterface;
  private static final Log log = LogFactory.getLog(LocalHost.class);
  
  static
  {
    for (;;)
    {
      try
      {
        localEnumeration = NetworkInterface.getNetworkInterfaces();
        boolean bool = localEnumeration.hasMoreElements();
        if (bool) {}
      }
      catch (SocketException localSocketException)
      {
        Enumeration localEnumeration;
        NetworkInterface localNetworkInterface1;
        log.error("init LocalHost error!", localSocketException);
        continue;
      }
      try
      {
        hostName = InetAddress.getLocalHost().getHostName();
        return;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        log.error("init hostname error!", localUnknownHostException);
      }
      localNetworkInterface1 = (NetworkInterface)localEnumeration.nextElement();
      if (!localNetworkInterface1.getName().equals("lo")) {
        localNetworkInterface = localNetworkInterface1;
      }
    }
  }
  
  public static NetworkInterface getLocalNetworkInterface()
  {
    return localNetworkInterface;
  }
  
  public static String getMachineName()
  {
    return hostName;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.network.LocalHost
 * JD-Core Version:    0.7.0.1
 */