package com.jingdong.common.login;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.jingdong.common.MyApplication;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.JniUtils;

public class SafetyManager
{
  private static final String OLD_NEW_COOKIES = "cookies";
  private static final String OLD_OLD_COOKIES = "oldCookies";
  private static final String OLD_REMEMBER_FLAG = "remember";
  private static final String OLD_REMEMBER_NAME = "userName";
  private static final String OLD_REMEMBER_PASSWORD = "password";
  private static final String SHARED_PREFERENCE_COOKIES = "jdPrice";
  private static final String SHARED_PREFERENCE_COOKIES_OLD = "price";
  private static final String SHARED_PREFERENCE_IS_REMEMBER = "isCollection";
  private static final String SHARED_PREFERENCE_PASSWORD = "name";
  private static final String SHARED_PREFERENCE_USERNAME = "productCode";
  private static final String TAG = "SafetyManager";
  private static String cacheCookies;
  
  public static void clearSafety()
  {
    getSharedPreferences().edit().clear().commit();
  }
  
  public static void compatibleOldVersion()
  {
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    if (localSharedPreferences.getBoolean("remember", false))
    {
      saveSafety(localSharedPreferences.getString("userName", null), localSharedPreferences.getString("password", null), true);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.remove("remember");
      localEditor.remove("userName");
      localEditor.remove("password");
      localEditor.commit();
    }
    if (localSharedPreferences.getString("cookies", null) != null)
    {
      saveCookies(localSharedPreferences.getString("cookies", null));
      localSharedPreferences.edit().remove("cookies").commit();
    }
    if (localSharedPreferences.getString("oldCookies", null) != null)
    {
      saveOldCookies(localSharedPreferences.getString("oldCookies", null));
      localSharedPreferences.edit().remove("oldCookies").commit();
    }
  }
  
  public static String getCookies()
  {
    String str = getSharedPreferences().getString("jdPrice", null);
    if (str != null) {
      str = JniUtils.dP(str);
    }
    return str;
  }
  
  public static String getOldCookies()
  {
    String str = getSharedPreferences().getString("price", null);
    if (str != null) {
      str = JniUtils.dP(str);
    }
    return str;
  }
  
  public static String getPassword()
  {
    String str = getSharedPreferences().getString("name", null);
    if (str != null) {
      str = JniUtils.dP(str);
    }
    return str;
  }
  
  private static SharedPreferences getSharedPreferences()
  {
    MyApplication.networkSetting();
    return MyApplication.getInstance().getApplicationContext().getSharedPreferences(getSharedPreferencesName(), 0);
  }
  
  private static String getSharedPreferencesName()
  {
    try
    {
      String str = JniUtils.getSHN();
      return str;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }
  
  public static String getUserName()
  {
    String str = getSharedPreferences().getString("productCode", null);
    if (str != null) {
      str = JniUtils.dU(str);
    }
    return str;
  }
  
  public static void initEncryptKey()
  {
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    String str = localSharedPreferences.getString("jd_key4", null);
    if (TextUtils.isEmpty(str))
    {
      str = JniUtils.eMK();
      localSharedPreferences.edit().putString("jd_key4", str).commit();
    }
    CommonUtil.miaoShaKey = str;
  }
  
  public static boolean isRemember()
  {
    return getSharedPreferences().getBoolean("isCollection", false);
  }
  
  public static void removePassword()
  {
    getSharedPreferences().edit().remove("name").commit();
  }
  
  public static void removeRemember()
  {
    getSharedPreferences().edit().remove("isCollection").commit();
  }
  
  public static void removeUsername()
  {
    getSharedPreferences().edit().remove("productCode").commit();
  }
  
  public static void saveCookies(String paramString)
  {
    if (cacheCookies == null) {
      cacheCookies = getCookies();
    }
    if (TextUtils.equals(cacheCookies, paramString)) {
      return;
    }
    cacheCookies = paramString;
    if (TextUtils.isEmpty(paramString))
    {
      getSharedPreferences().edit().remove("jdPrice").commit();
      return;
    }
    String str = JniUtils.eP(paramString);
    getSharedPreferences().edit().putString("jdPrice", str).commit();
  }
  
  public static void saveOldCookies(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      getSharedPreferences().edit().remove("price").commit();
      return;
    }
    String str = JniUtils.eP(paramString);
    getSharedPreferences().edit().putString("price", str).commit();
  }
  
  public static void saveSafety(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return;
    }
    SharedPreferences.Editor localEditor = getSharedPreferences().edit();
    localEditor.putString("productCode", JniUtils.eU(paramString1));
    localEditor.putString("name", JniUtils.eP(paramString2));
    localEditor.putBoolean("isCollection", paramBoolean);
    localEditor.commit();
  }
  
  public static void setRemember(boolean paramBoolean)
  {
    getSharedPreferences().edit().putBoolean("isCollection", paramBoolean).commit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.login.SafetyManager
 * JD-Core Version:    0.7.0.1
 */