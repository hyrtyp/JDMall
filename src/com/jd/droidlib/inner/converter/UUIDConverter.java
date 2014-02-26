package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class UUIDConverter
  extends Converter<UUID>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isUUID(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " TEXT";
  }
  
  protected <V> UUID parseFromString(Class<UUID> paramClass, Class<V> paramClass1, String paramString)
  {
    return UUID.fromString(paramString);
  }
  
  public <V> void putToContentValues(Class<UUID> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, UUID paramUUID)
  {
    paramContentValues.put(paramString, paramUUID.toString());
  }
  
  public <V> void putToJSON(Class<UUID> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString, UUID paramUUID)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramUUID.toString());
  }
  
  public <V> UUID readFromCursor(Class<UUID> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return UUID.fromString(paramCursor.getString(paramInt));
  }
  
  public <V> UUID readFromJSON(Class<UUID> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.UUIDConverter
 * JD-Core Version:    0.7.0.1
 */