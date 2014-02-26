package com.jingdong.cloud.msg.util;

import android.os.Environment;
import android.os.Process;
import com.jingdong.cloud.msg.configuration.Configuration;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Log
{
  public static boolean D;
  public static boolean E;
  public static boolean I;
  public static final boolean IS_TEST;
  public static final String LOG_FILE;
  public static boolean V;
  public static boolean W;
  public static RandomAccessFile accessFile;
  private static boolean printLog = Boolean.parseBoolean(Configuration.getProperty("printLog", "true"));
  
  static
  {
    boolean bool1;
    if (printLog) {
      bool1 = Boolean.parseBoolean(Configuration.getProperty("debugLog", "false"));
    }
    for (;;)
    {
      D = bool1;
      boolean bool2;
      label51:
      boolean bool3;
      label72:
      boolean bool4;
      label93:
      boolean bool5;
      File localFile;
      if (printLog)
      {
        bool2 = Boolean.parseBoolean(Configuration.getProperty("viewLog", "false"));
        V = bool2;
        if (!printLog) {
          break label224;
        }
        bool3 = Boolean.parseBoolean(Configuration.getProperty("infoLog", "false"));
        I = bool3;
        if (!printLog) {
          break label229;
        }
        bool4 = Boolean.parseBoolean(Configuration.getProperty("warnLog", "false"));
        W = bool4;
        if (!printLog) {
          break label234;
        }
        bool5 = Boolean.parseBoolean(Configuration.getProperty("errorLog", "false"));
        E = bool5;
        LOG_FILE = Environment.getExternalStorageDirectory().getAbsolutePath() + "/jmp_log.txt";
        boolean bool6 = printLog;
        boolean bool7 = false;
        if (bool6) {
          bool7 = Boolean.parseBoolean(Configuration.getProperty("testmode", "false"));
        }
        IS_TEST = bool7;
        accessFile = null;
        if (IS_TEST)
        {
          localFile = new File(LOG_FILE);
          if (localFile.exists()) {}
        }
      }
      try
      {
        localFile.createNewFile();
        return;
        bool1 = false;
        continue;
        bool2 = false;
        break label51;
        label224:
        bool3 = false;
        break label72;
        label229:
        bool4 = false;
        break label93;
        label234:
        bool5 = false;
      }
      catch (IOException localIOException)
      {
        while (!E) {}
        localIOException.printStackTrace();
      }
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.d(paramString1, "tid:" + Process.myTid() + "; -->" + paramString2);
    saveLog(paramString1 + ":" + paramString2);
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.d(paramString1, paramString2, paramThrowable);
    saveLog(paramString1 + ":" + paramString2 + paramThrowable.getMessage());
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.e(paramString1, paramString2);
    saveLog(paramString1 + ":" + paramString2);
  }
  
  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.e(paramString1, paramString2, paramThrowable);
    saveLog(paramString1 + ":" + paramString2 + paramThrowable.getMessage());
  }
  
  public static void i(String paramString1, String paramString2)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.i(paramString1, paramString2);
    saveLog(paramString1 + ":" + paramString2);
  }
  
  public static void i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.i(paramString1, paramString2, paramThrowable);
    saveLog(paramString1 + ":" + paramString2 + paramThrowable.getMessage());
  }
  
  private static void saveLog(String paramString)
  {
    if (IS_TEST) {}
    try
    {
      if (accessFile == null) {
        accessFile = new RandomAccessFile(LOG_FILE, "rw");
      }
      long l = accessFile.length();
      accessFile.seek(l);
      Date localDate = new Date();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy MM dd HH mm ss");
      accessFile.writeBytes(localSimpleDateFormat.format(localDate) + ":");
      accessFile.writeBytes(paramString);
      accessFile.writeBytes("\r\n");
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public static void v(String paramString1, String paramString2)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.v(paramString1, paramString2);
    saveLog(paramString1 + ":" + paramString2);
  }
  
  public static void v(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.v(paramString1, paramString2, paramThrowable);
    saveLog(paramString1 + ":" + paramString2 + paramThrowable.getMessage());
  }
  
  public static void w(String paramString1, String paramString2)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.w(paramString1, paramString2);
    saveLog(paramString1 + ":" + paramString2);
  }
  
  public static void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.w(paramString1, paramString2, paramThrowable);
    saveLog(paramString1 + ":" + paramString2 + paramThrowable.getMessage());
  }
  
  public static void w(String paramString, Throwable paramThrowable)
  {
    if (!printLog) {
      return;
    }
    android.util.Log.w(paramString, paramThrowable);
    saveLog(paramString + ":" + paramThrowable.getMessage());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.util.Log
 * JD-Core Version:    0.7.0.1
 */