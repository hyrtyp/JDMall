package com.jd.lottery.lib.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public class PreferenceUtil
{
  public static final String OLD_SETTING_PREFS_NAME = "setting";
  
  public static boolean getBoolean(Context paramContext, String paramString, boolean paramBoolean)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(paramString, paramBoolean);
  }
  
  public static int getInt(Context paramContext, String paramString, int paramInt)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getInt(paramString, paramInt);
  }
  
  public static long getLong(Context paramContext, String paramString, long paramLong)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getLong(paramString, paramLong);
  }
  
  public static String getString(Context paramContext, String paramString1, String paramString2)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString(paramString1, paramString2);
  }
  
  public static void putBoolean(Context paramContext, String paramString, boolean paramBoolean)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putBoolean(paramString, paramBoolean).commit();
  }
  
  public static void putInt(Context paramContext, String paramString, int paramInt)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putInt(paramString, paramInt).commit();
  }
  
  public static void putLong(Context paramContext, String paramString, long paramLong)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putLong(paramString, paramLong).commit();
  }
  
  public static void putString(Context paramContext, String paramString1, String paramString2)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putString(paramString1, paramString2).commit();
  }
  
  public static void removeShare(Context paramContext, String paramString)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().remove(paramString).commit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.PreferenceUtil
 * JD-Core Version:    0.7.0.1
 */