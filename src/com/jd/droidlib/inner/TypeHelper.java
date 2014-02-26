package com.jd.droidlib.inner;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.model.Model;
import java.util.Collection;
import java.util.Date;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

public final class TypeHelper
{
  public static boolean isArray(Class<?> paramClass)
  {
    return paramClass.isArray();
  }
  
  public static boolean isBitmap(Class<?> paramClass)
  {
    return Bitmap.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isBoolean(Class<?> paramClass)
  {
    return (paramClass == Boolean.TYPE) || (paramClass == Boolean.class);
  }
  
  public static boolean isByte(Class<?> paramClass)
  {
    return (paramClass == Byte.TYPE) || (paramClass == Byte.class);
  }
  
  public static boolean isByteArray(Class<?> paramClass)
  {
    return paramClass == [B.class;
  }
  
  public static boolean isCharacter(Class<?> paramClass)
  {
    return (paramClass == Character.TYPE) || (paramClass == Character.class);
  }
  
  public static boolean isCollection(Class<?> paramClass)
  {
    return Collection.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isDate(Class<?> paramClass)
  {
    return Date.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isDouble(Class<?> paramClass)
  {
    return (paramClass == Double.TYPE) || (paramClass == Double.class);
  }
  
  public static boolean isDrawable(Class<?> paramClass)
  {
    return Drawable.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isEntity(Class<?> paramClass)
  {
    return Entity.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isEnum(Class<?> paramClass)
  {
    return paramClass.isEnum();
  }
  
  public static boolean isFloat(Class<?> paramClass)
  {
    return (paramClass == Float.TYPE) || (paramClass == Float.class);
  }
  
  public static boolean isInteger(Class<?> paramClass)
  {
    return (paramClass == Integer.TYPE) || (paramClass == Integer.class);
  }
  
  public static boolean isJSONArray(Class<?> paramClass)
  {
    return JSONArray.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isJSONObject(Class<?> paramClass)
  {
    return JSONObject.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isLong(Class<?> paramClass)
  {
    return (paramClass == Long.TYPE) || (paramClass == Long.class);
  }
  
  public static boolean isModel(Class<?> paramClass)
  {
    return Model.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isShort(Class<?> paramClass)
  {
    return (paramClass == Short.TYPE) || (paramClass == Short.class);
  }
  
  public static boolean isString(Class<?> paramClass)
  {
    return paramClass == String.class;
  }
  
  public static boolean isUUID(Class<?> paramClass)
  {
    return UUID.class.isAssignableFrom(paramClass);
  }
  
  public static boolean isUri(Class<?> paramClass)
  {
    return Uri.class.isAssignableFrom(paramClass);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.TypeHelper
 * JD-Core Version:    0.7.0.1
 */