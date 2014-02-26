package com.jingdong.app.lib.pay.web;

import com.jingdong.app.lib.base.callback.JDCallBack;

public abstract interface PayWebViewCallBack
  extends JDCallBack
{
  public abstract boolean onLoadSpecialUrl(String paramString);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.lib.pay.web.PayWebViewCallBack
 * JD-Core Version:    0.7.0.1
 */