package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class BooleanConverter
  extends Converter<Boolean>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isBoolean(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " INTEGER";
  }
  
  protected <V> Boolean parseFromString(Class<Boolean> paramClass, Class<V> paramClass1, String paramString)
  {
    if ("1".equals(paramString)) {
      paramString = "true";
    }
    return Boolean.valueOf(paramString);
  }
  
  public <V> void putToContentValues(Class<Boolean> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Boolean paramBoolean)
  {
    paramContentValues.put(paramString, paramBoolean);
  }
  
  public <V> Boolean readFromCursor(Class<Boolean> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    if (paramCursor.getInt(paramInt) == 1) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public <V> Boolean readFromJSON(Class<Boolean> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    try
    {
      Boolean localBoolean = Boolean.valueOf(paramJSONObject.getBoolean(paramString));
      return localBoolean;
    }
    catch (JSONException localJSONException) {}
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.BooleanConverter
 * JD-Core Version:    0.7.0.1
 */