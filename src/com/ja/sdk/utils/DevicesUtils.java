package com.ja.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public class DevicesUtils
{
  private static final String DEVICE_INFO_UUID = "uuid";
  private static final String TAG = "DevicesUtils";
  private static String deivceUUID;
  private static String macAddress;
  
  private static String formatMacAddress(String paramString, Context paramContext)
  {
    Object localObject = paramString;
    if (paramString.equals("000000000000000"))
    {
      String str = NetUtils.getWifiMacAddress(paramContext);
      if (str != null)
      {
        str = str.replaceAll(":", "");
        localObject = str;
      }
      LogUtil.logD("DevicesUtils", "imei=null,mac=" + str);
    }
    return localObject;
  }
  
  public static String getDeviceId(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }
  
  public static String getDeviceId2(Context paramContext)
  {
    String str1 = null;
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      str1 = localTelephonyManager.getDeviceId();
      String str2 = formatMacAddress(str1, paramContext);
      return str2;
    }
    catch (Exception localException)
    {
      LogUtil.logException(localException);
    }
    return str1;
  }
  
  public static String getDeviceName()
  {
    String str1 = spilitSubString(Build.MANUFACTURER, 12);
    String str2 = spilitSubString(Build.MODEL, 12);
    return str1 + "|" + str2;
  }
  
  private static String getValidDeviceUUIDByInstant(Context paramContext)
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
      str1 = PreferenceUtils.getSharedPreferences(paramContext).getString("uuid", null);
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
  
  public static String readDeviceUUID(Context paramContext)
  {
    String str1 = getValidDeviceUUIDByInstant(paramContext);
    if (str1 != null)
    {
      LogUtil.logD("DevicesUtils", "readDeviceUUID() read deivceUUID -->> " + str1);
      return str1;
    }
    LogUtil.logD("DevicesUtils", "readDeviceUUID() create -->> ");
    StringBuilder localStringBuilder = new StringBuilder();
    String str2 = getDeviceId(paramContext);
    if (!TextUtils.isEmpty(str2)) {
      str2 = str2.trim().replaceAll("-", "");
    }
    String str3 = macAddress;
    if (!TextUtils.isEmpty(str3)) {
      str3 = str3.trim().replaceAll("-|\\.|:", "");
    }
    if (!TextUtils.isEmpty(str2)) {
      localStringBuilder.append(str2);
    }
    localStringBuilder.append("-");
    if (!TextUtils.isEmpty(str3)) {
      localStringBuilder.append(str3);
    }
    String str4 = localStringBuilder.toString();
    LogUtil.logD("DevicesUtils", "readDeviceUUID() create deivceUUID -->> " + str4);
    return str4;
  }
  
  public static String spilitSubString(String paramString, int paramInt)
  {
    if ((paramString != null) && (paramString.length() > paramInt)) {
      paramString = paramString.substring(0, paramInt);
    }
    return paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.utils.DevicesUtils
 * JD-Core Version:    0.7.0.1
 */