package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class ByteConverter
  extends Converter<Byte>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isByte(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " INTEGER";
  }
  
  protected <V> Byte parseFromString(Class<Byte> paramClass, Class<V> paramClass1, String paramString)
  {
    return Byte.valueOf(paramString);
  }
  
  public <V> void putToContentValues(Class<Byte> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Byte paramByte)
  {
    paramContentValues.put(paramString, paramByte);
  }
  
  public <V> Byte readFromCursor(Class<Byte> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return Byte.valueOf(paramCursor.getString(paramInt));
  }
  
  public <V> Byte readFromJSON(Class<Byte> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.ByteConverter
 * JD-Core Version:    0.7.0.1
 */