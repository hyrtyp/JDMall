package com.jingdong.common.utils.pay;

import android.app.Activity;

public class PayUtils
{
  private static IPay iPay;
  
  public static void doPay(Activity paramActivity, String paramString)
  {
    if (iPay != null) {
      iPay.doPay(paramActivity, paramString);
    }
  }
  
  public static void setPay(IPay paramIPay)
  {
    iPay = paramIPay;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.pay.PayUtils
 * JD-Core Version:    0.7.0.1
 */