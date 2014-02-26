package com.jingdong.common.utils;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONArrayPoxy
  extends JSONArray
{
  private JSONArray jsonArray;
  
  public JSONArrayPoxy()
  {
    this.jsonArray = new JSONArray();
  }
  
  public JSONArrayPoxy(JSONArray paramJSONArray)
  {
    this.jsonArray = paramJSONArray;
  }
  
  public boolean equals(Object paramObject)
  {
    return this.jsonArray.equals(paramObject);
  }
  
  public Object get(int paramInt)
    throws JSONException
  {
    return this.jsonArray.get(paramInt);
  }
  
  public boolean getBoolean(int paramInt)
    throws JSONException
  {
    return this.jsonArray.getBoolean(paramInt);
  }
  
  public double getDouble(int paramInt)
    throws JSONException
  {
    return this.jsonArray.getDouble(paramInt);
  }
  
  public int getInt(int paramInt)
    throws JSONException
  {
    return this.jsonArray.getInt(paramInt);
  }
  
  public JSONArrayPoxy getJSONArray(int paramInt)
    throws JSONException
  {
    return new JSONArrayPoxy(this.jsonArray.getJSONArray(paramInt));
  }
  
  public JSONArrayPoxy getJSONArrayOrNull(int paramInt)
  {
    try
    {
      JSONArrayPoxy localJSONArrayPoxy = new JSONArrayPoxy(this.jsonArray.getJSONArray(paramInt));
      return localJSONArrayPoxy;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public JSONObjectProxy getJSONObject(int paramInt)
    throws JSONException
  {
    return new JSONObjectProxy(new JSONObjectProxy(this.jsonArray.getJSONObject(paramInt)));
  }
  
  public JSONObjectProxy getJSONObjectOrNull(int paramInt)
  {
    try
    {
      JSONObjectProxy localJSONObjectProxy = new JSONObjectProxy(new JSONObjectProxy(this.jsonArray.getJSONObject(paramInt)));
      return localJSONObjectProxy;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public long getLong(int paramInt)
    throws JSONException
  {
    return this.jsonArray.getLong(paramInt);
  }
  
  public String getString(int paramInt)
    throws JSONException
  {
    return this.jsonArray.getString(paramInt);
  }
  
  public int hashCode()
  {
    return this.jsonArray.hashCode();
  }
  
  public boolean isNull(int paramInt)
  {
    return this.jsonArray.isNull(paramInt);
  }
  
  public String join(String paramString)
    throws JSONException
  {
    return this.jsonArray.join(paramString);
  }
  
  public int length()
  {
    return this.jsonArray.length();
  }
  
  public Object opt(int paramInt)
  {
    return this.jsonArray.opt(paramInt);
  }
  
  public boolean optBoolean(int paramInt)
  {
    return this.jsonArray.optBoolean(paramInt);
  }
  
  public boolean optBoolean(int paramInt, boolean paramBoolean)
  {
    return this.jsonArray.optBoolean(paramInt, paramBoolean);
  }
  
  public double optDouble(int paramInt)
  {
    return this.jsonArray.optDouble(paramInt);
  }
  
  public double optDouble(int paramInt, double paramDouble)
  {
    return this.jsonArray.optDouble(paramInt, paramDouble);
  }
  
  public int optInt(int paramInt)
  {
    return this.jsonArray.optInt(paramInt);
  }
  
  public int optInt(int paramInt1, int paramInt2)
  {
    return this.jsonArray.optInt(paramInt1, paramInt2);
  }
  
  public JSONArray optJSONArray(int paramInt)
  {
    return this.jsonArray.optJSONArray(paramInt);
  }
  
  public JSONObject optJSONObject(int paramInt)
  {
    return this.jsonArray.optJSONObject(paramInt);
  }
  
  public long optLong(int paramInt)
  {
    return this.jsonArray.optLong(paramInt);
  }
  
  public long optLong(int paramInt, long paramLong)
  {
    return this.jsonArray.optLong(paramInt, paramLong);
  }
  
  public String optString(int paramInt)
  {
    return this.jsonArray.optString(paramInt);
  }
  
  public String optString(int paramInt, String paramString)
  {
    return this.jsonArray.optString(paramInt, paramString);
  }
  
  public JSONArray put(double paramDouble)
    throws JSONException
  {
    return this.jsonArray.put(paramDouble);
  }
  
  public JSONArray put(int paramInt)
  {
    return this.jsonArray.put(paramInt);
  }
  
  public JSONArray put(int paramInt, double paramDouble)
    throws JSONException
  {
    return this.jsonArray.put(paramInt, paramDouble);
  }
  
  public JSONArray put(int paramInt1, int paramInt2)
    throws JSONException
  {
    return this.jsonArray.put(paramInt1, paramInt2);
  }
  
  public JSONArray put(int paramInt, long paramLong)
    throws JSONException
  {
    return this.jsonArray.put(paramInt, paramLong);
  }
  
  public JSONArray put(int paramInt, Object paramObject)
    throws JSONException
  {
    return this.jsonArray.put(paramInt, paramObject);
  }
  
  public JSONArray put(int paramInt, boolean paramBoolean)
    throws JSONException
  {
    return this.jsonArray.put(paramInt, paramBoolean);
  }
  
  public JSONArray put(long paramLong)
  {
    return this.jsonArray.put(paramLong);
  }
  
  public JSONArray put(Object paramObject)
  {
    return this.jsonArray.put(paramObject);
  }
  
  public JSONArray put(boolean paramBoolean)
  {
    return this.jsonArray.put(paramBoolean);
  }
  
  public JSONObject toJSONObject(JSONArray paramJSONArray)
    throws JSONException
  {
    return this.jsonArray.toJSONObject(paramJSONArray);
  }
  
  public String toString()
  {
    return this.jsonArray.toString();
  }
  
  public String toString(int paramInt)
    throws JSONException
  {
    return this.jsonArray.toString(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.JSONArrayPoxy
 * JD-Core Version:    0.7.0.1
 */