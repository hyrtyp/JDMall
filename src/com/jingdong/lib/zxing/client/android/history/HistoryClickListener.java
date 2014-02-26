package com.jingdong.lib.zxing.client.android.history;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Message;
import com.google.zxing.Result;
import com.jingdong.lib.zxing.client.android.CaptureActivity;
import java.util.List;

final class HistoryClickListener
  implements DialogInterface.OnClickListener
{
  private final CaptureActivity activity;
  private final String[] dialogItems;
  private final HistoryManager historyManager;
  private final List<Result> items;
  
  HistoryClickListener(HistoryManager paramHistoryManager, CaptureActivity paramCaptureActivity, String[] paramArrayOfString, List<Result> paramList)
  {
    this.historyManager = paramHistoryManager;
    this.activity = paramCaptureActivity;
    this.dialogItems = paramArrayOfString;
    this.items = paramList;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1 + this.dialogItems.length)
    {
      this.historyManager.clearHistory();
      return;
    }
    if (paramInt == -2 + this.dialogItems.length)
    {
      Uri localUri = HistoryManager.saveHistory(this.historyManager.buildHistory().toString());
      if (localUri == null)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.activity);
        localBuilder.setMessage(2131166651);
        localBuilder.setPositiveButton(2131166593, null);
        localBuilder.show();
        return;
      }
      Intent localIntent = new Intent("android.intent.action.SEND", Uri.parse("mailto:"));
      localIntent.addFlags(524288);
      String str = this.activity.getResources().getString(2131166615);
      localIntent.putExtra("android.intent.extra.SUBJECT", str);
      localIntent.putExtra("android.intent.extra.TEXT", str);
      localIntent.putExtra("android.intent.extra.STREAM", localUri);
      localIntent.setType("text/csv");
      this.activity.startActivity(localIntent);
      return;
    }
    Result localResult = (Result)this.items.get(paramInt);
    Message.obtain(this.activity.getHandler(), 2131492879, localResult).sendToTarget();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.history.HistoryClickListener
 * JD-Core Version:    0.7.0.1
 */