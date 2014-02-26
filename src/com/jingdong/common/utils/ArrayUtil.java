package com.jingdong.common.utils;

public class ArrayUtil
{
  public static Object getValueOfArray(Object[] paramArrayOfObject, int paramInt, Object paramObject)
  {
    if ((paramArrayOfObject == null) || (paramArrayOfObject.length < 1) || (paramInt < 0) || (paramInt > -1 + paramArrayOfObject.length)) {
      return paramObject;
    }
    try
    {
      Object localObject = paramArrayOfObject[paramInt];
      return localObject;
    }
    catch (Exception localException) {}
    return paramObject;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ArrayUtil
 * JD-Core Version:    0.7.0.1
 */