package com.jingdong.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.jingdong.common.MyApplication;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.lbs.LocManager;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class StatisticsReportUtil
{
  private static final String DEVICE_INFO_STR = "deviceInfoStr";
  private static final String DEVICE_INFO_UUID = "uuid";
  public static final String REPORT_PARAM_LBS_AREA = "&area=";
  public static final String REPORT_PARAM_NETWORK_TYPE = "&networkType=";
  private static final String SHOPPING_CART_UUID = "shoppingCartUUID";
  private static boolean already;
  private static String deivceUUID;
  private static String macAddress;
  private static CommonBase.MacAddressListener macAddressListener = new CommonBase.MacAddressListener()
  {
    public void setMacAddress(String paramAnonymousString)
    {
      try
      {
        StatisticsReportUtil.macAddress = paramAnonymousString;
        StatisticsReportUtil.already = true;
        notifyAll();
        return;
      }
      finally {}
    }
  };
  private static String paramStr;
  private static String paramStrWithOutDeviceUUID;
  
  public static String getDeviceInfoStr()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("uuid", readDeviceUUID());
      localJSONObject.put("platform", 100);
      localJSONObject.put("brand", spilitSubString(Build.MANUFACTURER, 12));
      localJSONObject.put("model", spilitSubString(Build.MODEL, 12));
      Display localDisplay = ((WindowManager)MyApplication.getInstance().getSystemService("window")).getDefaultDisplay();
      localJSONObject.put("screen", localDisplay.getHeight() + "*" + localDisplay.getWidth());
      localJSONObject.put("clientVersion", getSoftwareVersionName());
      localJSONObject.put("osVersion", Build.VERSION.RELEASE);
      localJSONObject.put("partner", Configuration.getProperty("partner", ""));
      localJSONObject.put("nettype", getNetworkTypeName(MyApplication.getInstance()));
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public static String getNetworkTypeName(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    String str = null;
    NetworkInfo[] arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
    for (int i = 0;; i++)
    {
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
          label52:
          str = "UNKNOWN";
        }
      }
      if (str == null) {
        str = "UNKNOWN";
      }
      return str;
      if (arrayOfNetworkInfo[i].isConnected()) {
        if (arrayOfNetworkInfo[i].getTypeName().toUpperCase().contains("MOBILE")) {
          str = localTelephonyManager.getNetworkType();
        } else if (arrayOfNetworkInfo[i].getTypeName().toUpperCase().contains("WIFI")) {
          str = "WIFI";
        } else {
          str = "UNKNOWN";
        }
      }
    }
  }
  
  private static PackageInfo getPackageInfo()
  {
    try
    {
      MyApplication localMyApplication = MyApplication.getInstance();
      PackageInfo localPackageInfo = localMyApplication.getPackageManager().getPackageInfo(localMyApplication.getPackageName(), 0);
      return localPackageInfo;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static String getParamStr()
  {
    if (!TextUtils.isEmpty(paramStr)) {
      return paramStr;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("&uuid=").append(readDeviceUUID());
    localStringBuffer.append(getParamStrWithOutDeviceUUID());
    paramStr = localStringBuffer.toString();
    return paramStr;
  }
  
  private static String getParamStrWithOutDeviceUUID()
  {
    if (!TextUtils.isEmpty(paramStrWithOutDeviceUUID)) {
      return paramStrWithOutDeviceUUID;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("&clientVersion=").append(spilitSubString(getSoftwareVersionName(), 12));
    localStringBuffer.append("&client=").append("android");
    try
    {
      String str1 = spilitSubString(Build.MANUFACTURER, 12).replaceAll(" ", "");
      localStringBuffer.append("&d_brand=").append(str1);
      String str2 = spilitSubString(Build.MODEL, 12).replaceAll(" ", "");
      localStringBuffer.append("&d_model=").append(str2);
      label110:
      localStringBuffer.append("&osVersion=").append(spilitSubString(Build.VERSION.RELEASE, 12));
      Display localDisplay = ((WindowManager)MyApplication.getInstance().getSystemService("window")).getDefaultDisplay();
      localStringBuffer.append("&screen=").append(localDisplay.getHeight() + "*" + localDisplay.getWidth());
      localStringBuffer.append("&partner=").append(Configuration.getProperty("partner", ""));
      paramStrWithOutDeviceUUID = localStringBuffer.toString();
      return paramStrWithOutDeviceUUID;
    }
    catch (Exception localException)
    {
      break label110;
    }
  }
  
  public static String getReportString(boolean paramBoolean)
  {
    if ((paramBoolean) || (getValidDeviceUUIDByInstant() != null)) {}
    for (String str1 = getParamStr();; str1 = getParamStrWithOutDeviceUUID())
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(str1);
      localStringBuffer.append("&networkType=").append(NetUtils.getNetworkType());
      String str2 = LocManager.getCommonLbsParameter();
      if (str2 != null) {
        localStringBuffer.append("&area=").append(str2);
      }
      return localStringBuffer.toString();
    }
  }
  
  public static int getSoftwareVersionCode()
  {
    PackageInfo localPackageInfo = getPackageInfo();
    if (localPackageInfo == null) {
      return 0;
    }
    return localPackageInfo.versionCode;
  }
  
  public static String getSoftwareVersionName()
  {
    PackageInfo localPackageInfo = getPackageInfo();
    if (localPackageInfo == null) {
      return "";
    }
    return localPackageInfo.versionName;
  }
  
  private static String getValidDeviceUUIDByInstant()
  {
    String str2;
    if (!TextUtils.isEmpty(deivceUUID)) {
      str2 = deivceUUID;
    }
    String str1;
    boolean bool;
    do
    {
      return str2;
      str1 = CommonUtil.getJdSharedPreferences().getString("uuid", null);
      bool = isValidDeviceUUID(str1);
      str2 = null;
    } while (!bool);
    deivceUUID = str1;
    return deivceUUID;
  }
  
  private static boolean isValidDeviceUUID(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    String[] arrayOfString;
    do
    {
      return false;
      arrayOfString = paramString.split("-");
    } while ((arrayOfString.length <= 1) || (TextUtils.isEmpty(arrayOfString[1])));
    return true;
  }
  
  public static String readCartUUID()
  {
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    String str = localSharedPreferences.getString("shoppingCartUUID", null);
    if (TextUtils.isEmpty(str))
    {
      str = readDeviceUUID() + UUID.randomUUID();
      localSharedPreferences.edit().putString("shoppingCartUUID", str).commit();
    }
    return str;
  }
  
  /* Error */
  public static String readDeviceUUID()
  {
    // Byte code:
    //   0: invokestatic 268	com/jingdong/common/utils/StatisticsReportUtil:getValidDeviceUUIDByInstant	()Ljava/lang/String;
    //   3: astore_0
    //   4: aload_0
    //   5: ifnull +5 -> 10
    //   8: aload_0
    //   9: areturn
    //   10: new 103	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 343	java/lang/StringBuilder:<init>	()V
    //   17: astore_1
    //   18: invokestatic 346	com/jingdong/common/utils/CommonUtil:getDeviceId	()Ljava/lang/String;
    //   21: astore_2
    //   22: aload_2
    //   23: invokestatic 228	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   26: ifne +16 -> 42
    //   29: aload_2
    //   30: invokevirtual 349	java/lang/String:trim	()Ljava/lang/String;
    //   33: ldc_w 310
    //   36: ldc 148
    //   38: invokevirtual 253	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   41: astore_2
    //   42: getstatic 42	com/jingdong/common/utils/StatisticsReportUtil:macAddress	Ljava/lang/String;
    //   45: astore_3
    //   46: aload_3
    //   47: ifnonnull +41 -> 88
    //   50: getstatic 37	com/jingdong/common/utils/StatisticsReportUtil:macAddressListener	Lcom/jingdong/common/utils/CommonBase$MacAddressListener;
    //   53: invokestatic 353	com/jingdong/common/utils/CommonUtil:getLocalMacAddress	(Lcom/jingdong/common/utils/CommonBase$MacAddressListener;)V
    //   56: getstatic 37	com/jingdong/common/utils/StatisticsReportUtil:macAddressListener	Lcom/jingdong/common/utils/CommonBase$MacAddressListener;
    //   59: astore 10
    //   61: aload 10
    //   63: monitorenter
    //   64: getstatic 46	com/jingdong/common/utils/StatisticsReportUtil:already	Z
    //   67: ifne +9 -> 76
    //   70: getstatic 37	com/jingdong/common/utils/StatisticsReportUtil:macAddressListener	Lcom/jingdong/common/utils/CommonBase$MacAddressListener;
    //   73: invokevirtual 356	java/lang/Object:wait	()V
    //   76: aload 10
    //   78: monitorexit
    //   79: getstatic 42	com/jingdong/common/utils/StatisticsReportUtil:macAddress	Ljava/lang/String;
    //   82: ifnonnull +118 -> 200
    //   85: ldc 148
    //   87: astore_3
    //   88: aload_3
    //   89: invokestatic 228	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   92: ifne +16 -> 108
    //   95: aload_3
    //   96: invokevirtual 349	java/lang/String:trim	()Ljava/lang/String;
    //   99: ldc_w 358
    //   102: ldc 148
    //   104: invokevirtual 253	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   107: astore_3
    //   108: aload_2
    //   109: invokestatic 228	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   112: ifne +9 -> 121
    //   115: aload_1
    //   116: aload_2
    //   117: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: pop
    //   121: aload_1
    //   122: ldc_w 310
    //   125: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: aload_3
    //   130: invokestatic 228	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   133: ifne +9 -> 142
    //   136: aload_1
    //   137: aload_3
    //   138: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: pop
    //   142: aload_1
    //   143: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: astore 5
    //   148: aload 5
    //   150: invokestatic 308	com/jingdong/common/utils/StatisticsReportUtil:isValidDeviceUUID	(Ljava/lang/String;)Z
    //   153: ifeq +26 -> 179
    //   156: invokestatic 299	com/jingdong/common/utils/CommonUtil:getJdSharedPreferences	()Landroid/content/SharedPreferences;
    //   159: invokeinterface 331 1 0
    //   164: ldc 11
    //   166: aload 5
    //   168: invokeinterface 337 3 0
    //   173: invokeinterface 340 1 0
    //   178: pop
    //   179: aload 5
    //   181: areturn
    //   182: astore 12
    //   184: aload 12
    //   186: invokevirtual 359	java/lang/InterruptedException:printStackTrace	()V
    //   189: goto -113 -> 76
    //   192: astore 11
    //   194: aload 10
    //   196: monitorexit
    //   197: aload 11
    //   199: athrow
    //   200: getstatic 42	com/jingdong/common/utils/StatisticsReportUtil:macAddress	Ljava/lang/String;
    //   203: astore_3
    //   204: goto -116 -> 88
    //   207: astore 6
    //   209: goto -30 -> 179
    // Local variable table:
    //   start	length	slot	name	signature
    //   3	6	0	str1	String
    //   17	126	1	localStringBuilder	java.lang.StringBuilder
    //   21	96	2	str2	String
    //   45	159	3	str3	String
    //   146	34	5	str4	String
    //   207	1	6	localException	Exception
    //   59	136	10	localMacAddressListener	CommonBase.MacAddressListener
    //   192	6	11	localObject	Object
    //   182	3	12	localInterruptedException	java.lang.InterruptedException
    // Exception table:
    //   from	to	target	type
    //   64	76	182	java/lang/InterruptedException
    //   64	76	192	finally
    //   76	79	192	finally
    //   184	189	192	finally
    //   194	197	192	finally
    //   156	179	207	java/lang/Exception
  }
  
  private static String spilitSubString(String paramString, int paramInt)
  {
    if (paramString != null) {}
    try
    {
      if (paramString.length() > paramInt)
      {
        String str = paramString.substring(0, paramInt);
        paramString = str;
      }
      return paramString;
    }
    catch (Exception localException) {}
    return paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.StatisticsReportUtil
 * JD-Core Version:    0.7.0.1
 */