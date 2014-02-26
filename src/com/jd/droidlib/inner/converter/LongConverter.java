package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class LongConverter
  extends Converter<Long>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isLong(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " INTEGER";
  }
  
  protected <V> Long parseFromString(Class<Long> paramClass, Class<V> paramClass1, String paramString)
  {
    return Long.valueOf(paramString);
  }
  
  public <V> void putToContentValues(Class<Long> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Long paramLong)
  {
    paramContentValues.put(paramString, paramLong);
  }
  
  public <V> Long readFromCursor(Class<Long> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return Long.valueOf(paramCursor.getLong(paramInt));
  }
  
  public <V> Long readFromJSON(Class<Long> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return Long.valueOf(paramJSONObject.getLong(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.LongConverter
 * JD-Core Version:    0.7.0.1
 */