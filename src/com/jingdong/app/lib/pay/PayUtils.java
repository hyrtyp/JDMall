package com.jingdong.app.lib.pay;

import android.content.Intent;
import android.os.Bundle;
import com.jingdong.app.lib.base.activity.JDActivity;
import com.unionpay.upomp.bypay.activity.SplashActivity;
import com.unionpay.upomp.bypay.util.UPOMP;
import com.unionpay.upomp.bypay.util.Utils;

public class PayUtils
{
  private static final String TAG = "com.jingdong.app.lib.pay.PayUtils";
  
  public static void doPay(JDActivity paramJDActivity, String paramString)
  {
    Utils.setPackageName(paramJDActivity.getPackageName());
    UPOMP.init();
    Intent localIntent = new Intent(paramJDActivity, SplashActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("xml", paramString);
    localIntent.putExtras(localBundle);
    paramJDActivity.startActivity(localIntent);
  }
  
  public static void processPayResult(PayCallBack paramPayCallBack)
  {
    String str = UPOMP.getPayResult();
    if ((str != null) && (str.contains("<respCode>0000</respCode>"))) {
      if (paramPayCallBack != null) {
        paramPayCallBack.onPaySuccess();
      }
    }
    while (paramPayCallBack == null) {
      return;
    }
    paramPayCallBack.onPayFail();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.lib.pay.PayUtils
 * JD-Core Version:    0.7.0.1
 */