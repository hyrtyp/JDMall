package com.jingdong.cloud.msg.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class SharedPreferenceUtil
{
  private static SharedPreferences preferences;
  
  public static int getIntValueByKey(Context paramContext, String paramString, int paramInt)
  {
    SharedPreferences localSharedPreferences = getSharedPreferences(paramContext);
    if (localSharedPreferences != null) {
      paramInt = localSharedPreferences.getInt(paramString, paramInt);
    }
    return paramInt;
  }
  
  private static SharedPreferences getSharedPreferences(Context paramContext)
  {
    try
    {
      if (preferences == null) {
        preferences = paramContext.getSharedPreferences("msg_push", 0);
      }
      SharedPreferences localSharedPreferences = preferences;
      return localSharedPreferences;
    }
    finally {}
  }
  
  public static String getStringFromSharedPreference(Context paramContext, String paramString1, String paramString2)
  {
    SharedPreferences localSharedPreferences = getSharedPreferences(paramContext);
    if (localSharedPreferences != null) {
      paramString2 = localSharedPreferences.getString(paramString1, paramString2);
    }
    return paramString2;
  }
  
  public static void putIntValueByKey(Context paramContext, String paramString, int paramInt)
  {
    getSharedPreferences(paramContext).edit().putInt(paramString, paramInt).commit();
  }
  
  public static void putStringValueByKey(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      Log.d("putStringValueByKey:" + paramString1 + "=", paramString2);
      getSharedPreferences(paramContext).edit().putString(paramString1, paramString2).commit();
      Log.d("getStringFromSharedPreference:" + paramString1 + "=", getStringFromSharedPreference(paramContext, paramString1, ""));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.util.SharedPreferenceUtil
 * JD-Core Version:    0.7.0.1
 */