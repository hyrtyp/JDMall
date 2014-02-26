package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.inner.TypeHelper;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.model.Model;

public class EntityConverter
  extends ModelConverter
{
  public boolean canHandle(Class<?> paramClass)
  {
    return TypeHelper.isEntity(paramClass);
  }
  
  public String getDBColumnType()
  {
    return " INTEGER";
  }
  
  protected <V> Model parseFromString(Class<Model> paramClass, Class<V> paramClass1, String paramString)
  {
    if (paramString.startsWith("{")) {
      return super.parseFromString(paramClass, paramClass1, paramString);
    }
    Entity localEntity = (Entity)ReflectionUtils.newInstance(paramClass);
    localEntity.id = Long.valueOf(paramString).longValue();
    return localEntity;
  }
  
  public <V> void putToContentValues(Class<Model> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Model paramModel)
  {
    paramContentValues.put(paramString, Long.valueOf(((Entity)paramModel).id));
  }
  
  public <V> Entity readFromCursor(Class<Model> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    long l = paramCursor.getLong(paramInt);
    Entity localEntity = (Entity)ReflectionUtils.newInstance(paramClass);
    localEntity.id = l;
    return localEntity;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.EntityConverter
 * JD-Core Version:    0.7.0.1
 */