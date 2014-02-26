package com.jingdong.common.ui;

import android.webkit.WebSettings;
import android.webkit.WebView;

public class WebUtils
{
  public static void setNoCache(WebView paramWebView)
  {
    if (paramWebView == null) {
      return;
    }
    paramWebView.getSettings().setAppCacheEnabled(false);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.WebUtils
 * JD-Core Version:    0.7.0.1
 */