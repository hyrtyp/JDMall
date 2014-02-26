package com.jd.droidlib.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.jd.droidlib.Injector;
import java.io.PrintWriter;
import java.io.StringWriter;

public class L
{
  public static final int ASSERT = 7;
  public static final int DEBUG = 3;
  private static final int DISABLE = 1024;
  public static final int ERROR = 6;
  public static final int INFO = 4;
  private static final String TAG = "DroidLib";
  public static final int VERBOSE = 2;
  public static final int WARN = 5;
  private static int _debug;
  private static int _logLevel;
  private static String _tag;
  private static boolean muted;
  
  public static void d(Object paramObject)
  {
    if (isLoggable(3)) {
      log(3, paramObject);
    }
  }
  
  public static void d(String paramString, Object... paramVarArgs)
  {
    if (isLoggable(3)) {
      log(3, paramString, paramVarArgs);
    }
  }
  
  public static void e(Object paramObject)
  {
    if (isLoggable(6)) {
      log(6, paramObject);
    }
  }
  
  public static void e(String paramString, Throwable paramThrowable)
  {
    if (isLoggable(6)) {
      Log.e(getTag(isDebug()), paramString, paramThrowable);
    }
  }
  
  public static void e(String paramString, Object... paramVarArgs)
  {
    if (isLoggable(6)) {
      log(6, paramString, paramVarArgs);
    }
  }
  
  private static int getLogLevel()
  {
    int i = 1024;
    Context localContext;
    if (_logLevel == 0)
    {
      localContext = Injector.getApplicationContext();
      if (localContext == null) {}
    }
    try
    {
      String str2 = localContext.getPackageManager().getApplicationInfo(localContext.getPackageName(), 128).metaData.getString("droidlib_log_level").toLowerCase().trim();
      str1 = str2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str1 = null;
      }
    }
    if ("verbose".equals(str1)) {
      _logLevel = 2;
    }
    for (;;)
    {
      if (_logLevel != 0) {
        i = _logLevel;
      }
      return i;
      if ("debug".equals(str1))
      {
        _logLevel = 3;
      }
      else if ("info".equals(str1))
      {
        _logLevel = 4;
      }
      else if ("warn".equals(str1))
      {
        _logLevel = 5;
      }
      else if ("error".equals(str1))
      {
        _logLevel = 6;
      }
      else if ("assert".equals(str1))
      {
        _logLevel = 7;
      }
      else if ("disable".equals(str1))
      {
        _logLevel = i;
      }
      else
      {
        _logLevel = i;
        Log.i("DroidLib", "No valid <meta-data android:name=\"droidlib_log_level\" android:value=\"...\"/> in AndroidManifest.xml. Logging disabled.");
      }
    }
  }
  
  private static String getTag(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[5];
      String str1 = localStackTraceElement.getClassName();
      String str2 = str1.substring(1 + str1.lastIndexOf("."), str1.length());
      StringBuilder localStringBuilder = new StringBuilder(5);
      localStringBuilder.append(str2);
      localStringBuilder.append(".");
      localStringBuilder.append(localStackTraceElement.getMethodName());
      localStringBuilder.append("():");
      localStringBuilder.append(localStackTraceElement.getLineNumber());
      return localStringBuilder.toString();
    }
    if (_tag == null)
    {
      Context localContext = Injector.getApplicationContext();
      if (localContext != null) {
        _tag = localContext.getPackageName();
      }
    }
    if (_tag != null) {
      return _tag;
    }
    return "DroidLib";
  }
  
  public static void i(Object paramObject)
  {
    if (isLoggable(4)) {
      log(4, paramObject);
    }
  }
  
  public static void i(String paramString, Object... paramVarArgs)
  {
    if (isLoggable(4)) {
      log(4, paramString, paramVarArgs);
    }
  }
  
  private static boolean isDebug()
  {
    if (_debug == 0)
    {
      Context localContext = Injector.getApplicationContext();
      if (localContext != null) {
        if (!AppUtils.isDebuggable(localContext)) {
          break label36;
        }
      }
    }
    label36:
    for (int i = 1;; i = -1)
    {
      _debug = i;
      if (_debug != 1) {
        break;
      }
      return true;
    }
    return false;
  }
  
  public static boolean isLoggable(int paramInt)
  {
    if (muted) {
      if (paramInt != 7) {}
    }
    while ((isDebug()) || (paramInt >= getLogLevel()))
    {
      return true;
      return false;
    }
    return false;
  }
  
  private static void log(int paramInt, Object paramObject)
  {
    String str;
    if ((paramObject instanceof Throwable))
    {
      StringWriter localStringWriter = new StringWriter();
      ((Throwable)paramObject).printStackTrace(new PrintWriter(localStringWriter));
      str = localStringWriter.toString();
    }
    for (;;)
    {
      Log.println(paramInt, getTag(isDebug()), str);
      return;
      str = String.valueOf(paramObject);
      if (Strings.isEmpty(str)) {
        str = "\"\"";
      }
    }
  }
  
  private static void log(int paramInt, String paramString, Object... paramVarArgs)
  {
    try
    {
      String str = String.format(paramString, paramVarArgs);
      Log.println(paramInt, getTag(isDebug()), str);
      return;
    }
    catch (Exception localException)
    {
      e(localException);
    }
  }
  
  public static void setMuted(boolean paramBoolean)
  {
    muted = paramBoolean;
  }
  
  public static void v(Object paramObject)
  {
    if (isLoggable(2)) {
      log(2, paramObject);
    }
  }
  
  public static void v(String paramString, Object... paramVarArgs)
  {
    if (isLoggable(2)) {
      log(2, paramString, paramVarArgs);
    }
  }
  
  public static void w(Object paramObject)
  {
    if (isLoggable(5)) {
      log(5, paramObject);
    }
  }
  
  public static void w(String paramString, Object... paramVarArgs)
  {
    if (isLoggable(5)) {
      log(5, paramString, paramVarArgs);
    }
  }
  
  public static void wtf()
  {
    if (isLoggable(7)) {
      log(7, "WTF");
    }
  }
  
  public static void wtf(Object paramObject)
  {
    if (isLoggable(7)) {
      log(7, paramObject);
    }
  }
  
  public static void wtf(String paramString, Object... paramVarArgs)
  {
    if (isLoggable(7)) {
      log(7, paramString, paramVarArgs);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.L
 * JD-Core Version:    0.7.0.1
 */