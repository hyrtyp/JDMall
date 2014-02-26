package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class StringConverter
  extends Converter<String>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isString(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " TEXT";
  }
  
  protected <V> String parseFromString(Class<String> paramClass, Class<V> paramClass1, String paramString)
  {
    return paramString;
  }
  
  public <V> void putToContentValues(Class<String> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString1, String paramString2)
  {
    paramContentValues.put(paramString1, paramString2);
  }
  
  public <V> String readFromCursor(Class<String> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return paramCursor.getString(paramInt);
  }
  
  public <V> String readFromJSON(Class<String> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return paramJSONObject.getString(paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.StringConverter
 * JD-Core Version:    0.7.0.1
 */