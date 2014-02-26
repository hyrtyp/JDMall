package com.ja.sdk.net;

import org.json.JSONArray;

public abstract interface HttpCallBackListener
{
  public abstract void onEnd(JSONArray paramJSONArray)
    throws Exception;
  
  public abstract void onError(String paramString, JSONArray paramJSONArray)
    throws Exception;
  
  public abstract void onStart(String paramString, JSONArray paramJSONArray)
    throws Exception;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.net.HttpCallBackListener
 * JD-Core Version:    0.7.0.1
 */