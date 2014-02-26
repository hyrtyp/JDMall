package com.jd.droidlib.net.http;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RESTClient2
  extends RESTClient
{
  public RESTClient2(Context paramContext)
  {
    super(paramContext);
  }
  
  public RESTClient2(Context paramContext, String paramString, boolean paramBoolean)
  {
    super(paramContext, paramString, paramBoolean);
  }
  
  public JSONArray getJSONArray(String paramString)
    throws HTTPException
  {
    String str = get(paramString).body;
    try
    {
      JSONArray localJSONArray = new JSONArray(str);
      return localJSONArray;
    }
    catch (JSONException localJSONException)
    {
      throw new HTTPException(localJSONException);
    }
  }
  
  public JSONObject getJSONObject(String paramString)
    throws HTTPException
  {
    String str = get(paramString).body;
    try
    {
      JSONObject localJSONObject = new JSONObject(str);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      throw new HTTPException(localJSONException);
    }
  }
  
  public HTTPResponse post(String paramString1, String paramString2)
    throws HTTPException
  {
    return post(paramString1, "text/plain", paramString2);
  }
  
  public HTTPResponse post(String paramString, Map<String, String> paramMap)
    throws HTTPException
  {
    Uri.Builder localBuilder = new Uri.Builder();
    Iterator localIterator = paramMap.keySet().iterator();
    if (!localIterator.hasNext()) {
      return post(paramString, "application/x-www-form-urlencoded", localBuilder.build().getQuery());
    }
    String str1 = (String)localIterator.next();
    String str2 = (String)paramMap.get(str1);
    if (str2 != null) {}
    for (;;)
    {
      localBuilder.appendQueryParameter(str1, str2);
      break;
      str2 = "";
    }
  }
  
  public HTTPResponse post(String paramString, JSONArray paramJSONArray)
    throws HTTPException
  {
    return post(paramString, "application/json", paramJSONArray.toString());
  }
  
  public HTTPResponse post(String paramString, JSONObject paramJSONObject)
    throws HTTPException
  {
    return post(paramString, "application/json", paramJSONObject.toString());
  }
  
  public HTTPResponse put(String paramString1, String paramString2)
    throws HTTPException
  {
    return put(paramString1, "text/plain", paramString2);
  }
  
  public HTTPResponse put(String paramString, JSONArray paramJSONArray)
    throws HTTPException
  {
    return put(paramString, "application/json", paramJSONArray.toString());
  }
  
  public HTTPResponse put(String paramString, JSONObject paramJSONObject)
    throws HTTPException
  {
    return put(paramString, "application/json", paramJSONObject.toString());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.RESTClient2
 * JD-Core Version:    0.7.0.1
 */