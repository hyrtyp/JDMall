package com.jingdong.common.utils;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public class ShortCutUtils
{
  static final String ACTION_INSTALL = "com.android.launcher.action.INSTALL_SHORTCUT";
  static final String ACTION_UNINSTALL = "com.android.launcher.action.UNINSTALL_SHORTCUT";
  public static final int ADD_SHORT_CUT = 1;
  public static final int DELETE_JD_APP_SHORT_CUT = 2;
  private static final String JD_APP_NAME = "京东商城";
  
  private static void addOrDeleteShortcut(Activity paramActivity, String paramString1, String paramString2, String paramString3, Drawable paramDrawable, boolean paramBoolean, int paramInt)
  {
    Intent localIntent1 = new Intent("android.intent.action.MAIN");
    localIntent1.setClassName(paramActivity, paramString1 + ".MainActivity");
    localIntent1.addCategory("android.intent.category.LAUNCHER");
    localIntent1.addFlags(268435456);
    localIntent1.addFlags(2097152);
    String str = paramString3;
    PackageManager localPackageManager = paramActivity.getPackageManager();
    for (;;)
    {
      Intent localIntent2;
      try
      {
        ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramString1, 8320);
        if (str == null) {
          str = localPackageManager.getApplicationLabel(localApplicationInfo).toString();
        }
        int i = localApplicationInfo.icon;
        localIntent2 = new Intent();
        localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
        localIntent2.putExtra("android.intent.extra.shortcut.NAME", str);
        localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramActivity, i));
        localIntent2.putExtra("duplicate", paramBoolean);
        switch (paramInt)
        {
        default: 
          paramActivity.sendBroadcast(localIntent2);
          return;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
        return;
      }
      localIntent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
      continue;
      localIntent2.putExtra("android.intent.extra.shortcut.NAME", "京东商城");
      localIntent2.setAction("com.android.launcher.action.UNINSTALL_SHORTCUT");
    }
  }
  
  public static void addShortcutToDesktop(Context paramContext, String paramString1, String paramString2, String paramString3, Drawable paramDrawable, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
    String str = paramString3;
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)paramDrawable;
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramString1, 129);
      if (str == null) {
        str = localPackageManager.getApplicationLabel(localApplicationInfo).toString();
      }
      if (localBitmapDrawable == null) {
        localBitmapDrawable = (BitmapDrawable)localPackageManager.getApplicationIcon(localApplicationInfo);
      }
      localIntent.putExtra("android.intent.extra.shortcut.NAME", str);
      localIntent.putExtra("android.intent.extra.shortcut.ICON", localBitmapDrawable.getBitmap());
      localIntent.putExtra("duplicate", paramBoolean);
      ComponentName localComponentName = new ComponentName(paramString1, "." + paramString2);
      new Intent("android.intent.action.MAIN").setComponent(localComponentName);
      localIntent.putExtra("android.intent.extra.shortcut.INTENT", new Intent("android.intent.action.MAIN").setComponent(localComponentName));
      paramContext.sendBroadcast(localIntent);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
  }
  
  public static void addShortcutToOptions(Activity paramActivity, String paramString1, String paramString2, String paramString3, Drawable paramDrawable, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    String str = paramString3;
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)paramDrawable;
    PackageManager localPackageManager = paramActivity.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramString1, 8320);
      if (str == null) {
        str = localPackageManager.getApplicationLabel(localApplicationInfo).toString();
      }
      if (localBitmapDrawable == null) {
        localBitmapDrawable = (BitmapDrawable)localPackageManager.getApplicationIcon(localApplicationInfo);
      }
      localIntent.putExtra("android.intent.extra.shortcut.NAME", str);
      localIntent.putExtra("android.intent.extra.shortcut.ICON", localBitmapDrawable.getBitmap());
      ComponentName localComponentName = new ComponentName(paramString1, paramString2);
      localIntent.putExtra("android.intent.extra.shortcut.INTENT", new Intent("android.intent.action.MAIN").setComponent(localComponentName));
      paramActivity.setResult(-1, localIntent);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
  }
  
  public static void addSortcutForJdApp(Activity paramActivity)
  {
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    String str1 = paramActivity.getPackageName();
    String str2 = paramActivity.getLocalClassName();
    addOrDeleteShortcut(paramActivity, str1, str2, null, null, false, 1);
    localSharedPreferences.edit().putBoolean("add_short_cut_flag_new", true).commit();
    addShortcutToOptions(paramActivity, str1, str2, null, null, false);
  }
  
  public static void delShortcutFromDesktop(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
    Object localObject = paramString3;
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramString1, 8320);
      if (localObject == null)
      {
        String str = localPackageManager.getApplicationLabel(localApplicationInfo).toString();
        localObject = str;
      }
      localIntent.putExtra("android.intent.extra.shortcut.NAME", (String)localObject);
      ComponentName localComponentName = new ComponentName(paramString1, paramString2);
      localIntent.putExtra("android.intent.extra.shortcut.INTENT", new Intent("android.intent.action.MAIN").setComponent(localComponentName));
      paramContext.sendBroadcast(localIntent);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
  }
  
  public static void deleteOldJdAppShortCut(Activity paramActivity)
  {
    addOrDeleteShortcut(paramActivity, paramActivity.getPackageName(), null, null, null, false, 2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ShortCutUtils
 * JD-Core Version:    0.7.0.1
 */