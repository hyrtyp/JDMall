package com.jingdong.common.utils;

import android.widget.Toast;
import com.jingdong.common.frame.IMyActivity;

public class ToastUtils
{
  public static void showToast(IMyActivity paramIMyActivity, final String paramString)
  {
    paramIMyActivity.post(new Runnable()
    {
      public void run()
      {
        Toast.makeText(ToastUtils.this.getThisActivity(), paramString, 0).show();
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ToastUtils
 * JD-Core Version:    0.7.0.1
 */