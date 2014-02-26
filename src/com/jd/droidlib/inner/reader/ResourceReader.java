package com.jd.droidlib.inner.reader;

import android.content.Context;
import android.content.res.Resources;
import com.jd.droidlib.inner.TypeHelper;

public class ResourceReader
{
  static Object readVal(Context paramContext, int paramInt, Class<?> paramClass)
    throws Exception
  {
    Resources localResources = paramContext.getResources();
    Object localObject;
    if (TypeHelper.isBoolean(paramClass)) {
      localObject = Boolean.valueOf(localResources.getBoolean(paramInt));
    }
    while (localObject == null)
    {
      throw new Exception("Unsupported resource type '" + paramClass.getName() + "'.");
      if (TypeHelper.isInteger(paramClass))
      {
        localObject = Integer.valueOf(localResources.getInteger(paramInt));
      }
      else if (TypeHelper.isString(paramClass))
      {
        localObject = localResources.getString(paramInt);
      }
      else if (TypeHelper.isDrawable(paramClass))
      {
        localObject = localResources.getDrawable(paramInt);
      }
      else
      {
        boolean bool1 = TypeHelper.isArray(paramClass);
        localObject = null;
        if (bool1)
        {
          Class localClass = paramClass.getComponentType();
          if (TypeHelper.isInteger(localClass))
          {
            localObject = localResources.getIntArray(paramInt);
          }
          else
          {
            boolean bool2 = TypeHelper.isString(localClass);
            localObject = null;
            if (bool2) {
              localObject = localResources.getStringArray(paramInt);
            }
          }
        }
      }
    }
    return localObject;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.reader.ResourceReader
 * JD-Core Version:    0.7.0.1
 */