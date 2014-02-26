package com.ja.analytics.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public final class ManifestPackageUtils
{
  private static final String TAG = ManifestPackageUtils.class.getName();
  
  public static String ReadCofigInfoFromManifest(Context paramContext, String paramString)
  {
    String str = "";
    PackageManager localPackageManager = paramContext.getPackageManager();
    Object localObject;
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo == null) {
        return str;
      }
      Bundle localBundle = localApplicationInfo.metaData;
      localObject = null;
      if (localBundle != null) {
        localObject = localApplicationInfo.metaData.get(paramString);
      }
      if (localObject != null) {
        break label133;
      }
      LogUtil.logD(TAG, "null,can't find information for key:" + paramString);
      if (paramString == "JD_APPKEY")
      {
        LogUtil.logE(" can't find app key in manifest.xml.");
        throw new SecurityException(" can't find app key in manifest.xml.");
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      if (paramString == "JD_APPKEY")
      {
        LogUtil.logE(" can't find app key in manifest.xml.");
        throw new SecurityException(" can't find app key in manifest.xml.");
      }
      return str;
    }
    return str;
    label133:
    str = localObject.toString();
    if ((str.trim().equals("")) && (paramString == "JD_APPKEY"))
    {
      LogUtil.logE(" The value of APP Key is empty.");
      throw new SecurityException(" The value of APP Key is empty.");
    }
    return str;
  }
  
  public static String getAccessKey(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
    if (localApplicationInfo.metaData == null) {
      return "";
    }
    Object localObject = localApplicationInfo.metaData.get("JD_ACCESSKEY");
    if (localObject != null) {
      return localObject.toString();
    }
    return "";
  }
  
  public static String getAppKey(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
    if (localApplicationInfo.metaData == null) {
      return "";
    }
    Object localObject = localApplicationInfo.metaData.get("JD_APPKEY");
    if (localObject != null) {
      return localObject.toString();
    }
    return "";
  }
  
  public static String getAppVersionCode(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str = paramContext.getPackageName();
    try
    {
      PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(str, 0);
      localPackageInfo1 = localPackageInfo2;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = TAG;
        arrayOfObject[1] = "get app version code exception";
        LogUtil.logE(arrayOfObject);
        PackageInfo localPackageInfo1 = null;
      }
    }
    return localPackageInfo1.versionName;
  }
  
  public static String getAppVersionName(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str = paramContext.getPackageName();
    try
    {
      PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(str, 0);
      localPackageInfo1 = localPackageInfo2;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = TAG;
        arrayOfObject[1] = "get app version name exception";
        LogUtil.logE(arrayOfObject);
        PackageInfo localPackageInfo1 = null;
      }
    }
    return localPackageInfo1.versionName;
  }
  
  public static String getChannel(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
    if (localApplicationInfo.metaData == null) {
      return "";
    }
    Object localObject = localApplicationInfo.metaData.get("JD_CHANNEL");
    if (localObject != null) {
      return localObject.toString();
    }
    return "";
  }
  
  private static PackageInfo getPackageInfo(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    return paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
  }
  
  public static String getPackageName(Context paramContext)
  {
    return paramContext.getPackageName();
  }
  
  public static String getSoftwareVersion(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    PackageInfo localPackageInfo = getPackageInfo(paramContext);
    if (localPackageInfo == null) {
      return "0|0";
    }
    return localPackageInfo.versionCode + "|" + localPackageInfo.versionName;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.utils.ManifestPackageUtils
 * JD-Core Version:    0.7.0.1
 */