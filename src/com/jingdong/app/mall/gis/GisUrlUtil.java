package com.jingdong.app.mall.gis;

import android.graphics.Bitmap;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.DownloadListener;
import android.webkit.HttpAuthHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DefaultEffectHandle;
import com.jingdong.common.utils.URLParamMap;

public class GisUrlUtil
{
  public static final String GIS_GET_CK_TO_PSZ_URL = "getcktopsztracks";
  public static final String GIS_GET_DRIVER_PATH_URL = "getdriverpath";
  public static final String GIS_GET_ORDERS_URL = "getOrders";
  public static final String GIS_GET_ORDER_TRACE_URL = "getordertracks";
  public static final String GIS_GET_STATE_TMIE_URL = "getOrderstate";
  public static final String GIS_ORDERS_WANGCHENG_URL = "orderwancheng";
  public String ckTozhandianLine;
  public String ckTozhangdianDriverLine;
  private final DefaultEffectHandle defaultEffectHandle;
  public String lastStartTime;
  private ProgressBar mMapLoadProgress = null;
  private Button mapButton;
  private RelativeLayout mapVersion;
  private MyActivity myActivity;
  private String orderId;
  private boolean orderTraceInitFlag = false;
  private LinearLayout radioGroup;
  private Button textButton;
  private ScrollView textVersion;
  private String uKey;
  private WebView webView;
  public String zhandianToCustomerDriverLine;
  public String zhandianToCustomerLine;
  
  public GisUrlUtil(MyActivity paramMyActivity, String paramString1, String paramString2)
  {
    this.orderId = paramString1;
    this.uKey = paramString2;
    this.myActivity = paramMyActivity;
    this.defaultEffectHandle = new DefaultEffectHandle(paramMyActivity);
    findView();
    initWebView();
    this.radioGroup.setVisibility(0);
    initEvent();
  }
  
  private void findView()
  {
    this.textVersion = ((ScrollView)this.myActivity.findViewById(2131493804));
    this.mapVersion = ((RelativeLayout)this.myActivity.findViewById(2131493895));
    this.radioGroup = ((LinearLayout)this.myActivity.findViewById(2131493892));
    this.webView = ((WebView)this.myActivity.findViewById(2131493896));
    this.textButton = ((Button)this.radioGroup.findViewById(2131493893));
    this.mapButton = ((Button)this.radioGroup.findViewById(2131493894));
    this.textButton.setSelected(true);
    this.mMapLoadProgress = ((ProgressBar)this.myActivity.findViewById(2131493897));
  }
  
  private void initEvent()
  {
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (paramAnonymousView == GisUrlUtil.this.mapButton)
        {
          GisUrlUtil.this.textVersion.setVisibility(8);
          GisUrlUtil.this.mapVersion.setVisibility(0);
          GisUrlUtil.this.textButton.setSelected(false);
          GisUrlUtil.this.mapButton.setSelected(true);
          if (!GisUrlUtil.this.orderTraceInitFlag)
          {
            GisUrlUtil.this.orderTraceInitFlag = true;
            GisUrlUtil.this.show();
          }
          return;
        }
        GisUrlUtil.this.textVersion.setVisibility(0);
        GisUrlUtil.this.mapVersion.setVisibility(8);
        GisUrlUtil.this.textButton.setSelected(true);
        GisUrlUtil.this.mapButton.setSelected(false);
      }
    };
    this.mapButton.setOnClickListener(local1);
    this.textButton.setOnClickListener(local1);
  }
  
  private void initWebView()
  {
    this.webView.setWebViewClient(new WebViewClient()
    {
      public void doUpdateVisitedHistory(WebView paramAnonymousWebView, String paramAnonymousString, boolean paramAnonymousBoolean)
      {
        super.doUpdateVisitedHistory(paramAnonymousWebView, paramAnonymousString, paramAnonymousBoolean);
      }
      
      public void onFormResubmission(WebView paramAnonymousWebView, Message paramAnonymousMessage1, Message paramAnonymousMessage2)
      {
        super.onFormResubmission(paramAnonymousWebView, paramAnonymousMessage1, paramAnonymousMessage2);
      }
      
      public void onLoadResource(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onLoadResource(paramAnonymousWebView, paramAnonymousString);
      }
      
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        GisUrlUtil.this.defaultEffectHandle.removeModal();
        GisUrlUtil.this.mMapLoadProgress.setVisibility(8);
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
      }
      
      public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        try
        {
          
          label3:
          super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
          return;
        }
        catch (Exception localException)
        {
          break label3;
        }
      }
      
      public void onReceivedHttpAuthRequest(WebView paramAnonymousWebView, HttpAuthHandler paramAnonymousHttpAuthHandler, String paramAnonymousString1, String paramAnonymousString2)
      {
        super.onReceivedHttpAuthRequest(paramAnonymousWebView, paramAnonymousHttpAuthHandler, paramAnonymousString1, paramAnonymousString2);
      }
      
      public void onScaleChanged(WebView paramAnonymousWebView, float paramAnonymousFloat1, float paramAnonymousFloat2)
      {
        super.onScaleChanged(paramAnonymousWebView, paramAnonymousFloat1, paramAnonymousFloat2);
      }
      
      public void onTooManyRedirects(WebView paramAnonymousWebView, Message paramAnonymousMessage1, Message paramAnonymousMessage2)
      {
        super.onTooManyRedirects(paramAnonymousWebView, paramAnonymousMessage1, paramAnonymousMessage2);
      }
      
      public void onUnhandledKeyEvent(WebView paramAnonymousWebView, KeyEvent paramAnonymousKeyEvent)
      {
        super.onUnhandledKeyEvent(paramAnonymousWebView, paramAnonymousKeyEvent);
      }
      
      public boolean shouldOverrideKeyEvent(WebView paramAnonymousWebView, KeyEvent paramAnonymousKeyEvent)
      {
        return super.shouldOverrideKeyEvent(paramAnonymousWebView, paramAnonymousKeyEvent);
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        return super.shouldOverrideUrlLoading(paramAnonymousWebView, paramAnonymousString);
      }
    });
    this.webView.getSettings().setJavaScriptEnabled(true);
  }
  
  private void show()
  {
    this.mMapLoadProgress.setVisibility(0);
    DownloadListener local3 = new DownloadListener()
    {
      public void onDownloadStart(String paramAnonymousString1, String paramAnonymousString2, String paramAnonymousString3, String paramAnonymousString4, long paramAnonymousLong) {}
    };
    this.webView.setDownloadListener(local3);
    URLParamMap localURLParamMap = new URLParamMap();
    localURLParamMap.put("ukey", this.uKey);
    localURLParamMap.put("orderId", this.orderId);
    CommonUtil.queryBrowserUrl("ordermap", localURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        GisUrlUtil.this.myActivity.post(new Runnable()
        {
          public void run()
          {
            GisUrlUtil.this.webView.loadUrl(paramAnonymousString);
          }
        });
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.gis.GisUrlUtil
 * JD-Core Version:    0.7.0.1
 */