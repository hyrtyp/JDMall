package com.jd.droidlib.util;

import java.util.Collection;

public class Strings
{
  public static boolean isEmpty(CharSequence paramCharSequence)
  {
    return (paramCharSequence == null) || (paramCharSequence.length() == 0);
  }
  
  public static boolean isNotEmpty(CharSequence paramCharSequence)
  {
    return !isEmpty(paramCharSequence);
  }
  
  public static <T> String join(Collection<T> paramCollection, String paramString)
  {
    return join(paramCollection, paramString, null);
  }
  
  public static <T> String join(Collection<T> paramCollection, String paramString1, String paramString2)
  {
    return join(paramCollection.toArray(new Object[paramCollection.size()]), paramString1, paramString2);
  }
  
  public static String join(Object[] paramArrayOfObject, String paramString)
  {
    return join(paramArrayOfObject, paramString, null);
  }
  
  public static String join(Object[] paramArrayOfObject, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder(2 * paramArrayOfObject.length);
    int i = 0;
    if (i >= paramArrayOfObject.length) {
      return localStringBuilder.toString();
    }
    localStringBuilder.append(paramArrayOfObject[i]);
    if (i < -1 + paramArrayOfObject.length) {
      localStringBuilder.append(paramString1);
    }
    for (;;)
    {
      i++;
      break;
      if ((paramString2 != null) && (paramArrayOfObject.length > 0)) {
        localStringBuilder.append(paramString2);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.Strings
 * JD-Core Version:    0.7.0.1
 */