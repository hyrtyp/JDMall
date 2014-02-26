package com.jd.common.util;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class ArrayUtils
  extends org.apache.commons.lang.ArrayUtils
{
  public static String join(Integer[] paramArrayOfInteger)
  {
    return join(paramArrayOfInteger, ",");
  }
  
  public static String join(Integer[] paramArrayOfInteger, String paramString)
  {
    if (paramArrayOfInteger != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = paramArrayOfInteger.length;
      for (int j = 0;; j++)
      {
        if (j >= i)
        {
          if (localStringBuilder.length() <= 0) {
            break;
          }
          return localStringBuilder.substring(1);
        }
        Integer localInteger = paramArrayOfInteger[j];
        localStringBuilder.append(',');
        localStringBuilder.append(localInteger);
      }
      return localStringBuilder.toString();
    }
    return null;
  }
  
  public static String join(Object[] paramArrayOfObject)
  {
    return join(paramArrayOfObject, ",");
  }
  
  public static String join(Object[] paramArrayOfObject, String paramString)
  {
    if (paramArrayOfObject != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = paramArrayOfObject.length;
      for (int j = 0;; j++)
      {
        if (j >= i)
        {
          if (localStringBuilder.length() <= 0) {
            break;
          }
          return localStringBuilder.substring(1);
        }
        Object localObject = paramArrayOfObject[j];
        localStringBuilder.append(',');
        localStringBuilder.append(localObject);
      }
      return localStringBuilder.toString();
    }
    return null;
  }
  
  public static Integer[] splitInt(String paramString)
  {
    return splitInt(paramString, ",");
  }
  
  public static Integer[] splitInt(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString1.length() > 0))
    {
      ArrayList localArrayList = new ArrayList();
      StringTokenizer localStringTokenizer = new StringTokenizer(paramString1.trim(), paramString2);
      for (;;)
      {
        if (!localStringTokenizer.hasMoreTokens())
        {
          Integer[] arrayOfInteger = new Integer[localArrayList.size()];
          localArrayList.toArray(arrayOfInteger);
          return arrayOfInteger;
        }
        String str = localStringTokenizer.nextToken();
        try
        {
          localArrayList.add(Integer.valueOf(Integer.parseInt(str.trim())));
        }
        catch (Exception localException) {}
      }
    }
    return null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.ArrayUtils
 * JD-Core Version:    0.7.0.1
 */