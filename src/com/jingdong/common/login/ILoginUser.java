package com.jingdong.common.login;

import com.jingdong.common.frame.IMyActivity;

public abstract interface ILoginUser
{
  public abstract void executeLoginRunnable(IMyActivity paramIMyActivity, Runnable paramRunnable, String paramString, boolean paramBoolean, int paramInt);
  
  public abstract void homeAutoLogin(IMyActivity paramIMyActivity, LoginUserBase.LoginListener paramLoginListener, int paramInt);
  
  public abstract boolean isWidgetStart(int paramInt);
  
  public abstract void startLoginActivity(IMyActivity paramIMyActivity, String paramString, boolean paramBoolean, int paramInt);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.login.ILoginUser
 * JD-Core Version:    0.7.0.1
 */