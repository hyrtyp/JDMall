package com.ja.analytics.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class PreferenceUtils
{
  private static SharedPreferences JaSdkSharedPreferences;
  private static SharedPreferences sessionSessionTimePreferences;
  private static SharedPreferences sessionSharedPreferences;
  
  public static SharedPreferences getSessionSharedPreference(Context paramContext, String paramString)
  {
    if (sessionSharedPreferences == null) {
      sessionSharedPreferences = paramContext.getSharedPreferences(paramString, 0);
    }
    return sessionSharedPreferences;
  }
  
  public static SharedPreferences getSessionTimePreferences(Context paramContext, String paramString)
  {
    if (sessionSessionTimePreferences == null) {
      sessionSessionTimePreferences = paramContext.getSharedPreferences(paramString, 0);
    }
    return sessionSessionTimePreferences;
  }
  
  public static SharedPreferences getSharedPreferences(Context paramContext, String paramString)
  {
    if (JaSdkSharedPreferences == null) {
      JaSdkSharedPreferences = paramContext.getSharedPreferences(paramString, 0);
    }
    return JaSdkSharedPreferences;
  }
  
  public static void setSessionTimePreferences(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (sessionSessionTimePreferences != null)
    {
      SharedPreferences.Editor localEditor = sessionSessionTimePreferences.edit();
      localEditor.putString(paramString2, paramString3);
      localEditor.commit();
    }
  }
  
  public static void setSharedPreference(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    SharedPreferences.Editor localEditor = getSessionSharedPreference(paramContext, paramString1).edit();
    localEditor.putInt(paramString2, paramInt);
    localEditor.commit();
  }
  
  public static void setSharedPreference(Context paramContext, String paramString1, String paramString2, Boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = getSessionSharedPreference(paramContext, paramString1).edit();
    localEditor.putBoolean(paramString2, paramBoolean.booleanValue());
    localEditor.commit();
  }
  
  public static void setSharedPreference(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    SharedPreferences.Editor localEditor = getSessionSharedPreference(paramContext, paramString1).edit();
    localEditor.putString(paramString2, paramString3);
    localEditor.commit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.utils.PreferenceUtils
 * JD-Core Version:    0.7.0.1
 */