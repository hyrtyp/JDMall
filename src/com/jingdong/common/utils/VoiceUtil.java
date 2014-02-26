package com.jingdong.common.utils;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import java.util.ArrayList;
import java.util.List;

public class VoiceUtil
{
  private static final String TAG = "VoiceUtil";
  public static final int VOICE_RECOGNITION_REQUEST_CODE = 1234;
  
  public static void handleVoiceResult(IMyActivity paramIMyActivity, Intent paramIntent, final WebView paramWebView)
  {
    if ((paramIMyActivity == null) || (paramIntent == null) || (paramWebView == null)) {}
    ArrayList localArrayList;
    int i;
    do
    {
      return;
      localArrayList = paramIntent.getStringArrayListExtra("android.speech.extra.RESULTS");
      i = localArrayList.size();
    } while (i <= 0);
    String[] arrayOfString = new String[i];
    for (int j = 0;; j++)
    {
      if (j >= i)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramIMyActivity.getThisActivity());
        localBuilder.setTitle(StringUtil.voice_search_please_choose);
        localBuilder.setItems(arrayOfString, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            String str1 = VoiceUtil.this[paramAnonymousInt];
            String str2 = "javascript:speechInputCallBack('" + str1 + "')";
            paramWebView.loadUrl(str2);
            paramAnonymousDialogInterface.dismiss();
          }
        });
        paramIMyActivity.post(new Runnable()
        {
          public void run()
          {
            if (VoiceUtil.this != null) {
              VoiceUtil.this.show();
            }
          }
        });
        return;
      }
      arrayOfString[j] = ((String)localArrayList.get(j));
    }
  }
  
  public static void showVoiceDialog(IMyActivity paramIMyActivity)
  {
    List localList = paramIMyActivity.getThisActivity().getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0);
    if ((localList != null) && (localList.size() > 0))
    {
      startRecognizeActivty(paramIMyActivity);
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramIMyActivity.getThisActivity());
    localBuilder.setTitle(StringUtil.voice_search_title);
    localBuilder.setMessage(StringUtil.voice_search_message_hint);
    localBuilder.setPositiveButton(StringUtil.ok, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://union.m.jd.com/download/go.action?to=http%3A%2F%2Fapp.jd.com%2Fdownload%2Fandroid%2Fvoice.apk&client=android&unionId=12532&key=eb5ba3c113b616165e3d763a1f0ce731"));
        VoiceUtil.this.startActivityNoException(localIntent);
        paramAnonymousDialogInterface.dismiss();
      }
    });
    localBuilder.setNegativeButton(StringUtil.cancel, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    paramIMyActivity.post(new Runnable()
    {
      public void run()
      {
        VoiceUtil.this.show();
      }
    });
  }
  
  private static void startRecognizeActivty(IMyActivity paramIMyActivity)
  {
    Intent localIntent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    localIntent.putExtra("android.speech.extra.PROMPT", "");
    paramIMyActivity.startActivityForResultNoException(localIntent, 1234);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.VoiceUtil
 * JD-Core Version:    0.7.0.1
 */