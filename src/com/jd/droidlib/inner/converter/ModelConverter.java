package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.TypeHelper;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.persist.json.JSONSerializer;
import org.json.JSONException;
import org.json.JSONObject;

public class ModelConverter
  extends Converter<Model>
{
  public boolean canHandle(Class<?> paramClass)
  {
    return (TypeHelper.isModel(paramClass)) && (!TypeHelper.isEntity(paramClass));
  }
  
  public String getDBColumnType()
  {
    throw new UnsupportedOperationException();
  }
  
  protected <V> Model parseFromString(Class<Model> paramClass, Class<V> paramClass1, String paramString)
  {
    try
    {
      Model localModel = new JSONSerializer(null).deserialize(new JSONObject(paramString), paramClass);
      return localModel;
    }
    catch (JSONException localJSONException)
    {
      throw new IllegalArgumentException(localJSONException);
    }
  }
  
  public <V> void putToContentValues(Class<Model> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Model paramModel)
  {
    throw new UnsupportedOperationException();
  }
  
  public <V> void putToJSON(Class<Model> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString, Model paramModel)
    throws JSONException
  {
    paramModel.getClass();
    paramJSONObject.put(paramString, new JSONSerializer(null).serialize(paramModel));
  }
  
  public <V> Model readFromCursor(Class<Model> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public <V> Model readFromJSON(Class<Model> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return new JSONSerializer(null).deserialize(paramJSONObject.getJSONObject(paramString), paramClass);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.ModelConverter
 * JD-Core Version:    0.7.0.1
 */