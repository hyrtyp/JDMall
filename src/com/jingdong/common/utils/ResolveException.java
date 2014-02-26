package com.jingdong.common.utils;

import java.io.PrintWriter;
import java.io.StringWriter;

public class ResolveException
{
  private static int FRIST_LINE = 3;
  private static String KEYWORD = "com.jingdong";
  private static String TAG = "ResolveException";
  
  private static void addExceptionString(int paramInt, StackTraceElement[] paramArrayOfStackTraceElement, StringBuffer paramStringBuffer)
  {
    paramStringBuffer.append(paramArrayOfStackTraceElement[paramInt].getClassName() + "." + paramArrayOfStackTraceElement[paramInt].getMethodName() + "(" + paramArrayOfStackTraceElement[paramInt].getLineNumber() + ")" + "\n");
  }
  
  public static String resolve(Throwable paramThrowable)
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      resolveCause(paramThrowable, localStringBuffer, true);
      String str = localStringBuffer.toString();
      return str;
    }
    catch (Exception localException)
    {
      StringWriter localStringWriter = new StringWriter();
      localException.printStackTrace(new PrintWriter(localStringWriter));
      return localStringWriter.toString();
    }
  }
  
  private static void resolveCause(Throwable paramThrowable, StringBuffer paramStringBuffer, boolean paramBoolean)
  {
    if (paramThrowable != null)
    {
      if ((paramBoolean) || (paramThrowable.getCause() == null)) {
        break label25;
      }
      resolveCause(paramThrowable.getCause(), paramStringBuffer, false);
    }
    for (;;)
    {
      return;
      label25:
      paramStringBuffer.append("------" + paramThrowable.toString() + "\n");
      StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
      int i = -1;
      int j = 0;
      if (j >= arrayOfStackTraceElement.length)
      {
        label74:
        if (paramThrowable.getCause() != null) {
          resolveCause(paramThrowable.getCause(), paramStringBuffer, false);
        }
      }
      else
      {
        if (j < FRIST_LINE)
        {
          addExceptionString(j, arrayOfStackTraceElement, paramStringBuffer);
          if (arrayOfStackTraceElement[j].getClassName().contains(KEYWORD)) {
            i = FRIST_LINE;
          }
        }
        for (;;)
        {
          j++;
          break;
          if (paramThrowable.getCause() != null) {
            break label74;
          }
          if (i == -1)
          {
            if (arrayOfStackTraceElement[j].getClassName().contains(KEYWORD))
            {
              i = j;
              addExceptionString(j, arrayOfStackTraceElement, paramStringBuffer);
            }
          }
          else if ((paramThrowable.getCause() == null) && (j >= i)) {
            addExceptionString(j, arrayOfStackTraceElement, paramStringBuffer);
          }
        }
      }
      if (i == -1) {
        for (int k = -1 + FRIST_LINE; k < arrayOfStackTraceElement.length; k++) {
          addExceptionString(k, arrayOfStackTraceElement, paramStringBuffer);
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ResolveException
 * JD-Core Version:    0.7.0.1
 */