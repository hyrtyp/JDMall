package com.ja.sdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Proxy.Type;
import java.net.SocketException;
import java.net.URL;
import java.util.Enumeration;

public class NetUtils
{
  private static final String TAG = "Ja SDK: NetUtils";
  public static boolean isUseProxy = true;
  
  public static boolean checkNetWork(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null) {}
    for (;;)
    {
      return false;
      NetworkInfo[] arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
      if (arrayOfNetworkInfo != null) {
        for (int i = 0; i < arrayOfNetworkInfo.length; i++) {
          if (arrayOfNetworkInfo[i].isConnected()) {
            return true;
          }
        }
      }
    }
  }
  
  public static String getExtraInfo(NetworkInfo paramNetworkInfo)
  {
    try
    {
      String str = paramNetworkInfo.getExtraInfo();
      return str;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return "";
  }
  
  public static String getLocalIpAddress()
  {
    try
    {
      localEnumeration1 = NetworkInterface.getNetworkInterfaces();
      boolean bool = localEnumeration1.hasMoreElements();
      if (bool) {
        break label28;
      }
    }
    catch (SocketException localSocketException)
    {
      for (;;)
      {
        Enumeration localEnumeration1;
        label28:
        Enumeration localEnumeration2;
        InetAddress localInetAddress;
        String str;
        LogUtil.logException("Ja SDK: NetUtils", localSocketException);
      }
    }
    LogUtil.logD("Ja SDK: NetUtils", "IP address is null");
    return "";
    localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
    do
    {
      if (!localEnumeration2.hasMoreElements()) {
        break;
      }
      localInetAddress = (InetAddress)localEnumeration2.nextElement();
    } while ((localInetAddress.isLoopbackAddress()) || (!(localInetAddress instanceof Inet4Address)));
    LogUtil.logD("Ja SDK: NetUtils", "IP address: " + localInetAddress.getHostAddress().toString());
    str = localInetAddress.getHostAddress().toString();
    return str;
  }
  
  public static String getNameNetworkType(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    return localTelephonyManager.getNetworkType();
  }
  
  public static String getNameSubtypeNetwork(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    String str = localNetworkInfo.getTypeName();
    if ((!str.equals("WIFI")) && (localNetworkInfo.getSubtypeName() != null)) {
      str = localNetworkInfo.getSubtypeName();
    }
    return str;
  }
  
  public static NetType getNetType(Context paramContext)
  {
    NetType localNetType = new NetType();
    try
    {
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null) {
        return localNetType;
      }
      if (!isNetworkAvailable(localConnectivityManager)) {
        return localNetType;
      }
      int i = getSummaryType(localConnectivityManager);
      try
      {
        NetworkInfo localNetworkInfo2 = localConnectivityManager.getActiveNetworkInfo();
        localNetworkInfo1 = localNetworkInfo2;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          NetworkInfo localNetworkInfo1 = null;
        }
      }
      return new NetType(paramContext, i, getExtraInfo(localNetworkInfo1));
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ConnectivityManager localConnectivityManager = null;
      }
    }
  }
  
  public static String getNetworkTypeName(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    String str1 = null;
    NetworkInfo[] arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
    int i = 0;
    try
    {
      int j = arrayOfNetworkInfo.length;
      if (i < j) {
        break label52;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int k;
        str1 = "UNKNOWN";
      }
    }
    if (str1 == null) {
      str1 = "UNKNOWN";
    }
    return str1;
    label52:
    if (arrayOfNetworkInfo[i].isConnected()) {
      if (arrayOfNetworkInfo[i].getTypeName().toUpperCase().contains("MOBILE"))
      {
        k = localTelephonyManager.getNetworkType();
        if (!is2GNetwork(paramContext)) {
          break label179;
        }
      }
    }
    label173:
    label179:
    for (String str2 = "2G|";; str2 = "3G|")
    {
      NetType localNetType = getNetType(paramContext);
      str1 = str2 + localNetType.getNetworkTypeName(k);
      break label173;
      if (arrayOfNetworkInfo[i].getTypeName().toUpperCase().contains("WIFI")) {
        str1 = "WIFI|";
      } else {
        str1 = "UNKNOWN|";
      }
      i++;
      break;
    }
  }
  
  public static int getSummaryType(ConnectivityManager paramConnectivityManager)
  {
    for (;;)
    {
      try
      {
        NetworkInfo.State localState5 = paramConnectivityManager.getNetworkInfo(0).getState();
        localState1 = localState5;
      }
      catch (Throwable localThrowable1)
      {
        NetworkInfo.State localState4;
        NetworkInfo.State localState2;
        int i;
        NetworkInfo.State localState3;
        NetworkInfo.State localState1 = null;
        continue;
      }
      try
      {
        localState4 = paramConnectivityManager.getNetworkInfo(1).getState();
        localState2 = localState4;
      }
      catch (Throwable localThrowable2)
      {
        localState2 = null;
      }
    }
    if ((localState1 == NetworkInfo.State.CONNECTED) || (localState1 == NetworkInfo.State.CONNECTING)) {
      i = 2;
    }
    do
    {
      return i;
      if (localState2 == NetworkInfo.State.CONNECTED) {
        break;
      }
      localState3 = NetworkInfo.State.CONNECTING;
      i = 0;
    } while (localState2 != localState3);
    return 1;
  }
  
  public static String getWifiMacAddress(Context paramContext)
  {
    String str = "";
    try
    {
      if (FileUtils.isManifestPermission(paramContext, "android.permission.ACCESS_WIFI_STATE"))
      {
        WifiInfo localWifiInfo = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
        str = localWifiInfo.getMacAddress();
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localWifiInfo.getSSID();
        arrayOfObject[1] = localWifiInfo.getMacAddress();
        LogUtil.logD(String.format("ssid=%s mac=%s", arrayOfObject));
      }
      return str;
    }
    catch (Exception localException)
    {
      LogUtil.logException("Ja SDK: NetUtils", localException);
    }
    return str;
  }
  
  public static boolean is2GNetwork(Context paramContext)
  {
    if (getNetType(paramContext).summaryType == 1) {}
    int i;
    do
    {
      return false;
      i = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType();
      LogUtil.logD("Ja SDK: NetUtils", "Net work type:" + i);
    } while ((4 != i) && (1 != i) && (2 != i));
    return true;
  }
  
  private static boolean isNetworkAvailable(ConnectivityManager paramConnectivityManager)
  {
    boolean bool1 = true;
    Object localObject = (NetworkInfo[])null;
    try
    {
      NetworkInfo[] arrayOfNetworkInfo = paramConnectivityManager.getAllNetworkInfo();
      localObject = arrayOfNetworkInfo;
    }
    catch (Throwable localThrowable1)
    {
      label16:
      int i;
      int j;
      label36:
      break label16;
    }
    if (localObject != null)
    {
      i = localObject.length;
      j = 0;
      if (j < i) {}
    }
    else
    {
      bool1 = false;
      return bool1;
    }
    for (;;)
    {
      try
      {
        NetworkInfo.State localState1 = localObject[j].getState();
        NetworkInfo.State localState2 = NetworkInfo.State.CONNECTED;
        if (localState1 != localState2) {
          continue;
        }
        bool2 = bool1;
      }
      catch (Throwable localThrowable2)
      {
        boolean bool2 = false;
        continue;
      }
      if (bool2) {
        break label36;
      }
      j++;
      break;
      bool2 = false;
    }
  }
  
  public static boolean isWifi(Context paramContext)
  {
    return getNetType(paramContext).summaryType == 1;
  }
  
  public static HttpURLConnection openConncetion(Context paramContext, URL paramURL)
    throws IOException
  {
    boolean bool = isUseProxy;
    String str = null;
    Integer localInteger = null;
    if (bool)
    {
      NetType localNetType = getNetType(paramContext);
      str = localNetType.getProxyHost();
      localInteger = localNetType.getProxyPort();
    }
    if ((isUseProxy) && (str != null) && (localInteger != null))
    {
      LogUtil.logD("Ja SDK: NetUtils", "use proxy  url:" + paramURL + "- proxy -->> " + str + "," + localInteger);
      return (HttpURLConnection)paramURL.openConnection(new java.net.Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, localInteger.intValue())));
    }
    isUseProxy = false;
    LogUtil.logD("HttpGroup", "no proxy url:" + paramURL);
    return (HttpURLConnection)paramURL.openConnection();
  }
  
  public static class NetType
  {
    private static final String CHINA_MOBILE = "中国移动";
    private static final String CHINA_TELECOM = "中国电信";
    private static final String CHINA_UNICOM = "中国联通";
    public static final int NSP_CHINA_MOBILE = 1;
    public static final int NSP_CHINA_TELECOM = 3;
    public static final int NSP_CHINA_UNICOM = 2;
    public static final int NSP_NO = -1;
    public static final int NSP_OTHER = 0;
    public static final int SUMMARY_TYPE_MOBILE = 2;
    public static final int SUMMARY_TYPE_OTHER = 0;
    public static final int SUMMARY_TYPE_WIFI = 1;
    private String extraInfo;
    String networkOperator;
    String networkOperatorName;
    String networkType;
    String networkTypeName;
    String proxyHost;
    Integer proxyPort;
    Integer simState;
    private int summaryType = 0;
    
    public NetType() {}
    
    public NetType(Context paramContext, int paramInt, String paramString)
    {
      this.summaryType = paramInt;
      this.extraInfo = paramString;
      getSimAndOperatorInfo(paramContext);
    }
    
    private void getSimAndOperatorInfo(Context paramContext)
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      try
      {
        this.simState = Integer.valueOf(localTelephonyManager.getSimState());
        try
        {
          label21:
          this.networkOperatorName = localTelephonyManager.getNetworkOperatorName();
          try
          {
            label29:
            this.networkOperator = localTelephonyManager.getNetworkOperator();
            try
            {
              label37:
              int i = localTelephonyManager.getNetworkType();
              this.networkType = i;
              this.networkTypeName = getNetworkTypeName(i);
              return;
            }
            catch (Throwable localThrowable4) {}
          }
          catch (Throwable localThrowable3)
          {
            break label37;
          }
        }
        catch (Throwable localThrowable2)
        {
          break label29;
        }
      }
      catch (Throwable localThrowable1)
      {
        break label21;
      }
    }
    
    public String getExtraInfo()
    {
      return this.extraInfo;
    }
    
    public int getNSP()
    {
      if ((this.simState == null) || (this.simState.intValue() == 0)) {}
      while ((TextUtils.isEmpty(this.networkOperatorName)) && (TextUtils.isEmpty(this.networkOperator))) {
        return -1;
      }
      if (("中国移动".equalsIgnoreCase(this.networkOperatorName)) || ("CMCC".equalsIgnoreCase(this.networkOperatorName)) || ("46000".equalsIgnoreCase(this.networkOperator)) || ("China Mobile".equalsIgnoreCase(this.networkOperatorName))) {
        return 1;
      }
      if (("中国电信".equalsIgnoreCase(this.networkOperatorName)) || ("China Telecom".equalsIgnoreCase(this.networkOperatorName)) || ("46003".equalsIgnoreCase(this.networkOperator))) {
        return 3;
      }
      if (("中国联通".equalsIgnoreCase(this.networkOperatorName)) || ("China Unicom".equalsIgnoreCase(this.networkOperatorName)) || ("46001".equalsIgnoreCase(this.networkOperator)) || ("CU-GSM".equalsIgnoreCase(this.networkOperatorName))) {
        return 2;
      }
      return 0;
    }
    
    public String getNSPStr()
    {
      switch (getNSP())
      {
      default: 
        return "";
      case 1: 
        return "中国移动";
      case 3: 
        return "中国电信";
      }
      return "中国联通";
    }
    
    public String getNetworkTypeName(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        if (Build.VERSION.SDK_INT > 4) {
          return NetUtils4SDK4.getInstance().getNetworkTypeName(paramInt);
        }
        break;
      case 1: 
        return "GPRS";
      case 2: 
        return "EDGE";
      case 3: 
        return "UMTS";
      case 4: 
        return "CDMA";
      case 5: 
        return "CDMA - EvDo rev. 0";
      case 6: 
        return "CDMA - EvDo rev. A";
      case 7: 
        return "CDMA - 1xRTT";
      }
      return "UNKNOWN";
    }
    
    public String getProxyHost()
    {
      String str = android.net.Proxy.getDefaultHost();
      LogUtil.logD("Ja SDK: NetUtils", "getProxyHost() proxyHost -->> " + str);
      if (1 == this.summaryType)
      {
        LogUtil.logD("Ja SDK: NetUtils", "getProxyHost() WIFI -->> ");
        return null;
      }
      LogUtil.logD("Ja SDK: NetUtils", "getProxyHost() else -->> ");
      this.proxyHost = str;
      this.proxyPort = Integer.valueOf(android.net.Proxy.getDefaultPort());
      LogUtil.logD("Ja SDK: NetUtils", "getProxyHost() proxyHost -->> " + str);
      return this.proxyHost;
    }
    
    public Integer getProxyPort()
    {
      return this.proxyPort;
    }
    
    public String getUploadType()
    {
      return this.networkType;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.utils.NetUtils
 * JD-Core Version:    0.7.0.1
 */