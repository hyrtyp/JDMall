package com.jingdong.app.mall.utils.pay;

import android.app.Activity;
import android.content.Intent;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.common.utils.pay.IPay;

public class JDPay
  implements IPay
{
  public void doPay(final Activity paramActivity, String paramString)
  {
    URLParamMap localURLParamMap = new URLParamMap();
    localURLParamMap.put("orderId", paramString);
    CommonUtil.queryBrowserUrl("pay", localURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        paramActivity.runOnUiThread(new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(this.val$activity, WebActivity.class);
            localIntent.putExtra("url", paramAnonymousString);
            localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
            CommonUtil.getInstance().startActivityInFrame(this.val$activity, localIntent);
          }
        });
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.pay.JDPay
 * JD-Core Version:    0.7.0.1
 */