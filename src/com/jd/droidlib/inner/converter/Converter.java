package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.contract.SQL.DDL;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class Converter<T>
  implements SQL.DDL
{
  public abstract boolean canHandle(Class<?> paramClass);
  
  public abstract String getDBColumnType();
  
  protected abstract <V> T parseFromString(Class<T> paramClass, Class<V> paramClass1, String paramString);
  
  public abstract <V> void putToContentValues(Class<T> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, T paramT);
  
  public <V> void putToJSON(Class<T> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString, T paramT)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramT);
  }
  
  public abstract <V> T readFromCursor(Class<T> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt);
  
  public abstract <V> T readFromJSON(Class<T> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.Converter
 * JD-Core Version:    0.7.0.1
 */