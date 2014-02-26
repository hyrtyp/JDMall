package com.jd.lottery.lib.ui.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

public class ToastUtil
{
  private static Handler mHandler;
  private static Toast sToast = null;
  
  private static Handler getHandler()
  {
    if (mHandler == null) {
      mHandler = new Handler(Looper.getMainLooper());
    }
    return mHandler;
  }
  
  public static void longToast(Context paramContext, int paramInt)
  {
    showToast(paramContext, paramInt, 1);
  }
  
  public static void longToast(Context paramContext, String paramString)
  {
    showToast(paramContext, paramString, 1);
  }
  
  public static void shortToast(Context paramContext, int paramInt)
  {
    showToast(paramContext, paramInt, 0);
  }
  
  public static void shortToast(Context paramContext, String paramString)
  {
    showToast(paramContext, paramString, 0);
  }
  
  private static void showToast(Context paramContext, final int paramInt1, final int paramInt2)
  {
    getHandler().post(new Runnable()
    {
      public void run()
      {
        if (ToastUtil.sToast == null) {
          ToastUtil.sToast = Toast.makeText(ToastUtil.this, paramInt1, paramInt2);
        }
        for (;;)
        {
          ToastUtil.sToast.show();
          return;
          ToastUtil.sToast.setText(paramInt1);
          ToastUtil.sToast.setDuration(paramInt2);
        }
      }
    });
  }
  
  private static void showToast(Context paramContext, final String paramString, final int paramInt)
  {
    getHandler().post(new Runnable()
    {
      public void run()
      {
        if (ToastUtil.sToast == null) {
          ToastUtil.sToast = Toast.makeText(ToastUtil.this, paramString, paramInt);
        }
        for (;;)
        {
          ToastUtil.sToast.show();
          return;
          ToastUtil.sToast.setText(paramString);
          ToastUtil.sToast.setDuration(paramInt);
        }
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.ToastUtil
 * JD-Core Version:    0.7.0.1
 */