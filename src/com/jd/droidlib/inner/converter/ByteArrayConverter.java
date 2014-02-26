package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONObject;

public class ByteArrayConverter
  extends Converter<byte[]>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isByteArray(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " BLOB";
  }
  
  protected <V> byte[] parseFromString(Class<byte[]> paramClass, Class<V> paramClass1, String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public <V> void putToContentValues(Class<byte[]> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, byte[] paramArrayOfByte)
  {
    paramContentValues.put(paramString, paramArrayOfByte);
  }
  
  public <V> byte[] readFromCursor(Class<byte[]> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return paramCursor.getBlob(paramInt);
  }
  
  public <V> byte[] readFromJSON(Class<byte[]> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.ByteArrayConverter
 * JD-Core Version:    0.7.0.1
 */