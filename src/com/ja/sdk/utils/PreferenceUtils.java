package com.ja.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class PreferenceUtils
{
  public static final String JA_SDK_LOG_SHARE_PREFERENCE = "ja_sdk_log_preference";
  private static SharedPreferences JaSdkSharedPreferences;
  private static SharedPreferences sessionSharedPreferences;
  
  public static SharedPreferences getSessionSharedPreference(Context paramContext, String paramString)
  {
    if (sessionSharedPreferences == null) {
      sessionSharedPreferences = paramContext.getSharedPreferences(paramString, 0);
    }
    return sessionSharedPreferences;
  }
  
  public static SharedPreferences getSharedPreferences(Context paramContext)
  {
    if (JaSdkSharedPreferences == null) {
      JaSdkSharedPreferences = paramContext.getSharedPreferences("ja_sdk_log_preference", 0);
    }
    return JaSdkSharedPreferences;
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
 * Qualified Name:     com.ja.sdk.utils.PreferenceUtils
 * JD-Core Version:    0.7.0.1
 */