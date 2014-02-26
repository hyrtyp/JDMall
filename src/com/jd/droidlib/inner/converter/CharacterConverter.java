package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class CharacterConverter
  extends Converter<Character>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isCharacter(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " INTEGER";
  }
  
  protected <V> Character parseFromString(Class<Character> paramClass, Class<V> paramClass1, String paramString)
  {
    if (paramString.length() == 0) {}
    for (char c = ' ';; c = paramString.charAt(0)) {
      return Character.valueOf(c);
    }
  }
  
  public <V> void putToContentValues(Class<Character> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Character paramCharacter)
  {
    paramContentValues.put(paramString, String.valueOf(paramCharacter));
  }
  
  public <V> Character readFromCursor(Class<Character> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    return parseFromString(paramClass, null, paramCursor.getString(paramInt));
  }
  
  public <V> Character readFromJSON(Class<Character> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.CharacterConverter
 * JD-Core Version:    0.7.0.1
 */