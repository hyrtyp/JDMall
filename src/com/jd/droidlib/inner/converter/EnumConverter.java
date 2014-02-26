package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class EnumConverter
  extends Converter<Enum<?>>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isEnum(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " TEXT";
  }
  
  protected <V> Enum<?> parseFromString(Class<Enum<?>> paramClass, Class<V> paramClass1, String paramString)
  {
    return ReflectionUtils.newEnum(paramClass, paramString);
  }
  
  public <V> void putToContentValues(Class<Enum<?>> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Enum<?> paramEnum)
  {
    paramContentValues.put(paramString, paramEnum.toString());
  }
  
  public <V> void putToJSON(Class<Enum<?>> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString, Enum<?> paramEnum)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramEnum.toString());
  }
  
  public <V> Enum<?> readFromCursor(Class<Enum<?>> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return ReflectionUtils.newEnum(paramClass, paramCursor.getString(paramInt));
  }
  
  public <V> Enum<?> readFromJSON(Class<Enum<?>> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.EnumConverter
 * JD-Core Version:    0.7.0.1
 */