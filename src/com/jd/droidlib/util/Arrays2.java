package com.jd.droidlib.util;

import java.lang.reflect.Array;

public class Arrays2
{
  private static Object convertArray(Class<?> paramClass, int paramInt, Object paramObject)
  {
    Object localObject = Array.newInstance(paramClass, paramInt);
    for (int i = 0;; i++)
    {
      if (i >= paramInt) {
        return localObject;
      }
      Array.set(localObject, i, Array.get(paramObject, i));
    }
  }
  
  public static Boolean[] toObject(boolean[] paramArrayOfBoolean)
  {
    return (Boolean[])convertArray(Boolean.class, paramArrayOfBoolean.length, paramArrayOfBoolean);
  }
  
  public static Byte[] toObject(byte[] paramArrayOfByte)
  {
    return (Byte[])convertArray(Byte.class, paramArrayOfByte.length, paramArrayOfByte);
  }
  
  public static Character[] toObject(char[] paramArrayOfChar)
  {
    return (Character[])convertArray(Character.class, paramArrayOfChar.length, paramArrayOfChar);
  }
  
  public static Double[] toObject(double[] paramArrayOfDouble)
  {
    return (Double[])convertArray(Double.class, paramArrayOfDouble.length, paramArrayOfDouble);
  }
  
  public static Float[] toObject(float[] paramArrayOfFloat)
  {
    return (Float[])convertArray(Float.class, paramArrayOfFloat.length, paramArrayOfFloat);
  }
  
  public static Integer[] toObject(int[] paramArrayOfInt)
  {
    return (Integer[])convertArray(Integer.class, paramArrayOfInt.length, paramArrayOfInt);
  }
  
  public static Long[] toObject(long[] paramArrayOfLong)
  {
    return (Long[])convertArray(Long.class, paramArrayOfLong.length, paramArrayOfLong);
  }
  
  public static Short[] toObject(short[] paramArrayOfShort)
  {
    return (Short[])convertArray(Short.class, paramArrayOfShort.length, paramArrayOfShort);
  }
  
  public static Object[] toObjectArray(Object paramObject)
  {
    Class localClass = paramObject.getClass();
    if (localClass == [B.class) {
      return toObject((byte[])paramObject);
    }
    if (localClass == [S.class) {
      return toObject((short[])paramObject);
    }
    if (localClass == [I.class) {
      return toObject((int[])paramObject);
    }
    if (localClass == [J.class) {
      return toObject((long[])paramObject);
    }
    if (localClass == [F.class) {
      return toObject((float[])paramObject);
    }
    if (localClass == [D.class) {
      return toObject((double[])paramObject);
    }
    if (localClass == [Z.class) {
      return toObject((boolean[])paramObject);
    }
    if (localClass == [C.class) {
      return toObject((char[])paramObject);
    }
    return (Object[])paramObject;
  }
  
  public static byte[] toPrimitive(Byte[] paramArrayOfByte)
  {
    return (byte[])convertArray(Byte.TYPE, paramArrayOfByte.length, paramArrayOfByte);
  }
  
  public static char[] toPrimitive(Character[] paramArrayOfCharacter)
  {
    return (char[])convertArray(Character.TYPE, paramArrayOfCharacter.length, paramArrayOfCharacter);
  }
  
  public static double[] toPrimitive(Double[] paramArrayOfDouble)
  {
    return (double[])convertArray(Double.TYPE, paramArrayOfDouble.length, paramArrayOfDouble);
  }
  
  public static float[] toPrimitive(Float[] paramArrayOfFloat)
  {
    return (float[])convertArray(Float.TYPE, paramArrayOfFloat.length, paramArrayOfFloat);
  }
  
  public static int[] toPrimitive(Integer[] paramArrayOfInteger)
  {
    return (int[])convertArray(Integer.TYPE, paramArrayOfInteger.length, paramArrayOfInteger);
  }
  
  public static long[] toPrimitive(Long[] paramArrayOfLong)
  {
    return (long[])convertArray(Long.TYPE, paramArrayOfLong.length, paramArrayOfLong);
  }
  
  public static short[] toPrimitive(Short[] paramArrayOfShort)
  {
    return (short[])convertArray(Short.TYPE, paramArrayOfShort.length, paramArrayOfShort);
  }
  
  public static boolean[] toPrimitive(Boolean[] paramArrayOfBoolean)
  {
    return (boolean[])convertArray(Boolean.TYPE, paramArrayOfBoolean.length, paramArrayOfBoolean);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.Arrays2
 * JD-Core Version:    0.7.0.1
 */