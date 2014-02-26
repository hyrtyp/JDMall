package com.jd.common.util.bean;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Map;

public class BeanUtils
{
  private static final String GET_METHOD = "get";
  private static BeanUtils instance;
  
  public static BeanUtils getInstance()
  {
    if (instance == null) {}
    try
    {
      instance = new BeanUtils();
      return instance;
    }
    finally {}
  }
  
  private void pushField(Object paramObject, Map paramMap, Class paramClass, Field paramField, String paramString)
  {
    int i = paramField.getModifiers();
    if (vevifField(paramObject, paramMap, paramField, i, paramString)) {
      return;
    }
    try
    {
      String str = paramField.getName().substring(0, 1).toUpperCase();
      Object localObject3 = paramClass.getMethod("get" + str + paramField.getName().substring(1), new Class[0]).invoke(paramObject, new Object[0]);
      localObject1 = localObject3;
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        localObject1 = null;
      }
    }
    if ((localObject1 == null) && (Modifier.isPublic(i))) {}
    try
    {
      Object localObject2 = paramField.get(paramObject);
      localObject1 = localObject2;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        localObject1 = null;
      }
    }
    pushMap(paramMap, paramField.getName(), localObject1, paramString);
  }
  
  private Map pushMap(Map paramMap, Object paramObject1, Object paramObject2, String paramString)
  {
    if ((paramObject1 != null) && (paramObject2 != null)) {
      paramMap.put(paramString + paramObject1, paramObject2);
    }
    return paramMap;
  }
  
  private boolean vevifField(Object paramObject, Map paramMap, Field paramField, int paramInt, String paramString)
  {
    if ((FieldTransient)paramField.getAnnotation(FieldTransient.class) != null) {}
    while ((Modifier.isAbstract(paramInt)) || (Modifier.isInterface(paramInt)) || (Modifier.isTransient(paramInt))) {
      return true;
    }
    if ((Modifier.isPublic(paramInt)) && (Modifier.isStatic(paramInt))) {
      try
      {
        Object localObject = paramField.get(paramObject);
        pushMap(paramMap, paramField.getName(), localObject, paramString);
        return true;
      }
      catch (Exception localException)
      {
        return true;
      }
    }
    return false;
  }
  
  public BeanUtils beanToMap(Map paramMap, Object paramObject, String paramString)
  {
    if (paramObject == null) {
      return this;
    }
    Class localClass1 = paramObject.getClass();
    Class localClass2 = localClass1.getSuperclass();
    Field[] arrayOfField1 = localClass1.getDeclaredFields();
    int i = arrayOfField1.length;
    for (int j = 0;; j++)
    {
      if (j >= i)
      {
        Field[] arrayOfField2 = localClass2.getDeclaredFields();
        int k = arrayOfField2.length;
        for (int m = 0; m < k; m++) {
          pushField(paramObject, paramMap, localClass2, arrayOfField2[m], paramString);
        }
        break;
      }
      pushField(paramObject, paramMap, localClass1, arrayOfField1[j], paramString);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.bean.BeanUtils
 * JD-Core Version:    0.7.0.1
 */