package com.jingdong.common.utils;

import java.lang.reflect.Method;

public class BeanUtil
{
  public static Object getValue(Object paramObject, String paramString)
  {
    Class localClass = paramObject.getClass();
    int i;
    Method[] arrayOfMethod;
    if (localClass.getClassLoader() != null)
    {
      i = 1;
      if (i == 0) {
        break label42;
      }
      arrayOfMethod = localClass.getMethods();
    }
    label24:
    for (int j = 0;; j++)
    {
      if (j >= arrayOfMethod.length)
      {
        return null;
        i = 0;
        break;
        label42:
        arrayOfMethod = localClass.getDeclaredMethods();
        break label24;
      }
      Method localMethod = arrayOfMethod[j];
      String str = localMethod.getName();
      if ((("get" + paramString).equalsIgnoreCase(str)) || (paramString.equalsIgnoreCase(str))) {
        try
        {
          Object localObject = localMethod.invoke(paramObject, null);
          return localObject;
        }
        catch (Exception localException)
        {
          throw new RuntimeException(localException);
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.BeanUtil
 * JD-Core Version:    0.7.0.1
 */