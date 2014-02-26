package com.jingdong.common.utils;

import android.webkit.WebSettings;

public class WebSettingsUtils
{
  public void setGeolocationEnabled(WebSettings paramWebSettings)
  {
    if (paramWebSettings != null) {
      paramWebSettings.setGeolocationEnabled(true);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.WebSettingsUtils
 * JD-Core Version:    0.7.0.1
 */