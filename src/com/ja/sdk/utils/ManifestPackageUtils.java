package com.ja.sdk.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public final class ManifestPackageUtils
{
  private static final String TAG = "ManifestPackageUtils";
  
  public static String ReadCofigInfoFromManifest(Context paramContext, String paramString)
  {
    String str = "";
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo != null)
      {
        Bundle localBundle = localApplicationInfo.metaData;
        Object localObject = null;
        if (localBundle != null) {
          localObject = localApplicationInfo.metaData.get(paramString);
        }
        if (localObject == null)
        {
          LogUtil.logD("ManifestPackageUtils", "null,can't find information for key:" + paramString);
          if (paramString != "Ja_Sdk_ID") {
            return str;
          }
          LogUtil.logE(" can't find app key in manifest.xml.");
        }
        str = localObject.toString();
        if ((str.trim().equals("")) && (paramString == "Ja_Sdk_ID")) {
          LogUtil.logE(" The value of APP Key is empty.");
        }
      }
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      if (paramString == "Ja_Sdk_ID")
      {
        LogUtil.logE(" can't find app key in manifest.xml.");
        throw new SecurityException(" can't find app key in manifest.xml.");
      }
      return str;
    }
    return str;
  }
  
  public static int getAppVersionCode(Context paramContext)
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
        LogUtil.logE(new Object[] { "ManifestPackageUtils", "get app version code exception" });
        PackageInfo localPackageInfo1 = null;
      }
    }
    return localPackageInfo1.versionCode;
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
        LogUtil.logE(new Object[] { "ManifestPackageUtils", "get app version name exception" });
        PackageInfo localPackageInfo1 = null;
      }
    }
    return localPackageInfo1.versionName;
  }
  
  public static String getChannel(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
    String str;
    if (localApplicationInfo.metaData == null) {
      str = "";
    }
    do
    {
      return str;
      str = localApplicationInfo.metaData.getString("sc");
    } while (str != null);
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
 * Qualified Name:     com.ja.sdk.utils.ManifestPackageUtils
 * JD-Core Version:    0.7.0.1
 */