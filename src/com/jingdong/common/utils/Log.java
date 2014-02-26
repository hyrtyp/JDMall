package com.jingdong.common.utils;

import android.os.Environment;
import java.io.RandomAccessFile;

public class Log
{
  public static final boolean D;
  public static final boolean E;
  public static final boolean I;
  public static final boolean IS_TEST;
  public static final String LOG_FILE = Environment.getExternalStorageDirectory() + "/jd_log.txt";
  public static final boolean V;
  public static final boolean W;
  private static RandomAccessFile accessFile;
  private static final boolean printLog;
  
  public static void d(String paramString1, String paramString2) {}
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable) {}
  
  public static void e(String paramString1, String paramString2) {}
  
  public static void e(String paramString1, String paramString2, Throwable paramThrowable) {}
  
  public static void i(String paramString1, String paramString2) {}
  
  public static void i(String paramString1, String paramString2, Throwable paramThrowable) {}
  
  private static void saveLog(String paramString) {}
  
  public static void v(String paramString1, String paramString2) {}
  
  public static void v(String paramString1, String paramString2, Throwable paramThrowable) {}
  
  public static void w(String paramString1, String paramString2) {}
  
  public static void w(String paramString1, String paramString2, Throwable paramThrowable) {}
  
  public static void w(String paramString, Throwable paramThrowable) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.Log
 * JD-Core Version:    0.7.0.1
 */