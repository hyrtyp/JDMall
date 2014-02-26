package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class DoubleConverter
  extends Converter<Double>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isDouble(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " REAL";
  }
  
  protected <V> Double parseFromString(Class<Double> paramClass, Class<V> paramClass1, String paramString)
  {
    return Double.valueOf(paramString);
  }
  
  public <V> void putToContentValues(Class<Double> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Double paramDouble)
  {
    paramContentValues.put(paramString, paramDouble);
  }
  
  public <V> Double readFromCursor(Class<Double> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return Double.valueOf(paramCursor.getDouble(paramInt));
  }
  
  public <V> Double readFromJSON(Class<Double> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return Double.valueOf(paramJSONObject.getDouble(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.DoubleConverter
 * JD-Core Version:    0.7.0.1
 */