package com.ja.analytics.net;

import org.json.JSONObject;

public abstract interface HttpCallBackListener
{
  public abstract void onEnd(JSONObject paramJSONObject)
    throws Exception;
  
  public abstract void onError(String paramString, JSONObject paramJSONObject)
    throws Exception;
  
  public abstract void onStart(String paramString, JSONObject paramJSONObject)
    throws Exception;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.net.HttpCallBackListener
 * JD-Core Version:    0.7.0.1
 */