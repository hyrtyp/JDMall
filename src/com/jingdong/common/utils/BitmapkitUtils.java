package com.jingdong.common.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.view.KeyEvent;
import com.jingdong.common.MyApplication;
import com.jingdong.common.frame.IMainActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.ui.DialogController;

public class BitmapkitUtils
{
  private static final int RETRY_TIMES = 3;
  public boolean isLoadLibFailed = false;
  
  public static native byte[] encodeJni(byte[] paramArrayOfByte, boolean paramBoolean, Activity paramActivity);
  
  public void actionClose() {}
  
  public void actionFeedbackWebsite(IMainActivity paramIMainActivity)
  {
    Uri localUri = Uri.parse("http://m.jd.com/showvote.html");
    paramIMainActivity.getCurrentMyActivity().startActivityForResultNoExceptionStatic(paramIMainActivity.getThisActivity(), new Intent("android.intent.action.VIEW", localUri), 1);
    MyApplication.exitAll();
  }
  
  public void alertLoadlibFailedDialog(Handler paramHandler)
  {
    final IMainActivity localIMainActivity = MyApplication.getInstance().getMainFrameActivity();
    final DialogController local1 = new DialogController()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        case -1: 
          BitmapkitUtils.this.actionFeedbackWebsite(localIMainActivity);
          return;
        }
        BitmapkitUtils.this.actionClose();
      }
      
      public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        return true;
      }
    };
    local1.setTitle(StringUtil.prompt);
    local1.setMessage(StringUtil.comment_feedback);
    local1.setPositiveButton(StringUtil.label_feedback);
    local1.setNegativeButton(StringUtil.app_error_close);
    local1.init(localIMainActivity.getThisActivity());
    paramHandler.post(new Runnable()
    {
      public void run()
      {
        local1.show();
      }
    });
  }
  
  public boolean isLoadLibFailed()
  {
    return this.isLoadLibFailed;
  }
  
  public void loadNativeLibrary()
  {
    int i = 0;
    for (;;)
    {
      if (i >= 3) {
        return;
      }
      try
      {
        System.loadLibrary("jdbitmapkit");
        return;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        if (i < 2) {
          i++;
        } else {
          this.isLoadLibFailed = true;
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.BitmapkitUtils
 * JD-Core Version:    0.7.0.1
 */