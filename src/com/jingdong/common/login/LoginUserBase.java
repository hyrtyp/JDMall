package com.jingdong.common.login;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.jingdong.common.MyApplication;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.controller.ShoppingBaseController;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.utils.AlarmUtils;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JLogUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MessageUtil;
import com.jingdong.common.utils.NetUtils;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.PushMessageUtils;
import com.jingdong.common.utils.UserUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class LoginUserBase
  implements ILoginUser
{
  public static final String CERTKEY = "cert";
  public static final String LOGIN_NAME = "loginName";
  private static final String TAG = LoginUserBase.class.getSimpleName();
  private static int UserState = 0;
  private static boolean isAlreadySyncCart = false;
  public static boolean isAutoRetryLogin = true;
  private static JSONObject jbUserInfo;
  
  public static void clearRemember(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean1) {
      SafetyManager.removeUsername();
    }
    if (paramBoolean2) {
      SafetyManager.removePassword();
    }
    if (paramBoolean3) {
      SafetyManager.removeRemember();
    }
  }
  
  public static void executeLoginRunnableForCheckNetwork(final IMyActivity paramIMyActivity, Runnable paramRunnable)
  {
    if ((!hasLogin()) && (NetUtils.isNetworkAvailable()) && (SafetyManager.isRemember()))
    {
      String str1 = SafetyManager.getUserName();
      String str2 = SafetyManager.getPassword();
      if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
        loginRequest(paramIMyActivity, str1, str2, false, false, new LoginRequestListener()
        {
          public void onLoginError(int paramAnonymousInt, String paramAnonymousString) {}
          
          public void onLoginSuccess(String paramAnonymousString)
          {
            if (LoginUserBase.this != null) {
              paramIMyActivity.post(LoginUserBase.this);
            }
          }
        });
      }
    }
  }
  
  public static String getLoginName()
  {
    if (UserState == Constants.LOG_OFF) {
      return "";
    }
    try
    {
      String str = jbUserInfo.getString("loginName");
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public static String getLoginUserCert()
  {
    if (UserState == Constants.LOG_OFF) {
      return "";
    }
    try
    {
      String str = jbUserInfo.getString("cert");
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  /* Error */
  public static JSONObject getLoginUserInfo()
  {
    // Byte code:
    //   0: getstatic 100	com/jingdong/common/login/LoginUserBase:jbUserInfo	Lorg/json/JSONObject;
    //   3: ifnonnull +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: new 102	org/json/JSONObject
    //   11: dup
    //   12: getstatic 100	com/jingdong/common/login/LoginUserBase:jbUserInfo	Lorg/json/JSONObject;
    //   15: invokevirtual 112	org/json/JSONObject:toString	()Ljava/lang/String;
    //   18: invokespecial 115	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   21: astore_0
    //   22: aload_0
    //   23: ldc 10
    //   25: invokevirtual 119	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   28: pop
    //   29: aload_0
    //   30: areturn
    //   31: astore_3
    //   32: aconst_null
    //   33: areturn
    //   34: astore_1
    //   35: aload_0
    //   36: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   21	15	0	localJSONObject	JSONObject
    //   34	1	1	localException1	Exception
    //   31	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   8	22	31	java/lang/Exception
    //   22	29	34	java/lang/Exception
  }
  
  public static String getLoginUserName()
  {
    if (UserState == Constants.LOG_OFF) {
      return "";
    }
    try
    {
      String str = jbUserInfo.getString("pin");
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public static boolean hasLogin()
  {
    if (UserState == 0) {}
    while (UserState != 1) {
      return false;
    }
    return true;
  }
  
  public static boolean isAlreadySyncCart()
  {
    return isAlreadySyncCart;
  }
  
  public static void login(IMyActivity paramIMyActivity, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, LoginRequestListener paramLoginRequestListener)
  {
    isAutoRetryLogin = false;
    loginRequest(paramIMyActivity, paramString1, paramString2, paramBoolean1, paramBoolean2, paramLoginRequestListener);
  }
  
  public static void loginCallback(IMyActivity paramIMyActivity, final Runnable paramRunnable)
  {
    paramIMyActivity.addResumeListener(new IResumeListener()
    {
      public void onResume()
      {
        LoginUserBase.this.removeResumeListener(this);
        if (!LoginUserBase.hasLogin()) {}
        while (paramRunnable == null) {
          return;
        }
        paramRunnable.run();
      }
    });
  }
  
  public static void loginRequest(final IMyActivity paramIMyActivity, final String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, LoginRequestListener paramLoginRequestListener)
  {
    if ((paramIMyActivity == null) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return;
    }
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("loginpwd", paramString2);
      localJSONObject.put("loginname", paramString1);
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("login");
      localHttpSetting.setJsonParams(localJSONObject);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        private void onLoginError(int paramAnonymousInt, String paramAnonymousString)
        {
          if (LoginUserBase.this != null) {
            LoginUserBase.this.onLoginError(paramAnonymousInt, paramAnonymousString);
          }
        }
        
        private void onLoginSuccess(String paramAnonymousString)
        {
          if (LoginUserBase.this != null) {
            LoginUserBase.this.onLoginSuccess(paramAnonymousString);
          }
        }
        
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy.getJSONArray("logInfo");
            if (localJSONArrayPoxy.length() < 1)
            {
              onLoginError(2, null);
              return;
            }
            if (localJSONArrayPoxy.getJSONObject(0).names().toString().contains("failure"))
            {
              String str3 = localJSONArrayPoxy.getJSONObject(0).getString("failure");
              LoginUserBase.clearRemember(false, true, true);
              onLoginError(2, str3);
              return;
            }
          }
          catch (Exception localException1)
          {
            return;
          }
          try
          {
            String str2 = localJSONObjectProxy.getStringOrNull("pin");
            localObject = str2;
          }
          catch (Exception localException2)
          {
            for (;;)
            {
              JSONObject localJSONObject;
              String str1 = localJSONObjectProxy.getStringOrNull("oldpin");
              Object localObject = str1;
            }
          }
          Constants.hasLogIn = true;
          LoginUserBase.setUserState(Constants.LOG_IN);
          localJSONObject = new JSONObject();
          if (!TextUtils.isEmpty(paramString1)) {
            localJSONObject.put("loginName", paramString1);
          }
          localJSONObject.put("pin", localObject);
          localJSONObject.put("cert", localJSONObjectProxy.getStringOrNull("cat"));
          LoginUserBase.setUserInfo(localJSONObject);
          paramIMyActivity.putBooleanToPreference("login", Boolean.valueOf(true));
          onLoginSuccess((String)localObject);
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          if ((paramAnonymousHttpError.getErrorCode() == 0) || (paramAnonymousHttpError.getErrorCode() == 1))
          {
            onLoginError(1, null);
            return;
          }
          onLoginError(3, null);
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(paramBoolean1);
      localHttpSetting.setAlertErrorDialogType(1);
      if (!paramBoolean2) {
        localHttpSetting.setEffect(0);
      }
      paramIMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  public static void logoutOnlineInfo()
  {
    setUserStateOff(true);
    CommonUtil.getJdSharedPreferences().edit().remove("login").commit();
    Constants.clearOrderInfo();
    ShoppingBaseController.clearLocalCart();
    UserUtil.cleanData(MyApplication.getInstance().getCurrentMyActivity());
  }
  
  public static void setAlreadySyncCart(boolean paramBoolean)
  {
    isAlreadySyncCart = paramBoolean;
  }
  
  public static void setUserInfo(JSONObject paramJSONObject)
  {
    jbUserInfo = paramJSONObject;
    if (!NewJLogUtil.isUseNewJLog()) {
      JLogUtil.setUserPin(getLoginUserName());
    }
  }
  
  public static void setUserState(int paramInt)
  {
    UserState = paramInt;
    setAlreadySyncCart(false);
    if (paramInt == Constants.LOG_IN)
    {
      if (TextUtils.isEmpty(PushMessageUtils.getDeviceTokenFromLocal())) {
        break label34;
      }
      PushMessageUtils.bindUser(MyApplication.getInstance(), AlarmUtils.getDefaultDelay());
    }
    label34:
    while (MessageUtil.getMsgMode()) {
      return;
    }
    PushMessageUtils.regPushMessageToken(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        PushMessageUtils.bindUser(MyApplication.getInstance(), -1L);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    }, null, null);
  }
  
  public static void setUserStateOff(boolean paramBoolean)
  {
    setAlreadySyncCart(false);
    UserState = Constants.LOG_OFF;
    if (!NewJLogUtil.isUseNewJLog()) {
      JLogUtil.setUserPin("");
    }
    if (paramBoolean)
    {
      SafetyManager.saveCookies(null);
      PushMessageUtils.unBindUser();
    }
  }
  
  public static abstract interface LoginListener
  {
    public abstract void loginCompletedNotify();
  }
  
  public static abstract interface LoginRequestListener
  {
    public static final int ERROR_CODE_LOGIC = 2;
    public static final int ERROR_CODE_NETWORK = 1;
    public static final int ERROR_CODE_OTHER = 3;
    
    public abstract void onLoginError(int paramInt, String paramString);
    
    public abstract void onLoginSuccess(String paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.login.LoginUserBase
 * JD-Core Version:    0.7.0.1
 */