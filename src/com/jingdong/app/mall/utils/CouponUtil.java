package com.jingdong.app.mall.utils;

import android.content.Intent;
import android.text.TextUtils;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.URLParamMap;

public class CouponUtil
{
  private static final String TAG = "CouponUtil";
  
  public static void queryTakeCoupon(final MyActivity paramMyActivity, String paramString1, String paramString2, final String paramString3)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("jdHomeShowItem");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("subItemList");
        if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
        {
          JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(0);
          final String str1 = localJSONObjectProxy.getStringOrNull("url");
          final String str2 = localJSONObjectProxy.getStringOrNull("functionId");
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
            paramMyActivity.post(new Runnable()
            {
              public void run()
              {
                com.jingdong.app.mall.personel.MyCouponAndGiftCardActivity.isBindGiftCardBack = true;
                URLParamMap localURLParamMap = new URLParamMap();
                String str = str1;
                if ("coupon".equals(this.val$param)) {
                  str = str + "?jshopURIID=" + this.val$couponURL;
                }
                localURLParamMap.put("to", str);
                CommonUtil.queryBrowserUrl(str2, localURLParamMap, new CommonBase.BrowserUrlListener()
                {
                  public void onComplete(final String paramAnonymous3String)
                  {
                    this.val$myActivity.post(new Runnable()
                    {
                      public void run()
                      {
                        Intent localIntent = new Intent(this.val$myActivity, WebActivity.class);
                        localIntent.putExtra("url", paramAnonymous3String);
                        this.val$myActivity.startActivity(localIntent);
                      }
                    });
                  }
                });
              }
            });
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("type", CouponUtil.this);
      }
    });
    localHttpSetting.setNotifyUser(true);
    paramMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.CouponUtil
 * JD-Core Version:    0.7.0.1
 */