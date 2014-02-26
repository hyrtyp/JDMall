package com.jingdong.app.mall.more;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;

public class AboutActivity
  extends MyActivity
{
  private final String TAG = AboutActivity.class.getSimpleName();
  private TextView copyRightView;
  private View.OnClickListener listener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      switch (paramAnonymousView.getId())
      {
      default: 
        return;
      }
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      localIntent.putExtra("android.intent.extra.SUBJECT", AboutActivity.this.getString(2131165821));
      localIntent.putExtra("android.intent.extra.TEXT", AboutActivity.this.getString(2131165818));
      AboutActivity.this.startActivityNoException(Intent.createChooser(localIntent, AboutActivity.this.getString(2131165820)));
    }
  };
  private Button shareBtn;
  
  /* Error */
  private String getImageFileFromAsset()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: invokevirtual 44	com/jingdong/app/mall/more/AboutActivity:getAssets	()Landroid/content/res/AssetManager;
    //   6: ldc 46
    //   8: invokevirtual 52	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   11: astore 8
    //   13: iconst_1
    //   14: invokestatic 58	com/jingdong/common/utils/FileService:getDirectory	(I)Lcom/jingdong/common/utils/FileService$Directory;
    //   17: astore 9
    //   19: new 60	java/lang/StringBuilder
    //   22: dup
    //   23: ldc 62
    //   25: invokestatic 68	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   28: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: ldc 73
    //   33: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: astore 10
    //   41: new 82	java/io/File
    //   44: dup
    //   45: new 60	java/lang/StringBuilder
    //   48: dup
    //   49: aload 9
    //   51: invokevirtual 87	com/jingdong/common/utils/FileService$Directory:getPath	()Ljava/lang/String;
    //   54: invokestatic 68	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   57: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: getstatic 91	java/io/File:separatorChar	C
    //   63: invokevirtual 94	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   66: aload 10
    //   68: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokespecial 95	java/io/File:<init>	(Ljava/lang/String;)V
    //   77: astore 11
    //   79: new 97	java/io/FileOutputStream
    //   82: dup
    //   83: aload 11
    //   85: invokespecial 100	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   88: astore 12
    //   90: sipush 1024
    //   93: newarray byte
    //   95: astore 14
    //   97: aload 8
    //   99: aload 14
    //   101: invokevirtual 106	java/io/InputStream:read	([B)I
    //   104: iconst_m1
    //   105: if_icmpne +21 -> 126
    //   108: aload 12
    //   110: invokevirtual 109	java/io/FileOutputStream:flush	()V
    //   113: aload 12
    //   115: invokevirtual 112	java/io/FileOutputStream:close	()V
    //   118: aload 11
    //   120: astore_3
    //   121: aload_3
    //   122: invokestatic 116	com/jingdong/common/utils/FileService:saveShareImage	(Ljava/io/File;)Ljava/lang/String;
    //   125: areturn
    //   126: aload 12
    //   128: aload 14
    //   130: invokevirtual 120	java/io/FileOutputStream:write	([B)V
    //   133: goto -36 -> 97
    //   136: astore 13
    //   138: aload 11
    //   140: astore_3
    //   141: aload 12
    //   143: astore 4
    //   145: aload 4
    //   147: invokevirtual 112	java/io/FileOutputStream:close	()V
    //   150: goto -29 -> 121
    //   153: astore 5
    //   155: aload 5
    //   157: invokevirtual 123	java/io/IOException:printStackTrace	()V
    //   160: goto -39 -> 121
    //   163: astore 6
    //   165: aload_1
    //   166: invokevirtual 112	java/io/FileOutputStream:close	()V
    //   169: aload 6
    //   171: athrow
    //   172: astore 7
    //   174: aload 7
    //   176: invokevirtual 123	java/io/IOException:printStackTrace	()V
    //   179: goto -10 -> 169
    //   182: astore 15
    //   184: aload 15
    //   186: invokevirtual 123	java/io/IOException:printStackTrace	()V
    //   189: aload 11
    //   191: astore_3
    //   192: goto -71 -> 121
    //   195: astore 6
    //   197: aconst_null
    //   198: astore_1
    //   199: goto -34 -> 165
    //   202: astore 6
    //   204: aload 12
    //   206: astore_1
    //   207: goto -42 -> 165
    //   210: astore_2
    //   211: aconst_null
    //   212: astore_3
    //   213: aconst_null
    //   214: astore 4
    //   216: goto -71 -> 145
    //   219: astore 16
    //   221: aload 11
    //   223: astore_3
    //   224: aconst_null
    //   225: astore 4
    //   227: goto -82 -> 145
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	230	0	this	AboutActivity
    //   1	206	1	localObject1	Object
    //   210	1	2	localThrowable1	java.lang.Throwable
    //   120	104	3	localFile1	java.io.File
    //   143	83	4	localFileOutputStream1	java.io.FileOutputStream
    //   153	3	5	localIOException1	java.io.IOException
    //   163	7	6	localObject2	Object
    //   195	1	6	localObject3	Object
    //   202	1	6	localObject4	Object
    //   172	3	7	localIOException2	java.io.IOException
    //   11	87	8	localInputStream	java.io.InputStream
    //   17	33	9	localDirectory	com.jingdong.common.utils.FileService.Directory
    //   39	28	10	str	String
    //   77	145	11	localFile2	java.io.File
    //   88	117	12	localFileOutputStream2	java.io.FileOutputStream
    //   136	1	13	localThrowable2	java.lang.Throwable
    //   95	34	14	arrayOfByte	byte[]
    //   182	3	15	localIOException3	java.io.IOException
    //   219	1	16	localThrowable3	java.lang.Throwable
    // Exception table:
    //   from	to	target	type
    //   90	97	136	java/lang/Throwable
    //   97	113	136	java/lang/Throwable
    //   126	133	136	java/lang/Throwable
    //   145	150	153	java/io/IOException
    //   2	79	163	finally
    //   165	169	172	java/io/IOException
    //   113	118	182	java/io/IOException
    //   79	90	195	finally
    //   90	97	202	finally
    //   97	113	202	finally
    //   126	133	202	finally
    //   2	79	210	java/lang/Throwable
    //   79	90	219	java/lang/Throwable
  }
  
  private Integer getSoftwareVersionCode()
  {
    try
    {
      Integer localInteger = Integer.valueOf(getPackageManager().getPackageInfo(getPackageName(), 0).versionCode);
      return localInteger;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private String getSoftwareVersionName()
  {
    try
    {
      String str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private void showAboutContent()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("about");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("iphoneVersion");
        AboutActivity.this.post(new Runnable()
        {
          public void run()
          {
            AboutActivity.this.copyRightView.setText(str);
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    this.copyRightView = ((TextView)findViewById(2131492890));
    this.shareBtn = ((Button)findViewById(2131494684));
    this.shareBtn.setVisibility(0);
    this.shareBtn.setText(getString(2131165819));
    this.shareBtn.setOnClickListener(this.listener);
    ((TextView)findViewById(2131492990)).setText(2131165812);
    TextView localTextView = (TextView)findViewById(2131492889);
    String str = "For Android V" + getSoftwareVersionName();
    Integer localInteger = getSoftwareVersionCode();
    if (localInteger != null) {
      str = str + " build" + localInteger;
    }
    localTextView.setText(str);
    showAboutContent();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.more.AboutActivity
 * JD-Core Version:    0.7.0.1
 */