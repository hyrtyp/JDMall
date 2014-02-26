package com.jingdong.app.lib.pay;

import com.jingdong.app.lib.base.callback.JDCallBack;

public abstract interface PayCallBack
  extends JDCallBack
{
  public abstract void onPayFail();
  
  public abstract void onPaySuccess();
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.lib.pay.PayCallBack
 * JD-Core Version:    0.7.0.1
 */