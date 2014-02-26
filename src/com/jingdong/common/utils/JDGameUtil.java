package com.jingdong.common.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.jingdong.common.auth.BASE64Encoder;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class JDGameUtil
{
  private static final String ACTION_LOGIN_CANCEL = "jd.jgame.login.CANCEL";
  private static final String ACTION_LOGIN_OUT = "jd.jgame.login.OUT";
  private static final String ACTION_LOGIN_SUCCESS = "jd.jgame.login.SUCCESS";
  private static final String ACTION_MAIN = "jd.intent.action.MAIN";
  public static final int DES_AFTER_LOGIN_CANCEL = 3;
  public static final int DES_AFTER_LOGIN_SUCCESS = 2;
  public static final int DES_MAIN = 1;
  public static final String FUNCTION_ID = "jdgame";
  private static final String JD_GAME_COMPONENT_NAME = "com.jingdong.jgame";
  private static final String KEY_CATEGORY = "jd.intent.category.LAUNCHER";
  private static final String KEY_LOGIN_COOKIE = "loginCookie";
  private static final String KEY_LOGIN_NAME = "loginName";
  private static final String TAG = "JDGameUtil";
  
  public static boolean checkJDGameHasExist(Context paramContext)
  {
    return CommonUtil.getPackageInfo(paramContext, "com.jingdong.jgame") != null;
  }
  
  private static String getDESCookie(String paramString)
  {
    try
    {
      String str = getDesEncryptValue(paramString);
      return str;
    }
    catch (Throwable localThrowable) {}
    return "";
  }
  
  private static String getDesEncryptValue(String paramString)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec("6A647E2D".getBytes(), "DES");
      Cipher localCipher = Cipher.getInstance("DES");
      localCipher.init(1, localSecretKeySpec);
      byte[] arrayOfByte = localCipher.doFinal(paramString.getBytes("UTF-8"));
      String str = new BASE64Encoder().encode(arrayOfByte);
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }
  
  public static void gotoJDGameUtil(IMyActivity paramIMyActivity, String paramString1, String paramString2, int paramInt)
  {
    gotoJDGameUtil(paramIMyActivity, paramString1, paramString2, paramInt, "", 0);
  }
  
  public static void gotoJDGameUtil(IMyActivity paramIMyActivity, String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2)
  {
    if (paramIMyActivity == null) {}
    do
    {
      return;
      if (checkJDGameHasExist(paramIMyActivity.getThisActivity()))
      {
        Intent localIntent = new Intent();
        localIntent.setFlags(32);
        switch (paramInt1)
        {
        default: 
          localIntent.setAction("jd.jgame.login.CANCEL");
        }
        for (;;)
        {
          Bundle localBundle = new Bundle();
          localBundle.putString("loginName", paramString1);
          localBundle.putString("loginCookie", getDESCookie(paramString2));
          localIntent.putExtras(localBundle);
          paramIMyActivity.getThisActivity().sendBroadcast(localIntent);
          return;
          localIntent.setAction("jd.intent.action.MAIN");
          localIntent.setFlags(0x10000000 | localIntent.getFlags());
          localIntent.putExtra("loginCookie", getDESCookie(paramString2));
          localIntent.putExtra("loginName", paramString1);
          localIntent.addCategory("jd.intent.category.LAUNCHER");
          localIntent.setPackage("com.jingdong.jgame");
          paramIMyActivity.getThisActivity().startActivity(localIntent);
          return;
          localIntent.setAction("jd.jgame.login.SUCCESS");
        }
      }
    } while ((TextUtils.isEmpty(paramString3)) || (paramInt2 < 1));
    ApplicationUpgradeHelper.tryDownloadAndInstall(paramIMyActivity, paramString3, paramInt2, StringUtil.jd_game_app_has_no_install, "jdgame");
  }
  
  public static void sendLogoutBroadCast(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setAction("jd.jgame.login.OUT");
    paramContext.sendBroadcast(localIntent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.JDGameUtil
 * JD-Core Version:    0.7.0.1
 */