package com.jingdong.common.utils;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import com.jingdong.common.res.StringUtil;

public class DialogUtils
{
  public static void showDailog(Context paramContext, String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setMessage(paramString);
    localBuilder.setTitle(StringUtil.tip);
    localBuilder.setPositiveButton(StringUtil.ok, paramOnClickListener);
    localBuilder.create().show();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.DialogUtils
 * JD-Core Version:    0.7.0.1
 */