package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class FloatConverter
  extends Converter<Float>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isFloat(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " REAL";
  }
  
  protected <V> Float parseFromString(Class<Float> paramClass, Class<V> paramClass1, String paramString)
  {
    return Float.valueOf(paramString);
  }
  
  public <V> void putToContentValues(Class<Float> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Float paramFloat)
  {
    paramContentValues.put(paramString, paramFloat);
  }
  
  public <V> Float readFromCursor(Class<Float> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return Float.valueOf(paramCursor.getFloat(paramInt));
  }
  
  public <V> Float readFromJSON(Class<Float> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return Float.valueOf((float)paramJSONObject.getDouble(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.FloatConverter
 * JD-Core Version:    0.7.0.1
 */