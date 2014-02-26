package com.jd.droidlib.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.provider.Settings.Secure;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class AppUtils
{
  public static boolean canInstallNonMarketApps(Context paramContext)
  {
    int i = Settings.Secure.getInt(paramContext.getContentResolver(), "install_non_market_apps", 0);
    boolean bool = false;
    if (i != 0) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean doSignaturesMatch(Context paramContext, String paramString1, String paramString2)
  {
    return paramContext.getPackageManager().checkSignatures(paramString1, paramString2) == 0;
  }
  
  public static long getClassesDexCrc(Context paramContext)
  {
    try
    {
      ZipFile localZipFile = new ZipFile(paramContext.getPackageCodePath());
      return localZipFile.getEntry("classes.dex").getCrc();
    }
    catch (IOException localIOException)
    {
      L.e(localIOException);
    }
    return -1L;
  }
  
  public static String getDeviceId(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public static String getSignature(Context paramContext, String paramString)
    throws PackageManager.NameNotFoundException
  {
    return paramContext.getPackageManager().getPackageInfo(paramString, 64).signatures[0].toCharsString();
  }
  
  public static String getVersionName(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      L.w(localNameNotFoundException);
    }
    return "?";
  }
  
  public static boolean isDebuggable(Context paramContext)
  {
    return (0x2 & paramContext.getApplicationInfo().flags) != 0;
  }
  
  public static boolean isInstalled(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getPackageManager().getApplicationInfo(paramString, 128);
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return false;
  }
  
  public static boolean isInstalledFromMarket(Context paramContext, String paramString)
    throws PackageManager.NameNotFoundException
  {
    return "com.google.android.feedback".equals(paramContext.getPackageManager().getInstallerPackageName(paramString));
  }
  
  public static void setComponentEnabled(Context paramContext, Class<? extends Context> paramClass, boolean paramBoolean)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    ComponentName localComponentName = new ComponentName(paramContext, paramClass);
    if (paramBoolean) {}
    for (int i = 1;; i = 2)
    {
      localPackageManager.setComponentEnabledSetting(localComponentName, i, 1);
      return;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.AppUtils
 * JD-Core Version:    0.7.0.1
 */