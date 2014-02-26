package com.jingdong.app.lib.pay.web;

import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.util.AttributeSet;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.jd.lottery.lib.R.string;
import com.jingdong.app.lib.base.view.JDWebView;

public class PayWebView
  extends JDWebView
{
  private static final String TAG = "com.jingdong.app.lib.pay.web.PayWebView";
  private PayWebViewCallBack callBack;
  private ProgressDialog mProgressDialog;
  
  public PayWebView(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public PayWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public PayWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  /* Error */
  public static String getHostCookie()
  {
    // Byte code:
    //   0: ldc 48
    //   2: invokestatic 54	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore_1
    //   6: aload_1
    //   7: ldc 56
    //   9: iconst_0
    //   10: anewarray 50	java/lang/Class
    //   13: invokevirtual 60	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   16: astore_3
    //   17: aload_3
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 66	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   23: checkcast 68	java/lang/String
    //   26: astore 7
    //   28: aload 7
    //   30: areturn
    //   31: astore 6
    //   33: aload 6
    //   35: invokevirtual 71	java/lang/IllegalArgumentException:printStackTrace	()V
    //   38: aconst_null
    //   39: areturn
    //   40: astore_2
    //   41: aload_2
    //   42: invokevirtual 72	java/lang/NoSuchMethodException:printStackTrace	()V
    //   45: aconst_null
    //   46: areturn
    //   47: astore_0
    //   48: aload_0
    //   49: invokevirtual 73	java/lang/ClassNotFoundException:printStackTrace	()V
    //   52: aconst_null
    //   53: areturn
    //   54: astore 5
    //   56: aload 5
    //   58: invokevirtual 74	java/lang/IllegalAccessException:printStackTrace	()V
    //   61: aconst_null
    //   62: areturn
    //   63: astore 4
    //   65: aload 4
    //   67: invokevirtual 75	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   70: aconst_null
    //   71: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   47	2	0	localClassNotFoundException	java.lang.ClassNotFoundException
    //   5	2	1	localClass	java.lang.Class
    //   40	2	2	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   16	2	3	localMethod	java.lang.reflect.Method
    //   63	3	4	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   54	3	5	localIllegalAccessException	java.lang.IllegalAccessException
    //   31	3	6	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   26	3	7	str	String
    // Exception table:
    //   from	to	target	type
    //   17	28	31	java/lang/IllegalArgumentException
    //   6	17	40	java/lang/NoSuchMethodException
    //   17	28	40	java/lang/NoSuchMethodException
    //   33	38	40	java/lang/NoSuchMethodException
    //   56	61	40	java/lang/NoSuchMethodException
    //   65	70	40	java/lang/NoSuchMethodException
    //   0	6	47	java/lang/ClassNotFoundException
    //   6	17	47	java/lang/ClassNotFoundException
    //   17	28	47	java/lang/ClassNotFoundException
    //   33	38	47	java/lang/ClassNotFoundException
    //   41	45	47	java/lang/ClassNotFoundException
    //   56	61	47	java/lang/ClassNotFoundException
    //   65	70	47	java/lang/ClassNotFoundException
    //   17	28	54	java/lang/IllegalAccessException
    //   17	28	63	java/lang/reflect/InvocationTargetException
  }
  
  /* Error */
  public static String getHostDeviceInfo()
  {
    // Byte code:
    //   0: ldc 78
    //   2: invokestatic 54	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore_1
    //   6: aload_1
    //   7: ldc 80
    //   9: iconst_0
    //   10: anewarray 50	java/lang/Class
    //   13: invokevirtual 60	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   16: astore_3
    //   17: aload_3
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 66	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   23: checkcast 68	java/lang/String
    //   26: astore 7
    //   28: aload 7
    //   30: areturn
    //   31: astore 6
    //   33: aload 6
    //   35: invokevirtual 71	java/lang/IllegalArgumentException:printStackTrace	()V
    //   38: aconst_null
    //   39: areturn
    //   40: astore_2
    //   41: aload_2
    //   42: invokevirtual 72	java/lang/NoSuchMethodException:printStackTrace	()V
    //   45: aconst_null
    //   46: areturn
    //   47: astore_0
    //   48: aload_0
    //   49: invokevirtual 73	java/lang/ClassNotFoundException:printStackTrace	()V
    //   52: aconst_null
    //   53: areturn
    //   54: astore 5
    //   56: aload 5
    //   58: invokevirtual 74	java/lang/IllegalAccessException:printStackTrace	()V
    //   61: aconst_null
    //   62: areturn
    //   63: astore 4
    //   65: aload 4
    //   67: invokevirtual 75	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   70: aconst_null
    //   71: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   47	2	0	localClassNotFoundException	java.lang.ClassNotFoundException
    //   5	2	1	localClass	java.lang.Class
    //   40	2	2	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   16	2	3	localMethod	java.lang.reflect.Method
    //   63	3	4	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   54	3	5	localIllegalAccessException	java.lang.IllegalAccessException
    //   31	3	6	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   26	3	7	str	String
    // Exception table:
    //   from	to	target	type
    //   17	28	31	java/lang/IllegalArgumentException
    //   6	17	40	java/lang/NoSuchMethodException
    //   17	28	40	java/lang/NoSuchMethodException
    //   33	38	40	java/lang/NoSuchMethodException
    //   56	61	40	java/lang/NoSuchMethodException
    //   65	70	40	java/lang/NoSuchMethodException
    //   0	6	47	java/lang/ClassNotFoundException
    //   6	17	47	java/lang/ClassNotFoundException
    //   17	28	47	java/lang/ClassNotFoundException
    //   33	38	47	java/lang/ClassNotFoundException
    //   41	45	47	java/lang/ClassNotFoundException
    //   56	61	47	java/lang/ClassNotFoundException
    //   65	70	47	java/lang/ClassNotFoundException
    //   17	28	54	java/lang/IllegalAccessException
    //   17	28	63	java/lang/reflect/InvocationTargetException
  }
  
  protected void init()
  {
    this.mProgressDialog = new ProgressDialog(getContext());
    this.mProgressDialog.setProgressStyle(0);
    this.mProgressDialog.setMessage(getContext().getString(R.string.loading));
    this.mProgressDialog.setCanceledOnTouchOutside(false);
    getSettings().setJavaScriptEnabled(true);
    setWebViewClient(new checkUrl());
  }
  
  public void setCallBack(PayWebViewCallBack paramPayWebViewCallBack)
  {
    this.callBack = paramPayWebViewCallBack;
  }
  
  protected class checkUrl
    extends WebViewClient
  {
    protected checkUrl() {}
    
    private boolean checkUrl2(Uri paramUri)
    {
      String str = paramUri.getScheme();
      if ((!str.equals("http")) && (!str.equals("https")))
      {
        if (PayWebView.this.callBack != null) {
          return PayWebView.this.callBack.onLoadSpecialUrl(paramUri.toString());
        }
        return true;
      }
      return false;
    }
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      if (PayWebView.this.mProgressDialog.isShowing()) {
        PayWebView.this.mProgressDialog.dismiss();
      }
      super.onPageFinished(paramWebView, paramString);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      if (!PayWebView.this.mProgressDialog.isShowing()) {
        PayWebView.this.mProgressDialog.show();
      }
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    }
    
    public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
    {
      paramSslErrorHandler.proceed();
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if (checkUrl2(Uri.parse(paramString))) {
        return true;
      }
      return super.shouldOverrideUrlLoading(paramWebView, paramString);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.lib.pay.web.PayWebView
 * JD-Core Version:    0.7.0.1
 */