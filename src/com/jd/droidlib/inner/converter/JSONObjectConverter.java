package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONObjectConverter
  extends Converter<JSONObject>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isJSONObject(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " TEXT";
  }
  
  protected <V> JSONObject parseFromString(Class<JSONObject> paramClass, Class<V> paramClass1, String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      throw new IllegalArgumentException(localJSONException);
    }
  }
  
  public <V> void putToContentValues(Class<JSONObject> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, JSONObject paramJSONObject)
  {
    paramContentValues.put(paramString, paramJSONObject.toString());
  }
  
  public <V> void putToJSON(Class<JSONObject> paramClass, Class<V> paramClass1, JSONObject paramJSONObject1, String paramString, JSONObject paramJSONObject2)
    throws JSONException
  {
    paramJSONObject1.put(paramString, paramJSONObject2.toString());
  }
  
  public <V> JSONObject readFromCursor(Class<JSONObject> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramCursor.getString(paramInt));
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      throw new IllegalArgumentException(localJSONException);
    }
  }
  
  public <V> JSONObject readFromJSON(Class<JSONObject> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.JSONObjectConverter
 * JD-Core Version:    0.7.0.1
 */