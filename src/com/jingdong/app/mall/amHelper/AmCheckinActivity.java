package com.jingdong.app.mall.amHelper;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.shake.ShakeAnimationUtils;
import com.jingdong.app.mall.shake.ShakeListener;
import com.jingdong.app.mall.shake.ShakeListener.OnShakeListener;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JDImageUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.ShakeUtils;
import java.io.IOException;

public class AmCheckinActivity
  extends MyActivity
{
  private final int SHAKE_SOUND_MAX = 3;
  private String TAG = AmCheckinActivity.class.getSimpleName();
  private boolean mShakeIsStop = false;
  private ShakeListener mShakeListener;
  private Vibrator mVibrator;
  private SoundPool sndPool;
  private Integer soundId;
  private String token;
  
  private void doCheckin()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setEffect(1);
    localHttpSetting.setFunctionId("checkinAnnual");
    if (TextUtils.isEmpty(this.token)) {}
    for (String str = "";; str = this.token)
    {
      localHttpSetting.putJsonParam("tk", str);
      localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            final String str1 = localJSONObjectProxy.getStringOrNull("sc");
            localJSONObjectProxy.getStringOrNull("pinType");
            localJSONObjectProxy.getStringOrNull("name");
            final String str2 = localJSONObjectProxy.getStringOrNull("number");
            AmCheckinActivity.this.post(new Runnable()
            {
              public void run()
              {
                AmCheckinActivity localAmCheckinActivity;
                StringBuilder localStringBuilder;
                if (!TextUtils.isEmpty(str1))
                {
                  if (!str1.equals("0")) {
                    break label86;
                  }
                  localAmCheckinActivity = AmCheckinActivity.this;
                  localStringBuilder = new StringBuilder("您的入场编号是");
                  if (!TextUtils.isEmpty(str2)) {
                    break label78;
                  }
                }
                label78:
                for (String str = "";; str = str2)
                {
                  localAmCheckinActivity.showAlertDialog("签到成功", str, AmCheckinActivity.this.token);
                  return;
                }
                label86:
                Toast.makeText(AmCheckinActivity.this, 2131166556, 1).show();
              }
            });
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          AmCheckinActivity.this.post(new Runnable()
          {
            public void run()
            {
              Toast.makeText(AmCheckinActivity.this, 2131166556, 1).show();
              AmCheckinActivity.this.mShakeListener.start();
            }
          });
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
  }
  
  private void findView()
  {
    this.mVibrator = ((Vibrator)getSystemService("vibrator"));
    this.sndPool = new SoundPool(3, 1, 5);
    try
    {
      this.soundId = Integer.valueOf(this.sndPool.load(getAssets().openFd("sound/shakeing.mp3"), 1));
      localRelativeLayout = (RelativeLayout)findViewById(2131492978);
    }
    catch (IOException localIOException)
    {
      try
      {
        for (;;)
        {
          RelativeLayout localRelativeLayout;
          localRelativeLayout.setBackgroundDrawable(new BitmapDrawable(JDImageUtils.getBitmapWithJpg16(this, 2130837654)));
          label78:
          TextView localTextView = (TextView)findViewById(2131492979);
          ImageView localImageView1 = (ImageView)findViewById(2131492983);
          ImageView localImageView2 = (ImageView)findViewById(2131492982);
          ImageView localImageView3 = (ImageView)findViewById(2131492981);
          try
          {
            localImageView2.setImageBitmap(scaleImage(BitmapFactory.decodeResource(getResources(), 2130837672)));
            localImageView3.setImageBitmap(scaleImage(BitmapFactory.decodeResource(getResources(), 2130837673)));
            this.mShakeListener = new ShakeListener(this);
            this.mShakeListener.setOnShakeListener(new ShakeListener.OnShakeListener()
            {
              public void onShake()
              {
                if (AmCheckinActivity.this.mShakeIsStop) {
                  return;
                }
                ShakeUtils.onJMAEvent(AmCheckinActivity.this.getBaseContext(), "JDAnnualMeeting", AmHelper.getShakeParams("checkedIn_Shake"));
                AmCheckinActivity.this.stopShakeListener();
                AmCheckinActivity.this.startToShake();
              }
            });
            this.mShakeListener.start();
            localImageView1.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymousView)
              {
                AmCheckinActivity.this.stopShakeListener();
                ShakeUtils.onJMAEvent(AmCheckinActivity.this.getBaseContext(), "JDAnnualMeeting", AmHelper.getShakeParams("checkedIn_Tap"));
                AmCheckinActivity.this.doCheckin();
              }
            });
            String str1 = getIntent().getStringExtra("name");
            if (TextUtils.isEmpty(str1)) {
              str1 = "京东人";
            }
            String str2 = str1 + " , ";
            localTextView.setText(getUserName(str2 + "您好！", str2));
            ShakeAnimationUtils.startBottomAnim(this, localImageView2, localImageView3);
            return;
            localIOException = localIOException;
            localIOException.printStackTrace();
          }
          catch (Throwable localThrowable2)
          {
            for (;;)
            {
              localThrowable2.printStackTrace();
            }
          }
        }
      }
      catch (Throwable localThrowable1)
      {
        break label78;
      }
    }
  }
  
  private CharSequence getUserName(String paramString1, String paramString2)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString1);
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-1280), 0, paramString2.length(), 33);
    localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.44F), 0, paramString2.length(), 33);
    return localSpannableStringBuilder;
  }
  
  private Bitmap scaleImage(Bitmap paramBitmap)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(DPIUtil.getDefaultDisplay().getWidth() / 720.0F, DPIUtil.getDefaultDisplay().getHeight() / 1280.0F);
    return Bitmap.createBitmap(paramBitmap, 0, 0, i, j, localMatrix, true);
  }
  
  private void showAlertDialog(String paramString1, String paramString2, final String paramString3)
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(this).create();
    localAlertDialog.setMessage(paramString2);
    localAlertDialog.setTitle(paramString1);
    localAlertDialog.setButton(getText(2131165731), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        Intent localIntent = new Intent(AmCheckinActivity.this, AmHelperActivity.class);
        if (TextUtils.isEmpty(paramString3)) {}
        for (String str = "";; str = paramString3)
        {
          localIntent.putExtra("token", str);
          AmCheckinActivity.this.startActivityInFrame(localIntent);
          AmCheckinActivity.this.finish();
          paramAnonymousDialogInterface.dismiss();
          return;
        }
      }
    });
    localAlertDialog.show();
  }
  
  private void startShakeListener()
  {
    if (this.mShakeListener != null) {
      this.mShakeListener.start();
    }
  }
  
  private void startShakeSound()
  {
    if ((this.sndPool != null) && (this.soundId != null)) {
      this.sndPool.play(this.soundId.intValue(), 0.5F, 0.5F, 0, 0, 1.0F);
    }
  }
  
  private void stopShakeListener()
  {
    if (this.mShakeListener != null) {
      this.mShakeListener.stop();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(ImageUtil.inflate(2130903050, null));
    findView();
    this.token = getIntent().getStringExtra("token");
    if (TextUtils.isEmpty(this.token)) {
      this.token = AmHelper.token;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    startShakeListener();
    this.mShakeIsStop = false;
  }
  
  protected void onStop()
  {
    super.onStop();
    stopShakeListener();
    this.mShakeIsStop = true;
  }
  
  protected void startToShake()
  {
    startVibrato();
    startShakeSound();
    doCheckin();
  }
  
  public void startVibrato()
  {
    this.mVibrator.vibrate(new long[] { 500L, 200L, 500L, 200L }, -1);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.amHelper.AmCheckinActivity
 * JD-Core Version:    0.7.0.1
 */