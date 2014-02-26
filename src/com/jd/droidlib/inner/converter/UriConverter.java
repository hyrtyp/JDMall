package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class UriConverter
  extends Converter<Uri>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isUri(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " TEXT";
  }
  
  protected <V> Uri parseFromString(Class<Uri> paramClass, Class<V> paramClass1, String paramString)
  {
    return Uri.parse(paramString);
  }
  
  public <V> void putToContentValues(Class<Uri> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Uri paramUri)
  {
    paramContentValues.put(paramString, paramUri.toString());
  }
  
  public <V> void putToJSON(Class<Uri> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString, Uri paramUri)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramUri.toString());
  }
  
  public <V> Uri readFromCursor(Class<Uri> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return Uri.parse(paramCursor.getString(paramInt));
  }
  
  public <V> Uri readFromJSON(Class<Uri> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.UriConverter
 * JD-Core Version:    0.7.0.1
 */