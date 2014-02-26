package com.ja.analytics;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.ja.analytics.logevent.EventLog;
import com.ja.analytics.utils.LogUtil;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class MobclickAgentJSInterface
{
  private Context context;
  
  public MobclickAgentJSInterface(Context paramContext, WebView paramWebView)
  {
    this.context = paramContext;
    paramWebView.getSettings().setJavaScriptEnabled(true);
    paramWebView.setWebChromeClient(new MobclickAgentWebChromeClient(null));
  }
  
  public MobclickAgentJSInterface(Context paramContext, WebView paramWebView, WebChromeClient paramWebChromeClient)
  {
    this.context = paramContext;
    paramWebView.getSettings().setJavaScriptEnabled(true);
    paramWebView.setWebChromeClient(new MobclickAgentWebChromeClient(paramWebChromeClient));
  }
  
  static Context getContext(MobclickAgentJSInterface paramMobclickAgentJSInterface)
  {
    return paramMobclickAgentJSInterface.context;
  }
  
  final class MobclickAgentWebChromeClient
    extends WebChromeClient
  {
    private final String TAG = MobclickAgentJSInterface.class.getName();
    final MobclickAgentJSInterface objMobclickAgentJSInterface = MobclickAgentJSInterface.this;
    WebChromeClient objWebChromeClient = null;
    private final String type_EKV = "evm";
    private final String type_EVENT = "event";
    
    public MobclickAgentWebChromeClient(WebChromeClient paramWebChromeClient)
    {
      if (paramWebChromeClient == null)
      {
        this.objWebChromeClient = new WebChromeClient();
        return;
      }
      this.objWebChromeClient = paramWebChromeClient;
    }
    
    public void onCloseWindow(WebView paramWebView)
    {
      this.objWebChromeClient.onCloseWindow(paramWebView);
    }
    
    public boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
    {
      return this.objWebChromeClient.onCreateWindow(paramWebView, paramBoolean1, paramBoolean2, paramMessage);
    }
    
    public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
    {
      return this.objWebChromeClient.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
    }
    
    public boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
    {
      return this.objWebChromeClient.onJsBeforeUnload(paramWebView, paramString1, paramString2, paramJsResult);
    }
    
    public boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
    {
      return this.objWebChromeClient.onJsConfirm(paramWebView, paramString1, paramString2, paramJsResult);
    }
    
    public boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
    {
      if ("evm".equals(paramString2)) {}
      for (;;)
      {
        try
        {
          localJSONObject3 = new JSONObject(paramString3);
          localHashMap = new HashMap();
          String str1 = (String)localJSONObject3.remove("id");
          if (!localJSONObject3.isNull("duration")) {
            continue;
          }
          i = 0;
          localIterator = localJSONObject3.keys();
          if (localIterator.hasNext()) {
            continue;
          }
          EventLog.getSingleton().compositeEVMEventLog(MobclickAgentJSInterface.getContext(this.objMobclickAgentJSInterface), str1, localHashMap, i);
        }
        catch (Exception localException2)
        {
          JSONObject localJSONObject3;
          HashMap localHashMap;
          int i;
          Iterator localIterator;
          String str2;
          continue;
        }
        paramJsPromptResult.confirm();
        return true;
        i = ((Integer)localJSONObject3.remove("duration")).intValue();
        continue;
        str2 = (String)localIterator.next();
        localHashMap.put(str2, localJSONObject3.getString(str2));
        continue;
        if ("event".equals(paramString2)) {}
        try
        {
          JSONObject localJSONObject1 = new JSONObject(paramString3);
          new JSONObject();
          JSONObject localJSONObject2 = EventLog.getSingleton().onEventLogDuration(MobclickAgentJSInterface.getContext(this.objMobclickAgentJSInterface), localJSONObject1.getString("tag"), localJSONObject1.optString("label"), localJSONObject1.optInt("duration"));
          if ((localJSONObject2 != null) || (localJSONObject2.length() != 0))
          {
            EventLog.getSingleton().writeEventLogToDatabase(MobclickAgentJSInterface.this.context, localJSONObject2);
            continue;
          }
          LogUtil.logD(this.TAG, "onEventLogDuration(), There is no data!!");
        }
        catch (Exception localException1) {}
        return this.objWebChromeClient.onJsPrompt(paramWebView, paramString1, paramString2, paramString3, paramJsPromptResult);
      }
    }
    
    public void onProgressChanged(WebView paramWebView, int paramInt)
    {
      this.objWebChromeClient.onProgressChanged(paramWebView, paramInt);
    }
    
    public void onReceivedIcon(WebView paramWebView, Bitmap paramBitmap)
    {
      this.objWebChromeClient.onReceivedIcon(paramWebView, paramBitmap);
    }
    
    public void onReceivedTitle(WebView paramWebView, String paramString)
    {
      this.objWebChromeClient.onReceivedTitle(paramWebView, paramString);
    }
    
    public void onRequestFocus(WebView paramWebView)
    {
      this.objWebChromeClient.onRequestFocus(paramWebView);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.MobclickAgentJSInterface
 * JD-Core Version:    0.7.0.1
 */