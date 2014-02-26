package com.jingdong.common.utils;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.Button;
import com.jingdong.common.MyApplication;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import java.io.File;

public class ApplicationUpgradeHelper
{
  public static final int INSTALL_REQUEST_CODE = 1001;
  private static final int MUST_UPDATE = 1;
  private static final int NEED_UPDATE = 2;
  private static final int NO_UPDATE = 0;
  private static final String TAG = "ApplicationUpgradeHelper";
  private static final String UPGRADE_CODE_MUST = "302";
  private static final String UPGRADE_CODE_NEED = "301";
  private static final String UPGRADE_CODE_NO = "300";
  private static AlertDialog alertDialog;
  private static AlertDialog.Builder alertDialogBuilder;
  private static DialogInterface.OnClickListener clickListener = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      switch (paramAnonymousInt)
      {
      }
      do
      {
        return;
        ApplicationUpgradeHelper.download(ApplicationUpgradeHelper.mMyActivity.getHttpGroupaAsynPool());
        ApplicationUpgradeHelper.alertDialog.getButton(paramAnonymousInt).setVisibility(8);
        ApplicationUpgradeHelper.access$3();
        return;
        if (ApplicationUpgradeHelper.upgradeState == 1)
        {
          if (ApplicationUpgradeHelper.httpRequest != null) {
            ApplicationUpgradeHelper.httpRequest.stop();
          }
          MyApplication.exitAll();
          return;
        }
        ApplicationUpgradeHelper.isCancel = true;
      } while (ApplicationUpgradeHelper.httpRequest == null);
      ApplicationUpgradeHelper.httpRequest.stop();
    }
  };
  private static HttpGroup.OnAllListener downloadListener = new HttpGroup.OnAllListener()
  {
    private String apkSizeStr = null;
    
    public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
    {
      if (ApplicationUpgradeHelper.isCancel) {}
      do
      {
        return;
        ApplicationUpgradeHelper.install(paramAnonymousHttpResponse.getSaveFile().getAbsolutePath());
      } while (!ApplicationUpgradeHelper.alertDialog.isShowing());
      ApplicationUpgradeHelper.alertDialog.dismiss();
    }
    
    public void onError(HttpGroup.HttpError paramAnonymousHttpError)
    {
      ApplicationUpgradeHelper.mMyActivity.post(new Runnable()
      {
        public void run()
        {
          ApplicationUpgradeHelper.alertDialog.setMessage("下载出错。请取消后重新尝试。");
        }
      });
    }
    
    public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (paramAnonymousInt1 > 0) {
        ApplicationUpgradeHelper.mApkSize = Integer.valueOf(paramAnonymousInt1);
      }
      if (ApplicationUpgradeHelper.mApkSize.intValue() == 0) {
        ApplicationUpgradeHelper.mApkSize = Integer.valueOf(-1);
      }
      int i = paramAnonymousInt2 * 100 / ApplicationUpgradeHelper.mApkSize.intValue();
      if (i > 99) {
        i = 99;
      }
      final int j = i;
      final String str = FileService.formatSize2(paramAnonymousInt2);
      ApplicationUpgradeHelper.mMyActivity.post(new Runnable()
      {
        public void run()
        {
          if (ApplicationUpgradeHelper.isCancel) {
            return;
          }
          if (!ApplicationUpgradeHelper.alertDialog.isShowing()) {
            ApplicationUpgradeHelper.alertDialog.show();
          }
          if (ApplicationUpgradeHelper.mApkSize.intValue() <= 0)
          {
            ApplicationUpgradeHelper.alertDialog.setMessage("下载中，请稍候...\n已下载：" + str);
            return;
          }
          if (ApplicationUpgradeHelper.2.this.apkSizeStr == null) {
            ApplicationUpgradeHelper.2.this.apkSizeStr = FileService.formatSize2(ApplicationUpgradeHelper.mApkSize.intValue());
          }
          ApplicationUpgradeHelper.alertDialog.setMessage("下载中，请稍候...\n" + j + "%， " + str + " / " + ApplicationUpgradeHelper.2.this.apkSizeStr);
        }
      });
    }
    
    public void onStart()
    {
      this.apkSizeStr = null;
    }
  };
  private static HttpGroup.HttpRequest httpRequest;
  private static boolean isCancel;
  private static Integer mApkSize = Integer.valueOf(-1);
  private static String mDownloadUrl;
  private static IMyActivity mMyActivity;
  private static String mRemoteVersion;
  private static int upgradeState;
  
  static
  {
    isCancel = false;
  }
  
  public static int compareSoftwareUpdate(String paramString)
  {
    if (TextUtils.equals(paramString, "300")) {}
    do
    {
      return 0;
      if (TextUtils.equals(paramString, "302")) {
        return 1;
      }
    } while (!TextUtils.equals(paramString, "301"));
    return 2;
  }
  
  private static void download(HttpGroup paramHttpGroup)
  {
    FileGuider localFileGuider = new FileGuider();
    localFileGuider.setSpace(1);
    localFileGuider.setImmutable(true);
    localFileGuider.setFileName("jingdong_" + mRemoteVersion + ".apk");
    localFileGuider.setMode(1);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setUrl(mDownloadUrl);
    localHttpSetting.setListener(downloadListener);
    localHttpSetting.setType(500);
    localHttpSetting.setSavePath(localFileGuider);
    httpRequest = paramHttpGroup.add(localHttpSetting);
  }
  
  private static void initDataAndDialog(IMyActivity paramIMyActivity, String paramString1, Integer paramInteger, String paramString2)
  {
    mMyActivity = paramIMyActivity;
    mDownloadUrl = paramString1;
    mApkSize = paramInteger;
    mRemoteVersion = paramString2;
    isCancel = false;
    alertDialogBuilder = new AlertDialog.Builder(mMyActivity.getThisActivity());
    alertDialogBuilder.setPositiveButton(StringUtil.ok, clickListener);
    alertDialogBuilder.setNegativeButton(StringUtil.cancel, clickListener);
    alertDialogBuilder.setOnKeyListener(new DialogInterface.OnKeyListener()
    {
      public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        return true;
      }
    });
  }
  
  private static void install(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setDataAndType(Uri.parse("file://" + paramString), "application/vnd.android.package-archive");
    if (upgradeState == 1)
    {
      mMyActivity.startActivityForResultNoException(localIntent, 1001);
      return;
    }
    mMyActivity.startActivityNoException(localIntent);
  }
  
  public static void tryDownloadAndInstall(IMyActivity paramIMyActivity, String paramString1, int paramInt, String paramString2, String paramString3)
  {
    initDataAndDialog(paramIMyActivity, paramString1, Integer.valueOf(paramInt), paramString3);
    alertDialogBuilder.setMessage(paramString2);
    alertDialog = alertDialogBuilder.show();
  }
  
  public static void tryDownloadAndInstall(IMyActivity paramIMyActivity, String paramString1, String paramString2, String paramString3)
  {
    tryDownloadAndInstall(paramIMyActivity, paramString1, -1, paramString2, paramString3);
  }
  
  public static void tryUpgrade(IMyActivity paramIMyActivity, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, boolean paramBoolean)
  {
    initDataAndDialog(paramIMyActivity, paramString3, Integer.valueOf(paramInt), paramString1);
    upgradeState = compareSoftwareUpdate(paramString2);
    switch (upgradeState)
    {
    }
    do
    {
      return;
      mMyActivity.post(new Runnable()
      {
        public void run()
        {
          String str = StringUtil.software_must_update_msg;
          ApplicationUpgradeHelper.alertDialogBuilder.setMessage(str + "\n\n升级改动：\n" + ApplicationUpgradeHelper.this);
          ApplicationUpgradeHelper.alertDialog = ApplicationUpgradeHelper.alertDialogBuilder.show();
        }
      });
      return;
      mMyActivity.post(new Runnable()
      {
        public void run()
        {
          String str = StringUtil.software_need_update_msg;
          ApplicationUpgradeHelper.alertDialogBuilder.setMessage(str + "\n\n升级改动：\n" + ApplicationUpgradeHelper.this);
          ApplicationUpgradeHelper.alertDialog = ApplicationUpgradeHelper.alertDialogBuilder.show();
        }
      });
      return;
    } while (paramBoolean);
    mMyActivity.post(new Runnable()
    {
      public void run()
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(ApplicationUpgradeHelper.mMyActivity.getThisActivity());
        localBuilder.setPositiveButton(StringUtil.ok, null);
        localBuilder.setTitle(StringUtil.prompt);
        localBuilder.setMessage(StringUtil.software_no_update_msg);
        localBuilder.show();
      }
    });
  }
  
  private static void updateUI()
  {
    mMyActivity.post(new Runnable()
    {
      public void run()
      {
        if (!ApplicationUpgradeHelper.alertDialog.isShowing()) {
          ApplicationUpgradeHelper.alertDialog.show();
        }
        ApplicationUpgradeHelper.alertDialog.setMessage("下载中，请稍候...");
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ApplicationUpgradeHelper
 * JD-Core Version:    0.7.0.1
 */