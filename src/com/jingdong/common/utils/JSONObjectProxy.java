package com.jingdong.common.utils;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONObjectProxy
  extends JSONObject
{
  private JSONObject jsonObject;
  
  public JSONObjectProxy()
  {
    this.jsonObject = new JSONObject();
  }
  
  public JSONObjectProxy(JSONObject paramJSONObject)
  {
    this.jsonObject = paramJSONObject;
  }
  
  public JSONObject accumulate(String paramString, Object paramObject)
    throws JSONException
  {
    return this.jsonObject.accumulate(paramString, paramObject);
  }
  
  public boolean equals(Object paramObject)
  {
    return this.jsonObject.equals(paramObject);
  }
  
  public Object get(String paramString)
    throws JSONException
  {
    return this.jsonObject.get(paramString);
  }
  
  public boolean getBoolean(String paramString)
    throws JSONException
  {
    return this.jsonObject.getBoolean(paramString);
  }
  
  public Boolean getBooleanOrNull(String paramString)
  {
    if (this.jsonObject.isNull(paramString)) {
      return null;
    }
    try
    {
      Boolean localBoolean = Boolean.valueOf(this.jsonObject.getBoolean(paramString));
      return localBoolean;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public double getDouble(String paramString)
    throws JSONException
  {
    return this.jsonObject.getDouble(paramString);
  }
  
  public Double getDoubleOrNull(String paramString)
  {
    if (this.jsonObject.isNull(paramString)) {
      return null;
    }
    try
    {
      Double localDouble = Double.valueOf(this.jsonObject.getDouble(paramString));
      return localDouble;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public int getInt(String paramString)
    throws JSONException
  {
    return this.jsonObject.getInt(paramString);
  }
  
  public Integer getIntOrNull(String paramString)
  {
    if (this.jsonObject.isNull(paramString)) {
      return null;
    }
    try
    {
      Integer localInteger = Integer.valueOf(this.jsonObject.getInt(paramString));
      return localInteger;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public JSONArrayPoxy getJSONArray(String paramString)
    throws JSONException
  {
    return new JSONArrayPoxy(this.jsonObject.getJSONArray(paramString));
  }
  
  public JSONArrayPoxy getJSONArrayOrNull(String paramString)
  {
    if (this.jsonObject.isNull(paramString)) {
      return null;
    }
    try
    {
      JSONArrayPoxy localJSONArrayPoxy = new JSONArrayPoxy(this.jsonObject.getJSONArray(paramString));
      return localJSONArrayPoxy;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public JSONObjectProxy getJSONObject(String paramString)
    throws JSONException
  {
    return new JSONObjectProxy(this.jsonObject.getJSONObject(paramString));
  }
  
  public JSONObjectProxy getJSONObjectOrNull(String paramString)
  {
    if (this.jsonObject.isNull(paramString)) {
      return null;
    }
    try
    {
      JSONObjectProxy localJSONObjectProxy = new JSONObjectProxy(this.jsonObject.getJSONObject(paramString));
      return localJSONObjectProxy;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public long getLong(String paramString)
    throws JSONException
  {
    return this.jsonObject.getLong(paramString);
  }
  
  public Long getLongOrNull(String paramString)
  {
    if (this.jsonObject.isNull(paramString)) {
      return null;
    }
    try
    {
      Long localLong = Long.valueOf(this.jsonObject.getLong(paramString));
      return localLong;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String getString(String paramString)
    throws JSONException
  {
    return this.jsonObject.getString(paramString);
  }
  
  public String getStringOrNull(String paramString)
  {
    if (this.jsonObject.isNull(paramString)) {
      return null;
    }
    try
    {
      String str = this.jsonObject.getString(paramString);
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public boolean has(String paramString)
  {
    return this.jsonObject.has(paramString);
  }
  
  public int hashCode()
  {
    return this.jsonObject.hashCode();
  }
  
  public boolean isNull(String paramString)
  {
    return this.jsonObject.isNull(paramString);
  }
  
  public Iterator keys()
  {
    return this.jsonObject.keys();
  }
  
  public int length()
  {
    return this.jsonObject.length();
  }
  
  public JSONArray names()
  {
    return this.jsonObject.names();
  }
  
  public Object opt(String paramString)
  {
    return this.jsonObject.opt(paramString);
  }
  
  public boolean optBoolean(String paramString)
  {
    return this.jsonObject.optBoolean(paramString);
  }
  
  public boolean optBoolean(String paramString, boolean paramBoolean)
  {
    return this.jsonObject.optBoolean(paramString, paramBoolean);
  }
  
  public double optDouble(String paramString)
  {
    return this.jsonObject.optDouble(paramString);
  }
  
  public double optDouble(String paramString, double paramDouble)
  {
    return this.jsonObject.optDouble(paramString, paramDouble);
  }
  
  public int optInt(String paramString)
  {
    return this.jsonObject.optInt(paramString);
  }
  
  public int optInt(String paramString, int paramInt)
  {
    return this.jsonObject.optInt(paramString, paramInt);
  }
  
  public JSONArray optJSONArray(String paramString)
  {
    return this.jsonObject.optJSONArray(paramString);
  }
  
  public JSONObject optJSONObject(String paramString)
  {
    return this.jsonObject.optJSONObject(paramString);
  }
  
  public long optLong(String paramString)
  {
    return this.jsonObject.optLong(paramString);
  }
  
  public long optLong(String paramString, long paramLong)
  {
    return this.jsonObject.optLong(paramString, paramLong);
  }
  
  public String optString(String paramString)
  {
    return this.jsonObject.optString(paramString);
  }
  
  public String optString(String paramString1, String paramString2)
  {
    return this.jsonObject.optString(paramString1, paramString2);
  }
  
  public JSONObject put(String paramString, double paramDouble)
    throws JSONException
  {
    return this.jsonObject.put(paramString, paramDouble);
  }
  
  public JSONObject put(String paramString, int paramInt)
    throws JSONException
  {
    return this.jsonObject.put(paramString, paramInt);
  }
  
  public JSONObject put(String paramString, long paramLong)
    throws JSONException
  {
    return this.jsonObject.put(paramString, paramLong);
  }
  
  public JSONObject put(String paramString, Object paramObject)
    throws JSONException
  {
    return this.jsonObject.put(paramString, paramObject);
  }
  
  public JSONObject put(String paramString, boolean paramBoolean)
    throws JSONException
  {
    return this.jsonObject.put(paramString, paramBoolean);
  }
  
  public JSONObject putOpt(String paramString, Object paramObject)
    throws JSONException
  {
    return this.jsonObject.putOpt(paramString, paramObject);
  }
  
  public Object remove(String paramString)
  {
    return this.jsonObject.remove(paramString);
  }
  
  public JSONArray toJSONArray(JSONArray paramJSONArray)
    throws JSONException
  {
    return this.jsonObject.toJSONArray(paramJSONArray);
  }
  
  public String toString()
  {
    return this.jsonObject.toString();
  }
  
  public String toString(int paramInt)
    throws JSONException
  {
    return this.jsonObject.toString(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.JSONObjectProxy
 * JD-Core Version:    0.7.0.1
 */