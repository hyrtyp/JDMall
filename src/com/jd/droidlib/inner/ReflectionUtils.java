package com.jd.droidlib.inner;

import com.jd.droidlib.util.Arrays2;
import com.jd.droidlib.util.L;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;

public final class ReflectionUtils
{
  public static ArrayList<Class<?>> buildClassHierarchy(Class<?> paramClass)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    do
    {
      localArrayList.add(0, paramClass);
      boolean bool = paramClass.getName().startsWith("com.jd.droidlib");
      if ((i != 0) && (!bool)) {
        return localArrayList;
      }
      i = bool;
      paramClass = paramClass.getSuperclass();
    } while (paramClass != null);
    return localArrayList;
  }
  
  public static Class<?> classForName(String paramString)
    throws IllegalArgumentException
  {
    try
    {
      Class localClass = Class.forName(paramString);
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new IllegalArgumentException(localClassNotFoundException);
    }
  }
  
  public static Class<?> getArrayComponentType(Class<?> paramClass)
  {
    if (paramClass == [B.class) {
      return Byte.TYPE;
    }
    if (paramClass == [S.class) {
      return Short.TYPE;
    }
    if (paramClass == [I.class) {
      return Integer.TYPE;
    }
    if (paramClass == [J.class) {
      return Long.TYPE;
    }
    if (paramClass == [F.class) {
      return Float.TYPE;
    }
    if (paramClass == [D.class) {
      return Double.TYPE;
    }
    if (paramClass == [Z.class) {
      return Boolean.TYPE;
    }
    if (paramClass == [C.class) {
      return Character.TYPE;
    }
    String str = paramClass.getName();
    return classForName(str.substring(2, -1 + str.length()));
  }
  
  public static Class<?>[] getFieldGenericArgs(Field paramField)
  {
    Type localType = paramField.getGenericType();
    if ((localType instanceof ParameterizedType))
    {
      Type[] arrayOfType = ((ParameterizedType)localType).getActualTypeArguments();
      Class[] arrayOfClass = new Class[arrayOfType.length];
      for (int i = 0;; i++)
      {
        if (i >= arrayOfType.length) {
          return arrayOfClass;
        }
        String[] arrayOfString = arrayOfType[i].toString().split(" ");
        arrayOfClass[i] = classForName(arrayOfString[(-1 + arrayOfString.length)]);
      }
    }
    return new Class[0];
  }
  
  public static <T> T getFieldVal(Object paramObject, Field paramField)
    throws IllegalArgumentException
  {
    try
    {
      Object localObject = paramField.get(paramObject);
      return localObject;
    }
    catch (Exception localException)
    {
      throw new IllegalArgumentException(localException);
    }
  }
  
  public static Enum<?> newEnum(Class<?> paramClass, String paramString)
  {
    return Enum.valueOf(paramClass.asSubclass(Enum.class), paramString);
  }
  
  public static <T> T newInstance(Class<T> paramClass)
    throws IllegalArgumentException
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return localObject;
    }
    catch (Exception localException)
    {
      throw new IllegalArgumentException(localException);
    }
  }
  
  public static void setFieldVal(Object paramObject1, Field paramField, Object paramObject2)
    throws IllegalArgumentException
  {
    try
    {
      paramField.set(paramObject1, paramObject2);
      return;
    }
    catch (Exception localException)
    {
      if (paramObject2 == null) {}
    }
    for (String str = paramObject2.getClass().getSimpleName();; str = "?")
    {
      Object[] arrayOfObject = new Object[6];
      arrayOfObject[0] = str;
      arrayOfObject[1] = paramObject2;
      arrayOfObject[2] = paramField.getType().getSimpleName();
      arrayOfObject[3] = paramObject1.getClass().getSimpleName();
      arrayOfObject[4] = paramField.getName();
      arrayOfObject[5] = localException.getMessage();
      L.w("Error assigning <%s> %s to (%s) field %s#%s: %s.", arrayOfObject);
      throw new IllegalArgumentException(localException);
    }
  }
  
  public static Object[] varArgsHack(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length == 1))
    {
      Object localObject = paramArrayOfObject[0];
      if ((localObject != null) && (TypeHelper.isArray(localObject.getClass()))) {
        paramArrayOfObject = Arrays2.toObjectArray(localObject);
      }
    }
    return paramArrayOfObject;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ReflectionUtils
 * JD-Core Version:    0.7.0.1
 */