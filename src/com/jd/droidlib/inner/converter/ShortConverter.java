package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class ShortConverter
  extends Converter<Short>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isShort(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " INTEGER";
  }
  
  protected <V> Short parseFromString(Class<Short> paramClass, Class<V> paramClass1, String paramString)
  {
    return Short.valueOf(paramString);
  }
  
  public <V> void putToContentValues(Class<Short> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Short paramShort)
  {
    paramContentValues.put(paramString, paramShort);
  }
  
  public <V> Short readFromCursor(Class<Short> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return Short.valueOf(paramCursor.getShort(paramInt));
  }
  
  public <V> Short readFromJSON(Class<Short> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.ShortConverter
 * JD-Core Version:    0.7.0.1
 */