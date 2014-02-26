package com.jingdong.common.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Proxy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.jingdong.common.MyApplication;

public class NetUtils
{
  public static final String NETWORK_TYPE_2G = "2g";
  public static final String NETWORK_TYPE_3G = "3g";
  public static final String NETWORK_TYPE_WIFI = "wifi";
  private static final int NO_NET = 2147483647;
  private static final int ROAMING = 2147483644;
  private static final String TAG = "NetUtils";
  private static final int UNKNOWN = 2147483646;
  private static final int WIFI = 2147483645;
  public static boolean isProxy = true;
  
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
  
  public static NetType getNetType()
  {
    NetType localNetType = new NetType();
    try
    {
      localConnectivityManager = (ConnectivityManager)MyApplication.getInstance().getSystemService("connectivity");
      if (localConnectivityManager == null) {}
      while (!isNetworkAvailable(localConnectivityManager)) {
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
      return new NetType(i, getExtraInfo(localNetworkInfo1));
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ConnectivityManager localConnectivityManager = null;
      }
    }
  }
  
  public static String getNetworkType()
  {
    NetType localNetType = getNetType();
    if (localNetType.summaryType == 1) {
      return "wifi";
    }
    if (localNetType.summaryType == 2)
    {
      int i = ((TelephonyManager)MyApplication.getInstance().getSystemService("phone")).getNetworkType();
      if ((4 == i) || (1 == i) || (2 == i)) {
        return "2g";
      }
      return "3g";
    }
    return "";
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
    if ((localState2 == NetworkInfo.State.CONNECTED) || (localState2 == NetworkInfo.State.CONNECTING)) {
      i = 1;
    }
    do
    {
      return i;
      if (localState1 == NetworkInfo.State.CONNECTED) {
        break;
      }
      localState3 = NetworkInfo.State.CONNECTING;
      i = 0;
    } while (localState1 != localState3);
    return 2;
  }
  
  public static boolean is2GNetwork(Context paramContext)
  {
    if (getNetType().summaryType == 1) {}
    int i;
    do
    {
      return false;
      i = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType();
    } while ((4 != i) && (1 != i) && (2 != i));
    return true;
  }
  
  public static boolean isNetworkAvailable()
  {
    try
    {
      localConnectivityManager = (ConnectivityManager)MyApplication.getInstance().getSystemService("connectivity");
      if (localConnectivityManager == null) {
        return false;
      }
      return isNetworkAvailable(localConnectivityManager);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ConnectivityManager localConnectivityManager = null;
      }
    }
  }
  
  private static boolean isNetworkAvailable(ConnectivityManager paramConnectivityManager)
  {
    boolean bool1 = true;
    try
    {
      NetworkInfo[] arrayOfNetworkInfo2 = paramConnectivityManager.getAllNetworkInfo();
      arrayOfNetworkInfo1 = arrayOfNetworkInfo2;
    }
    catch (Throwable localThrowable1)
    {
      for (;;)
      {
        int i;
        int j;
        label31:
        NetworkInfo[] arrayOfNetworkInfo1 = null;
      }
    }
    if (arrayOfNetworkInfo1 != null)
    {
      i = arrayOfNetworkInfo1.length;
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
        NetworkInfo.State localState1 = arrayOfNetworkInfo1[j].getState();
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
        break label31;
      }
      j++;
      break;
      bool2 = false;
    }
  }
  
  public static boolean isWifi()
  {
    return getNetType().summaryType == 1;
  }
  
  public static class NetType
  {
    public static final int NSP_CHINA_MOBILE = 1;
    public static final int NSP_CHINA_TELECOM = 3;
    public static final int NSP_CHINA_UNICOM = 2;
    public static final int NSP_NO = -1;
    public static final int NSP_OTHER = 0;
    public static final int SUMMARY_TYPE_MOBILE = 2;
    public static final int SUMMARY_TYPE_OTHER = 0;
    public static final int SUMMARY_TYPE_WIFI = 1;
    private String detailType;
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
    
    public NetType(int paramInt, String paramString)
    {
      this.summaryType = paramInt;
      this.extraInfo = paramString;
      getSimAndOperatorInfo();
    }
    
    private void getSimAndOperatorInfo()
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)MyApplication.getInstance().getSystemService("phone");
      try
      {
        this.simState = Integer.valueOf(localTelephonyManager.getSimState());
        try
        {
          label23:
          this.networkOperatorName = localTelephonyManager.getNetworkOperatorName();
          try
          {
            label31:
            this.networkOperator = localTelephonyManager.getNetworkOperator();
            try
            {
              label39:
              int i = localTelephonyManager.getNetworkType();
              this.networkType = i;
              this.networkTypeName = getNetworkTypeName(i);
              return;
            }
            catch (Throwable localThrowable4) {}
          }
          catch (Throwable localThrowable3)
          {
            break label39;
          }
        }
        catch (Throwable localThrowable2)
        {
          break label31;
        }
      }
      catch (Throwable localThrowable1)
      {
        break label23;
      }
    }
    
    public String getDetailType()
    {
      return "";
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
    
    @SuppressLint({"NewApi"})
    public String getNetworkTypeName(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return "UNKNOWN";
      case 1: 
        return "GPRS";
      case 2: 
        return "EDGE";
      case 3: 
        return "UMTS";
      case 8: 
        return "HSDPA";
      case 9: 
        return "HSUPA";
      case 10: 
        return "HSPA";
      case 4: 
        return "CDMA";
      case 5: 
        return "CDMA - EvDo rev. 0";
      case 6: 
        return "CDMA - EvDo rev. A";
      }
      return "CDMA - 1xRTT";
    }
    
    public String getProxyHost()
    {
      String str = Proxy.getDefaultHost();
      if (1 == this.summaryType) {
        return null;
      }
      this.proxyHost = str;
      this.proxyPort = Integer.valueOf(Proxy.getDefaultPort());
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
 * Qualified Name:     com.jingdong.common.utils.NetUtils
 * JD-Core Version:    0.7.0.1
 */