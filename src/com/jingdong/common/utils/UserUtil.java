package com.jingdong.common.utils;

import android.app.Activity;
import android.content.Intent;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.controller.ShoppingBaseController;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.service.MessagePullService;

public class UserUtil
{
  public static void cleanData(IMyActivity paramIMyActivity)
  {
    HttpGroup.cleanCookies();
    JDGameUtil.sendLogoutBroadCast(paramIMyActivity.getThisActivity());
  }
  
  public static void onLogout(IMyActivity paramIMyActivity)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("logout");
    localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("code");
          if ((str != null) && (!"0".equals(str))) {
            UserUtil.cleanData(UserUtil.this);
          }
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        UserUtil.cleanData(UserUtil.this);
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    paramIMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
    LoginUserBase.setUserStateOff(true);
    paramIMyActivity.putBooleanToPreference("login", Boolean.valueOf(false));
    SafetyManager.setRemember(false);
    ShoppingBaseController.clearLocalCart();
    Constants.clearOrderInfo();
    if (!MessagePullService.widgetIsRunInBg())
    {
      Intent localIntent = new Intent(paramIMyActivity.getThisActivity(), MessagePullService.class);
      localIntent.setAction("Action_Stop_Message_Service");
      paramIMyActivity.getThisActivity().startService(localIntent);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.UserUtil
 * JD-Core Version:    0.7.0.1
 */