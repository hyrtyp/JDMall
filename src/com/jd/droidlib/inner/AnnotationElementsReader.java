package com.jd.droidlib.inner;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;

public class AnnotationElementsReader
{
  private static Field elementsField;
  private static Field nameField;
  private static Method validateValueMethod;
  
  public static HashMap<String, Object> getElements(Annotation paramAnnotation)
    throws Exception
  {
    HashMap localHashMap = new HashMap();
    InvocationHandler localInvocationHandler = Proxy.getInvocationHandler(paramAnnotation);
    if (elementsField == null)
    {
      elementsField = localInvocationHandler.getClass().getDeclaredField("elements");
      elementsField.setAccessible(true);
    }
    Object[] arrayOfObject = (Object[])elementsField.get(localInvocationHandler);
    int i = arrayOfObject.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localHashMap;
      }
      Object localObject = arrayOfObject[j];
      if (nameField == null)
      {
        Class localClass = localObject.getClass();
        nameField = localClass.getDeclaredField("name");
        nameField.setAccessible(true);
        validateValueMethod = localClass.getDeclaredMethod("validateValue", new Class[0]);
        validateValueMethod.setAccessible(true);
      }
      localHashMap.put((String)nameField.get(localObject), validateValueMethod.invoke(localObject, new Object[0]));
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.AnnotationElementsReader
 * JD-Core Version:    0.7.0.1
 */