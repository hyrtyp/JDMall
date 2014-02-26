package com.jingdong.app.mall;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.jingdong.app.mall.plug.PlugManager;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.common.utils.ActivityUtils;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.FileService;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.SDKUtils;
import java.io.File;
import java.io.FileInputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MainActivity
  extends Activity
{
  private static final String TAG = "MainActivity";
  private final int INTERVAL = 2000;
  private final String START_IMAGE_NAME = "startimage.image";
  private Handler handler = new Handler();
  private RelativeLayout modal;
  private long startTime;
  
  private void init()
  {
    this.modal = new RelativeLayout(this);
    int i = 0;
    if (isStartImageBetweenDate())
    {
      File localFile = new File(CommonUtil.getJdSharedPreferences().getString("imagepath", "") + "/" + "startimage.image");
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        byte[] arrayOfByte2 = new FileService().readInputStream(localFileInputStream);
        arrayOfByte1 = arrayOfByte2;
      }
      catch (Throwable localThrowable1)
      {
        try
        {
          localBitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(arrayOfByte1, 0, arrayOfByte1.length));
          this.modal.setBackgroundDrawable(localBitmapDrawable);
          if (i == 0) {
            break label130;
          }
          setNewStartImage();
          this.modal.setOnTouchListener(new View.OnTouchListener()
          {
            public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
            {
              return true;
            }
          });
          setContentView(this.modal);
          return;
          localThrowable1 = localThrowable1;
          i = 1;
          byte[] arrayOfByte1 = null;
        }
        catch (Throwable localThrowable2)
        {
          for (;;)
          {
            System.gc();
          }
        }
      }
      if (arrayOfByte1 == null) {}
    }
    for (;;)
    {
      BitmapDrawable localBitmapDrawable;
      label130:
      setNewStartImage();
      i = 0;
    }
  }
  
  private void initPlug()
  {
    PlugManager.initPlugStatus(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        for (;;)
        {
          try
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            if (localJSONObjectProxy != null)
            {
              int i = Integer.parseInt(localJSONObjectProxy.getString("status"));
              switch (i)
              {
              }
            }
          }
          catch (Exception localException)
          {
            return;
            CommonUtil.setPlugOn(false);
            continue;
          }
          finally
          {
            MainActivity.this.startMainFrameActivity();
          }
          MainActivity.this.startMainFrameActivity();
          return;
          CommonUtil.setPlugOn(true);
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        MainActivity.this.startMainFrameActivity();
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        MainActivity.this.startTime = System.currentTimeMillis();
      }
    });
  }
  
  private void setNewStartImage()
  {
    int i = DPIUtil.getHeight();
    int j = DPIUtil.getWidth();
    int k = DPIUtil.dip2px(127.0F);
    int m = DPIUtil.dip2px(167.0F);
    int n = DPIUtil.dip2px(100.0F);
    int i1 = DPIUtil.dip2px(8.0F);
    this.modal.setBackgroundDrawable(getResources().getDrawable(2130838040));
    ImageView localImageView1 = new ImageView(this);
    localImageView1.setBackgroundDrawable(getResources().getDrawable(2130838043));
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(m, k);
    localLayoutParams1.topMargin = ((int)(0.3F * i));
    localLayoutParams1.leftMargin = ((j - m) / 2);
    localImageView1.setLayoutParams(localLayoutParams1);
    this.modal.addView(localImageView1);
    ImageView localImageView2 = new ImageView(this);
    localImageView2.setBackgroundDrawable(getResources().getDrawable(2130838041));
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(n, DPIUtil.dip2px(14.0F));
    localLayoutParams2.topMargin = (k + (i1 + localLayoutParams1.topMargin));
    localLayoutParams2.leftMargin = ((j - n) / 2);
    localImageView2.setLayoutParams(localLayoutParams2);
    this.modal.addView(localImageView2);
    final ImageView localImageView3 = new ImageView(this);
    localImageView3.setImageResource(2130838042);
    RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, DPIUtil.dip2px(10.0F));
    localLayoutParams2.topMargin += DPIUtil.dip2px(2.5F);
    localLayoutParams2.leftMargin -= DPIUtil.dip2px(20.0F);
    localImageView3.setLayoutParams(localLayoutParams3);
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, n - DPIUtil.dip2px(40.0F), 0.0F, 0.0F);
    localTranslateAnimation.setDuration(2500L);
    Animation.AnimationListener local4 = new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        localImageView3.setVisibility(8);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    };
    localTranslateAnimation.setAnimationListener(local4);
    this.modal.addView(localImageView3);
    localImageView3.startAnimation(localTranslateAnimation);
  }
  
  private void startMainFrameActivity()
  {
    try
    {
      long l1 = System.currentTimeMillis() - this.startTime;
      long l2 = 0L;
      if (l1 < 2000L) {
        l2 = 2000L - l1;
      }
      this.handler.postDelayed(new Runnable()
      {
        public void run()
        {
          MainFrameActivity.needStartImage = true;
          Intent localIntent = new Intent(MainActivity.this, MainFrameActivity.class);
          MainActivity.this.startActivity(localIntent);
          if (SDKUtils.isSDKVersionMoreThan16()) {
            ActivityUtils.setOverridePendingTransition(MainActivity.this, 0, 0);
          }
          MainActivity.this.finish();
        }
      }, l2);
      return;
    }
    finally {}
  }
  
  public boolean isStartImageBetweenDate()
  {
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    String str1 = localSharedPreferences.getString("endTime", "");
    String str2 = localSharedPreferences.getString("beginTime", "");
    if (str1.equals("")) {}
    do
    {
      return false;
      Date localDate1 = new Date();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
      Date localDate2 = null;
      try
      {
        localDate2 = localSimpleDateFormat.parse(str2);
        Date localDate4 = localSimpleDateFormat.parse(str1);
        localDate3 = localDate4;
      }
      catch (ParseException localParseException)
      {
        for (;;)
        {
          Date localDate3 = null;
        }
      }
    } while ((localDate3 == null) || (localDate2 == null) || (!localDate1.after(localDate2)) || (!localDate3.after(localDate1)));
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    MyApplication.runCount = 1 + MyApplication.runCount;
    init();
    initPlug();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.MainActivity
 * JD-Core Version:    0.7.0.1
 */