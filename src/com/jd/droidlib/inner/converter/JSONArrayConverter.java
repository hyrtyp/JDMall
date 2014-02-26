package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONArrayConverter
  extends Converter<JSONArray>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isJSONArray(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " TEXT";
  }
  
  protected <V> JSONArray parseFromString(Class<JSONArray> paramClass, Class<V> paramClass1, String paramString)
  {
    try
    {
      JSONArray localJSONArray = new JSONArray(paramString);
      return localJSONArray;
    }
    catch (JSONException localJSONException)
    {
      throw new IllegalArgumentException(localJSONException);
    }
  }
  
  public <V> void putToContentValues(Class<JSONArray> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, JSONArray paramJSONArray)
  {
    paramContentValues.put(paramString, paramJSONArray.toString());
  }
  
  public <V> void putToJSON(Class<JSONArray> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString, JSONArray paramJSONArray)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramJSONArray.toString());
  }
  
  public <V> JSONArray readFromCursor(Class<JSONArray> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    try
    {
      JSONArray localJSONArray = new JSONArray(paramCursor.getString(paramInt));
      return localJSONArray;
    }
    catch (JSONException localJSONException)
    {
      throw new IllegalArgumentException(localJSONException);
    }
  }
  
  public <V> JSONArray readFromJSON(Class<JSONArray> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.JSONArrayConverter
 * JD-Core Version:    0.7.0.1
 */