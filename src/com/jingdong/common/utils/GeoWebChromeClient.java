package com.jingdong.common.utils;

import android.webkit.GeolocationPermissions.Callback;
import android.webkit.WebChromeClient;

public class GeoWebChromeClient
  extends WebChromeClient
{
  public void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
  {
    paramCallback.invoke(paramString, true, false);
    super.onGeolocationPermissionsShowPrompt(paramString, paramCallback);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.GeoWebChromeClient
 * JD-Core Version:    0.7.0.1
 */