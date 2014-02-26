package com.jingdong.app.lib.base.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.jd.droidlib.net.http.HTTPException;
import com.jd.droidlib.net.http.RESTClient2;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jingdong.app.lib.pay.PayCallBack;
import com.jingdong.app.lib.pay.PayUtils;
import com.jingdong.app.lib.pay.web.PayWebView;
import com.jingdong.app.lib.pay.web.PayWebViewCallBack;
import com.jingdong.app.lib.pay.web.TokenRequest;
import org.json.JSONException;
import org.json.JSONObject;

public class JDActivity
  extends Activity
{
  protected FrameLayout mLayout;
  private String xml = null;
  
  private void showDialog(final String paramString)
  {
    DialogController local3 = new DialogController()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        case -1: 
          PayUtils.doPay(JDActivity.this, paramString);
          return;
        }
        Intent localIntent = new Intent();
        JDActivity.this.setResult(0, localIntent);
        JDActivity.this.finish();
      }
    };
    local3.setTitle("提示");
    local3.setMessage("支付失败，是否重试？");
    local3.setPositiveButton("是");
    local3.setNegativeButton("否");
    local3.setCanceledOnTouchOutside(false);
    local3.init(this);
    local3.show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    PayWebView localPayWebView = new PayWebView(this);
    localPayWebView.setCallBack(new PayWebViewCallBack()
    {
      public boolean onLoadSpecialUrl(final String paramAnonymousString)
      {
        new Thread(new Runnable()
        {
          public void run()
          {
            for (;;)
            {
              JSONObject localJSONObject3;
              JSONObject localJSONObject4;
              try
              {
                JSONObject localJSONObject1 = new JSONObject(Uri.parse(paramAnonymousString).getQueryParameter("params"));
                JSONObject localJSONObject2 = new JSONObject();
                localJSONObject2.put("tokenKey", localJSONObject1.getString("tokenKey"));
                String str1 = PayWebView.getHostCookie();
                String str2 = PayWebView.getHostDeviceInfo();
                Uri localUri1 = TokenRequest.getUriFromJson(str2, "getToken", localJSONObject2.toString());
                localRESTClient2 = new RESTClient2(JDActivity.this);
                localRESTClient2.setCookie(str1);
                try
                {
                  JSONObject localJSONObject6 = localRESTClient2.getJSONObject(localUri1.toString());
                  localObject = localJSONObject6;
                }
                catch (HTTPException localHTTPException1)
                {
                  Uri localUri2;
                  JSONObject localJSONObject5;
                  localHTTPException1.printStackTrace();
                  Object localObject = null;
                  continue;
                }
                localJSONObject3 = ((JSONObject)localObject).getJSONObject("tokenValue");
                localJSONObject4 = new JSONObject();
                localJSONObject4.put("action", localJSONObject3.getString("action"));
                localJSONObject4.put("pin", localJSONObject3.getString("pin"));
                localJSONObject4.put("orderId", localJSONObject3.getString("orderId"));
                if (!localJSONObject3.has("plat"))
                {
                  localJSONObject4.put("plat", "mobile");
                  localUri2 = TokenRequest.getUriFromJson(str2, "jdMPay", localJSONObject4.toString());
                }
              }
              catch (JSONException localJSONException)
              {
                RESTClient2 localRESTClient2;
                localJSONException.printStackTrace();
                return;
              }
              try
              {
                localJSONObject5 = localRESTClient2.getJSONObject(localUri2.toString());
                localObject = localJSONObject5;
              }
              catch (HTTPException localHTTPException2)
              {
                localHTTPException2.printStackTrace();
                continue;
              }
              JDActivity.this.xml = ((JSONObject)localObject).getString("message");
              PayUtils.doPay(JDActivity.this, JDActivity.this.xml);
              return;
              localJSONObject4.put("plat", localJSONObject3.getString("plat"));
            }
          }
        }).start();
        JDActivity.this.mLayout.removeAllViews();
        return false;
      }
    });
    setContentView(R.layout.pay_main);
    this.mLayout = ((FrameLayout)findViewById(R.id.pay_main));
    this.mLayout.addView(localPayWebView);
    localPayWebView.loadUrl(getIntent().getStringExtra("url"));
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.xml != null) {
      PayUtils.processPayResult(new PayCallBack()
      {
        public void onPayFail()
        {
          JDActivity.this.showDialog(JDActivity.this.xml);
        }
        
        public void onPaySuccess()
        {
          Intent localIntent = new Intent();
          JDActivity.this.setResult(-1, localIntent);
          JDActivity.this.finish();
        }
      });
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.lib.base.activity.JDActivity
 * JD-Core Version:    0.7.0.1
 */