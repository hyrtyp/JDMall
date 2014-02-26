package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import com.jd.droidlib.inner.TypeHelper;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;

public class BitmapConverter
  extends Converter<Bitmap>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isBitmap(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " BLOB";
  }
  
  protected <V> Bitmap parseFromString(Class<Bitmap> paramClass, Class<V> paramClass1, String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public <V> void putToContentValues(Class<Bitmap> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 0, localByteArrayOutputStream);
    paramContentValues.put(paramString, localByteArrayOutputStream.toByteArray());
  }
  
  public <V> Bitmap readFromCursor(Class<Bitmap> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    byte[] arrayOfByte = paramCursor.getBlob(paramInt);
    return BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
  }
  
  public <V> Bitmap readFromJSON(Class<Bitmap> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.BitmapConverter
 * JD-Core Version:    0.7.0.1
 */