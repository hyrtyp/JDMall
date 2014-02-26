package com.jingdong.app.mall.amHelper;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.ui.HandlerRecycleBitmapDrawable;
import com.jingdong.common.utils.ActivityUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.SDKUtils;
import com.jingdong.common.utils.ShakeUtils;

public class AmShakeDialogNew
  extends MyActivity
  implements View.OnClickListener
{
  private static final long DELAY_TIME = 600L;
  private static final int SHAKE_ENTER = 1;
  private static final int SHAKE_EXIT = 2;
  private static final String TAG = AmShakeDialogNew.class.getSimpleName();
  public static AmShakeDialogNew instance = null;
  public static boolean isOnResume = false;
  public static boolean isReceiveCouponed = false;
  private long clickTime = 0L;
  ImageView imageViewShake_title;
  private View mAchieveProgressView;
  private MyActivity mActivity;
  private AmShakeResult mShakeResult;
  
  private void initCustomView()
  {
    findViewById(2131494484).setOnClickListener(this);
    this.imageViewShake_title = ((ImageView)findViewById(2131494474));
    showProduct();
  }
  
  private void loadHeader(String paramString)
  {
    if (paramString.equals("聚能有功"))
    {
      this.imageViewShake_title.setImageResource(2130837517);
      return;
    }
    if (paramString.equals("I WANT YOU"))
    {
      this.imageViewShake_title.setImageResource(2130837516);
      return;
    }
    if (paramString.equals("恭喜你"))
    {
      this.imageViewShake_title.setImageResource(2130837514);
      return;
    }
    if (paramString.equals("继续努力"))
    {
      this.imageViewShake_title.setImageResource(2130837515);
      return;
    }
    this.imageViewShake_title.setImageResource(2130837513);
  }
  
  private void loadProductImage(final ImageView paramImageView, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setType(5000);
    localHttpSetting.setPriority(5000);
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setEffect(0);
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
        AmShakeDialogNew.this.mActivity.post(new Runnable()
        {
          public void run()
          {
            if (this.val$imageView != null)
            {
              HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable = new HandlerRecycleBitmapDrawable(localBitmap, AmShakeDialogNew.this.mActivity);
              this.val$imageView.setImageDrawable(localHandlerRecycleBitmapDrawable);
            }
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        AmShakeDialogNew.this.mActivity.post(new Runnable()
        {
          public void run()
          {
            if (this.val$imageView != null)
            {
              this.val$imageView.setImageDrawable(new ExceptionDrawable(AmShakeDialogNew.this.mActivity, AmShakeDialogNew.this.mActivity.getString(2131165185)));
              this.val$imageView.setOnClickListener(new View.OnClickListener()
              {
                public void onClick(View paramAnonymous3View) {}
              });
            }
          }
        });
      }
    });
    this.mActivity.getHttpGroupaAsynPool(5000).add(localHttpSetting);
  }
  
  @TargetApi(5)
  private void showPopupAnim()
  {
    if (SDKUtils.isSDKVersionMoreThan16()) {
      ActivityUtils.setOverridePendingTransition(this, 2130968580, 2130968581);
    }
  }
  
  private void showProduct()
  {
    isReceiveCouponed = true;
    TextView localTextView = (TextView)findViewById(2131494505);
    ImageView localImageView = (ImageView)findViewById(2131494502);
    if ((this.mShakeResult != null) && (this.mShakeResult.getCode().equals("0")))
    {
      AmHelper.getInstance().startShakeSound(1);
      loadHeader(this.mShakeResult.getTitle());
      loadProductImage(localImageView, this.mShakeResult.getImgUrl());
      localTextView.setText(this.mShakeResult.getMsg());
      return;
    }
    AmHelper.getInstance().startShakeSound(2);
    this.imageViewShake_title.setImageResource(2130837512);
    localImageView.setImageResource(2130837511);
    localTextView.setText(2131166557);
  }
  
  public void destroyAllData()
  {
    this.mShakeResult = null;
    this.imageViewShake_title = null;
    this.mAchieveProgressView = null;
  }
  
  public void finish()
  {
    super.finish();
    showPopupAnim();
  }
  
  public void onClick(View paramView)
  {
    if (System.currentTimeMillis() - this.clickTime > 600L) {
      this.clickTime = System.currentTimeMillis();
    }
    switch (paramView.getId())
    {
    default: 
      return;
    }
    ShakeUtils.onJMAEvent(getBaseContext(), "JDAnnualMeeting", AmHelper.getShakeParams("resultCloseTap"));
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mActivity = this;
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null) {}
    try
    {
      this.mShakeResult = ((AmShakeResult)localBundle.get("result"));
      label36:
      showPopupAnim();
      setContentView(2130903300);
      initCustomView();
      instance = this;
      WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
      localLayoutParams.gravity = 48;
      getWindow().setAttributes(localLayoutParams);
      return;
    }
    catch (Exception localException)
    {
      break label36;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    finish();
    AmShakeActivity.mShakeIsStop = false;
  }
  
  protected void onPause()
  {
    AmShakeActivity.hasPause = true;
    super.onPause();
    ShakeUtils.shakeRunnableStop();
  }
  
  protected void onResume()
  {
    AmShakeActivity.hasPause = false;
    super.onResume();
    ShakeUtils.shakeRunnableStart();
    AmShakeActivity.mShakeIsStop = false;
  }
  
  protected void onStop()
  {
    super.onStop();
  }
  
  public void setAchieveProgressVisible(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (AmShakeDialogNew.this.mAchieveProgressView != null)
        {
          AmShakeDialogNew.this.mAchieveProgressView.setVisibility(paramInt);
          AmShakeDialogNew.this.mAchieveProgressView.setBackgroundDrawable(AmShakeDialogNew.this.getResources().getDrawable(2130838265));
          if (paramInt == 0)
          {
            TextView localTextView = (TextView)AmShakeDialogNew.this.mAchieveProgressView.findViewById(2131493611);
            if (localTextView != null)
            {
              localTextView.setText(AmShakeDialogNew.this.getString(2131166549));
              localTextView.setTextColor(AmShakeDialogNew.this.getResources().getColor(2131296396));
            }
          }
        }
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.amHelper.AmShakeDialogNew
 * JD-Core Version:    0.7.0.1
 */