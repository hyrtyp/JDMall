package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class IntegerConverter
  extends Converter<Integer>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isInteger(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " INTEGER";
  }
  
  protected <V> Integer parseFromString(Class<Integer> paramClass, Class<V> paramClass1, String paramString)
  {
    return Integer.valueOf(paramString);
  }
  
  public <V> void putToContentValues(Class<Integer> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Integer paramInteger)
  {
    paramContentValues.put(paramString, paramInteger);
  }
  
  public <V> Integer readFromCursor(Class<Integer> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return Integer.valueOf(paramCursor.getInt(paramInt));
  }
  
  public <V> Integer readFromJSON(Class<Integer> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return Integer.valueOf(paramJSONObject.getInt(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.IntegerConverter
 * JD-Core Version:    0.7.0.1
 */