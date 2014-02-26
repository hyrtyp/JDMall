package com.jingdong.app.mall.utils;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.Toast;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.login.LoginUserBase.LoginListener;
import com.jingdong.common.login.LoginUserBase.LoginRequestListener;
import com.jingdong.common.login.SafetyManager;

public class LoginUser
  extends LoginUserBase
{
  private static final String TAG = "LoginUser";
  private static LoginUser loginUser;
  
  public static LoginUser getInstance()
  {
    if (loginUser == null) {
      loginUser = new LoginUser();
    }
    return loginUser;
  }
  
  public void executeLoginRunnable(MyActivity paramMyActivity, Runnable paramRunnable)
  {
    executeLoginRunnable(paramMyActivity, paramRunnable, null, true, 0);
  }
  
  public void executeLoginRunnable(MyActivity paramMyActivity, Runnable paramRunnable, int paramInt)
  {
    executeLoginRunnable(paramMyActivity, paramRunnable, null, true, paramInt);
  }
  
  public void executeLoginRunnable(MyActivity paramMyActivity, Runnable paramRunnable, String paramString)
  {
    executeLoginRunnable(paramMyActivity, paramRunnable, paramString, true, 0);
  }
  
  public void executeLoginRunnable(MyActivity paramMyActivity, Runnable paramRunnable, String paramString, boolean paramBoolean)
  {
    executeLoginRunnable(paramMyActivity, paramRunnable, paramString, paramBoolean, 0);
  }
  
  public void executeLoginRunnable(MyActivity paramMyActivity, Runnable paramRunnable, String paramString, boolean paramBoolean, int paramInt)
  {
    executeLoginRunnable(paramMyActivity, paramRunnable, paramString, paramBoolean, paramInt);
  }
  
  public void executeLoginRunnable(final IMyActivity paramIMyActivity, final Runnable paramRunnable, final String paramString, final boolean paramBoolean, final int paramInt)
  {
    if (paramIMyActivity == null) {}
    do
    {
      return;
      if (!hasLogin())
      {
        String str1 = SafetyManager.getUserName();
        String str2 = SafetyManager.getPassword();
        if ((SafetyManager.isRemember()) && (!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
        {
          isAutoRetryLogin = false;
          loginRequest(paramIMyActivity, str1, str2, false, true, new LoginUserBase.LoginRequestListener()
          {
            public void onLoginError(int paramAnonymousInt, String paramAnonymousString)
            {
              LoginUser.this.startLoginActivity(paramIMyActivity, paramString, paramBoolean, paramInt);
              LoginUser.loginCallback(paramIMyActivity, paramRunnable);
            }
            
            public void onLoginSuccess(String paramAnonymousString)
            {
              if (paramRunnable != null) {
                paramRunnable.run();
              }
            }
          });
          return;
        }
        startLoginActivity(paramIMyActivity, paramString, paramBoolean, paramInt);
        loginCallback(paramIMyActivity, paramRunnable);
        return;
      }
    } while (paramRunnable == null);
    paramRunnable.run();
  }
  
  public void homeAutoLogin(MyActivity paramMyActivity, LoginUserBase.LoginListener paramLoginListener, int paramInt)
  {
    homeAutoLogin(paramMyActivity, paramLoginListener, paramInt);
  }
  
  public void homeAutoLogin(final IMyActivity paramIMyActivity, final LoginUserBase.LoginListener paramLoginListener, int paramInt)
  {
    if (SafetyManager.isRemember())
    {
      final String str1 = SafetyManager.getUserName();
      final String str2 = SafetyManager.getPassword();
      if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
      {
        final boolean bool = isWidgetStart(paramInt);
        if ((paramLoginListener != null) && (bool)) {
          paramLoginListener.loginCompletedNotify();
        }
        loginRequest(paramIMyActivity, str1, str2, false, false, new LoginUserBase.LoginRequestListener()
        {
          private final int MAX_RETRY_TIME = 3;
          private final long RETRY_INTERVAL_TIME = 5000L;
          private int retryTime = 0;
          
          public void onLoginError(int paramAnonymousInt, String paramAnonymousString)
          {
            if ((paramLoginListener != null) && (!bool) && (this.retryTime == 0)) {
              paramLoginListener.loginCompletedNotify();
            }
            if ((LoginUser.isAutoRetryLogin) && (paramAnonymousInt == 1) && (this.retryTime < 3)) {
              this.retryTime = (1 + this.retryTime);
            }
            try
            {
              Thread.sleep(5000L);
              label65:
              if (LoginUser.isAutoRetryLogin) {
                LoginUser.loginRequest(paramIMyActivity, str1, str2, false, false, this);
              }
              return;
            }
            catch (InterruptedException localInterruptedException)
            {
              break label65;
            }
          }
          
          public void onLoginSuccess(String paramAnonymousString)
          {
            if ((paramLoginListener != null) && (!bool) && (this.retryTime == 0)) {
              paramLoginListener.loginCompletedNotify();
            }
          }
        });
      }
      return;
    }
    paramLoginListener.loginCompletedNotify();
  }
  
  public boolean isWidgetStart(int paramInt)
  {
    return (paramInt == 3) || (paramInt == 10) || (paramInt == 11) || (paramInt == 12) || (paramInt == 7);
  }
  
  public void startLoginActivity(final IMyActivity paramIMyActivity, final String paramString, final boolean paramBoolean, final int paramInt)
  {
    if (!TextUtils.isEmpty(paramString)) {
      paramIMyActivity.post(new Runnable()
      {
        public void run()
        {
          Toast.makeText(paramIMyActivity.getThisActivity(), paramString, 0).show();
        }
      });
    }
    final Intent localIntent = new Intent(paramIMyActivity.getThisActivity(), LoginActivity.class);
    localIntent.putExtra("com.360buy:singleInstanceFlag", true);
    paramIMyActivity.post(new Runnable()
    {
      public void run()
      {
        if (paramInt > 0)
        {
          paramIMyActivity.getThisActivity().startActivityForResult(localIntent, paramInt);
          return;
        }
        if (paramBoolean)
        {
          localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
          paramIMyActivity.startActivityInFrame(localIntent);
          return;
        }
        paramIMyActivity.getThisActivity().startActivity(localIntent);
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.LoginUser
 * JD-Core Version:    0.7.0.1
 */