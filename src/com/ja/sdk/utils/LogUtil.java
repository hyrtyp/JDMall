package com.ja.sdk.utils;

import android.util.Log;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

public final class LogUtil
{
  private static final String TAG = "LogUtil";
  
  private static String convrtObjectToString(Object[] paramArrayOfObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfObject.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(paramArrayOfObject[j]).append(' ');
    }
  }
  
  public static void deleteLogFile()
  {
    FileUtils.deleteExternalStorageFile("_JALog_sdk.log");
  }
  
  public static int logD(String paramString)
  {
    return logD("LogUtil", paramString);
  }
  
  public static int logD(String paramString1, String paramString2)
  {
    if (!logOnOff(3)) {
      return -1;
    }
    writLogToFlash(paramString1, paramString2);
    return Log.d(paramString1, paramString2);
  }
  
  public static int logD(Object[] paramArrayOfObject)
  {
    if (!logOnOff(3)) {
      return -1;
    }
    return logD(convrtObjectToString(paramArrayOfObject));
  }
  
  public static int logE(String paramString)
  {
    if (!logOnOff(6)) {
      return -1;
    }
    writLogToFlash("LogUtil", paramString);
    return Log.e("LogUtil", paramString);
  }
  
  public static int logE(String paramString1, String paramString2)
  {
    if (!logOnOff(6)) {
      return -1;
    }
    writLogToFlash(paramString1, paramString1);
    return Log.e(paramString1, paramString2);
  }
  
  public static int logE(Object[] paramArrayOfObject)
  {
    if (!logOnOff(6)) {
      return -1;
    }
    return logE(convrtObjectToString(paramArrayOfObject));
  }
  
  public static int logException(String paramString, Throwable paramThrowable)
  {
    if (!logOnOff(3)) {
      return -1;
    }
    logExceptionToFlash("LogUtil", paramString, paramThrowable);
    return Log.d("LogUtil", paramString, paramThrowable);
  }
  
  public static int logException(Throwable paramThrowable)
  {
    return logException("", paramThrowable);
  }
  
  private static void logExceptionToFlash(String paramString1, String paramString2, Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    paramThrowable.printStackTrace(localPrintWriter);
    writLogToFlash(paramString1, paramString2 + "\n" + localStringWriter.toString());
    localPrintWriter.close();
    try
    {
      localStringWriter.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.w("Log.debug", "", localIOException);
    }
  }
  
  public static boolean logOnOff(int paramInt)
  {
    return logOnOff("LogUtil", paramInt);
  }
  
  public static boolean logOnOff(String paramString, int paramInt)
  {
    return paramInt >= 4;
  }
  
  public static int logW(String paramString)
  {
    return logW("LogUtil", paramString);
  }
  
  public static int logW(String paramString1, String paramString2)
  {
    if (!logOnOff(4)) {
      return -1;
    }
    writLogToFlash(paramString1, paramString2);
    return Log.w(paramString1, paramString2);
  }
  
  public static int logW(Object[] paramArrayOfObject)
  {
    if (!logOnOff(4)) {
      return -1;
    }
    return logD(convrtObjectToString(paramArrayOfObject));
  }
  
  private static void writLogToFlash(String paramString1, String paramString2) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.utils.LogUtil
 * JD-Core Version:    0.7.0.1
 */