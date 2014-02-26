package com.jingdong.common.utils;

import android.content.Context;
import android.content.Intent;
import com.jingdong.common.frame.IMyActivity;

public abstract interface ICommon
{
  public abstract void backToHomePage(Context paramContext);
  
  public abstract boolean checkSDKForPay();
  
  public abstract void doPay(String paramString);
  
  public abstract void forwardWebActivity(IMyActivity paramIMyActivity, String paramString);
  
  public abstract void forwardWebActivity(IMyActivity paramIMyActivity, String paramString, URLParamMap paramURLParamMap);
  
  public abstract void forwardWebActivity(IMyActivity paramIMyActivity, String paramString, URLParamMap paramURLParamMap, boolean paramBoolean);
  
  public abstract void forwardWebActivity(IMyActivity paramIMyActivity, String paramString1, String paramString2, boolean paramBoolean, String paramString3);
  
  public abstract void forwardWebActivityForAction(Context paramContext, String paramString, URLParamMap paramURLParamMap);
  
  public abstract void forwardWebActivityWithWidget(IMyActivity paramIMyActivity, String paramString);
  
  public abstract void goToShoppingCartPage(Context paramContext, boolean paramBoolean);
  
  public abstract void sendCustomBroadcast(Context paramContext, int paramInt);
  
  public abstract void startActivityInFrame(Context paramContext, Intent paramIntent);
  
  public abstract void toClient(String paramString);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ICommon
 * JD-Core Version:    0.7.0.1
 */