package com.jingdong.common.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.jingdong.common.MyApplication;
import com.jingdong.common.frame.IMyActivity;

public class MyUncaughtExceptionHandler
  implements Thread.UncaughtExceptionHandler
{
  private static StringBuffer errorDataBuffer = new StringBuffer();
  private Context context;
  private Thread.UncaughtExceptionHandler mOldUncaughtExceptionHandler;
  
  public MyUncaughtExceptionHandler(Context paramContext)
  {
    this.context = paramContext;
    this.mOldUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
  }
  
  public static void appendErrorInfo(String paramString)
  {
    errorDataBuffer.append(paramString);
  }
  
  private boolean myUncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    IMyActivity localIMyActivity = MyApplication.getInstance().getCurrentMyActivity();
    if (localIMyActivity != null) {
      localIMyActivity.finish();
    }
    Intent localIntent = new Intent(this.context, MyApplication.getInstance().getErrorActivityClass());
    localIntent.setFlags(268435456);
    try
    {
      String str = errorDataBuffer.toString() + "||" + ResolveException.resolve(paramThrowable);
      localIntent.putExtra("user", StatisticsReportUtil.getReportString(true));
      localIntent.putExtra("error", str);
      this.context.startActivity(localIntent);
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      System.exit(0);
    }
    return true;
  }
  
  public static void resetErrorInfo(String paramString)
  {
    errorDataBuffer.setLength(0);
    errorDataBuffer.append(paramString);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    if ((!myUncaughtException(paramThread, paramThrowable)) && (this.mOldUncaughtExceptionHandler != null))
    {
      this.mOldUncaughtExceptionHandler.uncaughtException(paramThread, paramThrowable);
      return;
    }
    Process.killProcess(Process.myTid());
    System.exit(0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.MyUncaughtExceptionHandler
 * JD-Core Version:    0.7.0.1
 */