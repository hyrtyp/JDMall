package com.jingdong.app.mall.register;

import android.view.View;
import android.view.View.OnClickListener;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class QuickRegisterLoginListener
  implements View.OnClickListener
{
  public QuickRegisterLoginStatusListener listener;
  public MyActivity myactivity;
  public String pin;
  
  public QuickRegisterLoginListener(QuickRegisterLoginStatusListener paramQuickRegisterLoginStatusListener, MyActivity paramMyActivity)
  {
    this.listener = paramQuickRegisterLoginStatusListener;
    this.myactivity = paramMyActivity;
  }
  
  public abstract boolean checkInputs();
  
  public abstract String getPassword();
  
  public abstract String getPhone();
  
  public void onClick(View paramView)
  {
    if (!checkInputs()) {
      return;
    }
    final String str1 = getPhone();
    final String str2 = getPassword();
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.putJsonParam("username", str1);
    localHttpSetting.putJsonParam("pwd", str2);
    localHttpSetting.putJsonParam("type", "2");
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setFunctionId("register");
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        if (paramAnonymousHttpResponse == null) {
          return;
        }
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        Object localObject1 = "";
        for (Object localObject2 = Boolean.valueOf(false);; localObject2 = localBoolean)
        {
          try
          {
            if (localJSONObjectProxy.isNull("pin")) {
              break label91;
            }
            String str1 = localJSONObjectProxy.getStringOrNull("pin");
            QuickRegisterLoginListener.this.pin = str1;
            String str2 = localJSONObjectProxy.getJSONArray("regInfo").getJSONObject(0).getStringOrNull("success");
            localObject1 = str2;
          }
          catch (JSONException localJSONException)
          {
            final Object localObject3;
            for (;;)
            {
              label91:
              Boolean localBoolean;
              localObject2 = Boolean.valueOf(true);
              localJSONException.printStackTrace();
            }
            QuickRegisterLoginListener.this.myactivity.post(new Runnable()
            {
              public void run()
              {
                try
                {
                  Constants.hasLogIn = true;
                  LoginUserBase.setUserState(Constants.LOG_IN);
                  JSONObject localJSONObject = new JSONObject();
                  localJSONObject.put("pin", QuickRegisterLoginListener.this.pin);
                  LoginUserBase.setUserInfo(localJSONObject);
                  SafetyManager.saveSafety(this.val$userName, LoginActivity.EncryptPassword2(this.val$pwd), true);
                  QuickRegisterLoginListener.this.myactivity.putBooleanToPreference("login", Boolean.valueOf(true));
                  QuickRegisterLoginListener.this.listener.onSuccess(QuickRegisterLoginListener.this.pin, localObject3);
                  return;
                }
                catch (Exception localException)
                {
                  localException.printStackTrace();
                }
              }
            });
          }
          localObject3 = localObject1;
          if (!((Boolean)localObject2).booleanValue()) {
            break;
          }
          QuickRegisterLoginListener.this.listener.onFailed(localObject3);
          return;
          localObject1 = localJSONObjectProxy.getJSONArray("regInfo").getJSONObject(0).getStringOrNull("info");
          localBoolean = Boolean.valueOf(true);
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    this.myactivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static abstract interface QuickRegisterLoginStatusListener
  {
    public abstract void onFailed(String paramString);
    
    public abstract void onSuccess(String paramString1, String paramString2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.register.QuickRegisterLoginListener
 * JD-Core Version:    0.7.0.1
 */