package com.ja.analytics.logcrash;

import android.content.Context;
import com.ja.analytics.utils.LogUtil;
import java.io.PrintWriter;
import java.io.StringWriter;

public class CrashUncaughtExceptionHandler
  implements Thread.UncaughtExceptionHandler
{
  private static int FRIST_LINE = 3;
  private static String KEYWORD = "com.ja.sdk";
  private static final int MAX_LOG_LENGTH = 500;
  public static final String TAG = CrashUncaughtExceptionHandler.class.getName();
  private static Boolean bFindKeywords;
  private static StringBuffer errorDataBuffer = new StringBuffer();
  private static CrashUncaughtExceptionHandler uncaughtExceptionHandler = new CrashUncaughtExceptionHandler();
  private Boolean bUncaughtExceptionFlag = Boolean.valueOf(false);
  private Context mContext = null;
  private Thread.UncaughtExceptionHandler mUncuaghtExceptionHandler = null;
  
  static
  {
    bFindKeywords = Boolean.valueOf(false);
  }
  
  private static void addExceptionString(int paramInt, StackTraceElement[] paramArrayOfStackTraceElement, StringBuffer paramStringBuffer)
  {
    paramStringBuffer.append(paramArrayOfStackTraceElement[paramInt].getClassName() + "." + paramArrayOfStackTraceElement[paramInt].getMethodName() + "(" + paramArrayOfStackTraceElement[paramInt].getLineNumber() + ")" + "\n");
  }
  
  public static CrashUncaughtExceptionHandler getSingleton()
  {
    return uncaughtExceptionHandler;
  }
  
  public static String resolve(Throwable paramThrowable)
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(errorDataBuffer.toString());
      resolveCause(paramThrowable, localStringBuffer, true);
      LogUtil.logD(TAG, "size = " + localStringBuffer.length());
      LogUtil.logD(TAG, localStringBuffer.toString());
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
    StringBuffer localStringBuffer;
    if (paramThrowable != null)
    {
      localStringBuffer = new StringBuffer();
      if ((paramBoolean) || (paramThrowable.getCause() == null)) {
        break label51;
      }
      resolveCause(paramThrowable.getCause(), localStringBuffer, false);
    }
    int m;
    for (;;)
    {
      m = -1 + (500 - paramStringBuffer.length());
      if (m >= 1) {
        break;
      }
      return;
      label51:
      localStringBuffer.append(paramThrowable.toString());
      localStringBuffer.append("-");
      StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
      int i = -1;
      int j = 0;
      if (j >= arrayOfStackTraceElement.length)
      {
        label87:
        if (paramThrowable.getCause() != null) {
          resolveCause(paramThrowable.getCause(), localStringBuffer, false);
        }
      }
      else
      {
        if (j < FRIST_LINE)
        {
          addExceptionString(j, arrayOfStackTraceElement, localStringBuffer);
          if (arrayOfStackTraceElement[j].getClassName().contains(KEYWORD))
          {
            bFindKeywords = Boolean.valueOf(true);
            i = FRIST_LINE;
          }
        }
        for (;;)
        {
          j++;
          break;
          if (paramThrowable.getCause() != null) {
            break label87;
          }
          if (i == -1)
          {
            if (arrayOfStackTraceElement[j].getClassName().contains(KEYWORD))
            {
              bFindKeywords = Boolean.valueOf(true);
              i = j;
              addExceptionString(j, arrayOfStackTraceElement, localStringBuffer);
            }
          }
          else if ((paramThrowable.getCause() == null) && (j >= i)) {
            addExceptionString(j, arrayOfStackTraceElement, localStringBuffer);
          }
        }
      }
      if (i == -1)
      {
        LogUtil.logD(TAG, "recordLine == -1recordLine == -1");
        for (int k = -1 + FRIST_LINE; k < arrayOfStackTraceElement.length; k++) {
          addExceptionString(k, arrayOfStackTraceElement, localStringBuffer);
        }
      }
    }
    if (localStringBuffer.length() > m)
    {
      paramStringBuffer.append(localStringBuffer.substring(localStringBuffer.length() - m, -1 + localStringBuffer.length()));
      return;
    }
    paramStringBuffer.append(localStringBuffer);
  }
  
  public Boolean getUncaughtExceptionFlag()
  {
    return this.bUncaughtExceptionFlag;
  }
  
  public void setUncatchedExceptionHandler(Context paramContext)
  {
    if (this.mUncuaghtExceptionHandler == null)
    {
      this.mUncuaghtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
      Thread.setDefaultUncaughtExceptionHandler(this);
    }
    if (this.mContext == null) {
      this.mContext = paramContext.getApplicationContext();
    }
  }
  
  public void setUncaughtExceptionFlag(Boolean paramBoolean)
  {
    this.bUncaughtExceptionFlag = paramBoolean;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    paramThrowable.printStackTrace(localPrintWriter);
    localPrintWriter.close();
    String str = localStringWriter.toString();
    resolve(paramThrowable);
    LogUtil.logD(TAG, "异常数据:" + str);
    CrashLog.getSingleton().onCrashLogSave(this.mContext, paramThrowable);
    if (!this.mUncuaghtExceptionHandler.equals(this)) {
      this.mUncuaghtExceptionHandler.uncaughtException(paramThread, paramThrowable);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.logcrash.CrashUncaughtExceptionHandler
 * JD-Core Version:    0.7.0.1
 */