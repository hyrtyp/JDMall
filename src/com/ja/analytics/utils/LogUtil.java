package com.ja.analytics.utils;

import android.util.Log;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

public final class LogUtil
{
  private static final String TAG = LogUtil.class.getName();
  public static Boolean isDebugLog = Boolean.valueOf(true);
  
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
    return logD(TAG, paramString);
  }
  
  public static int logD(String paramString1, String paramString2)
  {
    if (!logOnOff(3)) {}
    while (!isDebugLog.booleanValue()) {
      return -1;
    }
    return Log.d(paramString1, paramString2);
  }
  
  public static int logD(Object[] paramArrayOfObject)
  {
    if (!logOnOff(3)) {}
    while (!isDebugLog.booleanValue()) {
      return -1;
    }
    return logD(convrtObjectToString(paramArrayOfObject));
  }
  
  public static int logE(String paramString)
  {
    if (!logOnOff(6)) {
      return -1;
    }
    writLogToFlash(TAG, paramString);
    return Log.e(TAG, paramString);
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
    logExceptionToFlash(TAG, paramString, paramThrowable);
    return Log.e(TAG, paramString, paramThrowable);
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
  
  public static int logI(String paramString)
  {
    return logW(TAG, paramString);
  }
  
  public static int logI(String paramString1, String paramString2)
  {
    if (!logOnOff(2)) {
      return -1;
    }
    writLogToFlash(paramString1, paramString2);
    return Log.i(paramString1, paramString2);
  }
  
  public static int logI(Object[] paramArrayOfObject)
  {
    if (!logOnOff(2)) {
      return -1;
    }
    return logD(convrtObjectToString(paramArrayOfObject));
  }
  
  public static boolean logOnOff(int paramInt)
  {
    return logOnOff(TAG, paramInt);
  }
  
  public static boolean logOnOff(String paramString, int paramInt)
  {
    return paramInt >= 2;
  }
  
  public static int logW(String paramString)
  {
    return logW(TAG, paramString);
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
 * Qualified Name:     com.ja.analytics.utils.LogUtil
 * JD-Core Version:    0.7.0.1
 */