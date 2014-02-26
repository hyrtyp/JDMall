package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class DateConverter
  extends Converter<Date>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isDate(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " INTEGER";
  }
  
  protected <V> Date parseFromString(Class<Date> paramClass, Class<V> paramClass1, String paramString)
  {
    return new Date(Long.valueOf(paramString).longValue());
  }
  
  public <V> void putToContentValues(Class<Date> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Date paramDate)
  {
    paramContentValues.put(paramString, Long.valueOf(paramDate.getTime()));
  }
  
  public <V> void putToJSON(Class<Date> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString, Date paramDate)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramDate.getTime());
  }
  
  public <V> Date readFromCursor(Class<Date> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return new Date(paramCursor.getLong(paramInt));
  }
  
  public <V> Date readFromJSON(Class<Date> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    try
    {
      Date localDate = new Date(paramJSONObject.getLong(paramString));
      return localDate;
    }
    catch (Exception localException) {}
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.DateConverter
 * JD-Core Version:    0.7.0.1
 */