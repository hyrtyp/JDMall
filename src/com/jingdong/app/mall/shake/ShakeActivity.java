package com.jingdong.app.mall.shake;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.ShakeBDInfo;
import com.jingdong.common.entity.ShakeData;
import com.jingdong.common.entity.ShakeResult;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.FileService;
import com.jingdong.common.utils.FileService.Directory;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JDImageUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MathsUtils;
import com.jingdong.common.utils.ShakeUtils;
import com.jingdong.common.utils.URLParamMap;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class ShakeActivity
  extends MyActivity
{
  private static final long DELAY_TIME = 2000L;
  public static final float HEIGHT = 1136.0F;
  public static final int SHAKE_DELAY_TIME = 2000;
  public static final int SHAKE_DELAY_TIME_CAN_SHAKE = 2100;
  public static final int SHAKE_DIALOG_CLOSE = 1;
  public static final String SHAKE_POPULARITY_KEYE = "popularity_key";
  public static final boolean SHAKE_POPULARITY_VALUE = true;
  public static final String SHAKE_SINGER_TYPE = "singer";
  private static final int SHAKE_SOUND_MAX = 4;
  private static final int SHAKE_SOUND_TYPE_AGAIN = 2;
  private static final int SHAKE_SOUND_TYPE_NOTHING = 3;
  private static final int SHAKE_SOUND_TYPE_SHAKEING = 0;
  private static final int SHAKE_SOUND_TYPE_SOMETHING = 1;
  public static final String SHAKE_TYPE = "shake_type";
  private static final String TAG = ShakeActivity.class.getSimpleName();
  public static final float WIDTH = 640.0F;
  public static boolean hasPause = false;
  public static boolean mShakeIsStop = false;
  private boolean animEnable = false;
  private long clickTime = 0L;
  private boolean isCanClickButton = true;
  public boolean isHintUser = false;
  private boolean isPopularityQuerying = false;
  public boolean isShowDialog;
  private String mCurrentShakeTimes = "";
  private Animation mHandAnimation;
  private ImageView mHandImageView;
  Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if ((paramAnonymousMessage.what == 0) && (ShakeActivity.this.mHandAnimation != null) && (ShakeActivity.this.mHandImageView != null))
      {
        ShakeActivity.this.mHandImageView.startAnimation(ShakeActivity.this.mHandAnimation);
        ShakeActivity.mShakeIsStop = false;
      }
    }
  };
  private ImageView mImageView;
  private boolean mIsCanShake = true;
  private String mJLOGEvent = "";
  private String mJLOGKey = "";
  private String mJLOGValue = "";
  private ImageView mLoopImage;
  private int mMaxIntShakeTime;
  private String mMaxShakeTime;
  private ImageView mPopularityImageView;
  private View mProgressView;
  private boolean mShakeActivityIsDestry = false;
  private ShakeBDInfo mShakeBDInfo;
  private Button mShakeBack;
  private ImageView mShakeBottomShake;
  private ImageView mShakeBottomShakeFirst;
  private boolean mShakeDataIsQuerying = false;
  private RelativeLayout mShakeHomeBg;
  private RelativeLayout mShakeHomeUploadBg;
  private ShakeListener mShakeListener = null;
  private ProgressBar mShakeProgressBar;
  private ShakeResult mShakeResult;
  private Button mShakeShare;
  private boolean mShakeTimeSuccess = true;
  private int mShakeTimes;
  private TextView mShakeTimesTextView;
  private String mShakeType = "";
  private String mStandardDateFromSD = "";
  private Vibrator mVibrator;
  final Runnable runnableServiceStart = new Runnable()
  {
    public void run()
    {
      ShakeActivity.this.startShakeListener();
    }
  };
  final Runnable runnableServiceStop = new Runnable()
  {
    public void run()
    {
      ShakeActivity.this.stopShakeListener();
    }
  };
  final Runnable runnableShowAffirmDialog = new Runnable()
  {
    public void run()
    {
      ShakeActivity.this.showAffirmToast();
    }
  };
  private Handler shakeHandler = new Handler()
  {
    public void dispatchMessage(Message paramAnonymousMessage)
    {
      super.dispatchMessage(paramAnonymousMessage);
    }
  };
  private boolean shakeMoreTimesDialog = false;
  private Runnable shakeRunnable = new Runnable()
  {
    public void run()
    {
      ShakeActivity.this.showShakeResult(ShakeActivity.this.switchValue);
      ShakeActivity.this.cancelVibrator();
      if ((ShakeActivity.this.mShakeTimes > 0) && (ShakeActivity.this.switchValue != 6))
      {
        ShakeActivity localShakeActivity = ShakeActivity.this;
        localShakeActivity.mShakeTimes = (-1 + localShakeActivity.mShakeTimes);
      }
      String str1 = String.valueOf(ShakeActivity.this.mShakeTimes);
      String str2 = ShakeActivity.this.mStandardDateFromSD + ":" + str1;
      ShakeActivity.this.updateShakeTimes(str1);
      ShakeActivity.this.saveStringToCache(str2);
      ShakeActivity.this.post(new Runnable()
      {
        public void run()
        {
          ShakeActivity.this.startShakeListener();
          ShakeActivity.this.mShakeDataIsQuerying = false;
        }
      }, 500);
    }
  };
  private SoundPool sndPool;
  private HashMap<Integer, Integer> soundPoolMap = new HashMap();
  private String standardDate;
  private int switchValue = 0;
  
  private void avoidMoreTimeClick()
  {
    if (System.currentTimeMillis() - this.clickTime > 2000L) {
      this.clickTime = System.currentTimeMillis();
    }
  }
  
  private void avoidMoreTimeClicked()
  {
    this.isCanClickButton = false;
    post(new Runnable()
    {
      public void run()
      {
        ShakeActivity.this.isCanClickButton = true;
      }
    }, 3000);
  }
  
  private void cancelVibrator()
  {
    if (this.mVibrator != null) {
      this.mVibrator.cancel();
    }
  }
  
  private void clearAnim()
  {
    this.animEnable = false;
    this.mHandImageView.clearAnimation();
    if (isSingerShake()) {
      this.mLoopImage.setBackgroundResource(2130838252);
    }
    for (;;)
    {
      this.mLoopImage.clearAnimation();
      return;
      this.mLoopImage.setBackgroundResource(2130838223);
    }
  }
  
  private void closeShakeDialog()
  {
    if (ShakeDialogNew.instance != null)
    {
      ShakeDialogNew.instance.destroyAllData();
      ShakeDialogNew.instance.finish();
      ShakeDialogNew.instance = null;
      this.isShowDialog = false;
    }
  }
  
  private void delayCancelVibrator(int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        ShakeActivity.this.cancelVibrator();
      }
    }, paramInt);
  }
  
  private void delayStartShakeListener(int paramInt)
  {
    if (mShakeIsStop) {
      return;
    }
    post(new Runnable()
    {
      public void run()
      {
        ShakeActivity.this.startShakeListener();
      }
    }, paramInt);
  }
  
  private void destroyAllData()
  {
    this.mShakeResult = null;
    this.mShakeShare = null;
    this.mShakeProgressBar = null;
    this.mStandardDateFromSD = null;
    this.mCurrentShakeTimes = null;
    this.mMaxShakeTime = null;
    this.standardDate = null;
    this.mProgressView = null;
    this.mShakeBDInfo = null;
    this.mPopularityImageView = null;
    this.mShakeBottomShakeFirst = null;
    this.mShakeBottomShake = null;
    this.mShakeListener = null;
    this.mVibrator = null;
    this.sndPool = null;
    this.soundPoolMap = null;
    this.mShakeBDInfo = null;
    this.mShakeHomeBg = null;
  }
  
  private void forwardPopularityList()
  {
    String str = "";
    this.isPopularityQuerying = true;
    if (this.mShakeBDInfo != null)
    {
      ShakeData localShakeData = this.mShakeBDInfo.getData();
      if (localShakeData != null) {
        str = localShakeData.getRankUrl();
      }
    }
    if ((TextUtils.isEmpty("action")) || (TextUtils.isEmpty(str)))
    {
      this.isPopularityQuerying = false;
      return;
    }
    URLParamMap localURLParamMap = new URLParamMap();
    localURLParamMap.put("to", str);
    CommonUtil.queryBrowserUrl("action", localURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        ShakeActivity.this.isPopularityQuerying = false;
        if (!TextUtils.isEmpty(paramAnonymousString)) {
          ShakeActivity.this.runOnUiThread(new Runnable()
          {
            public void run()
            {
              Intent localIntent = new Intent(ShakeActivity.this, WebActivity.class);
              localIntent.putExtra("url", paramAnonymousString);
              localIntent.putExtra("popularity_key", true);
              ShakeActivity.this.startActivity(localIntent);
              ShakeActivity.this.isPopularityQuerying = false;
            }
          });
        }
      }
    });
  }
  
  private void initAllViews()
  {
    this.mVibrator = ((Vibrator)getApplication().getSystemService("vibrator"));
    this.mShakeTimesTextView = ((TextView)findViewById(2131494465));
    this.mShakeProgressBar = ((ProgressBar)findViewById(2131494466));
    this.mShakeBack = ((Button)findViewById(2131494458));
    this.mShakeShare = ((Button)findViewById(2131494459));
    this.mLoopImage = ((ImageView)findViewById(2131494462));
    this.mHandImageView = ((ImageView)findViewById(2131494461));
    this.mShakeBack.setOnClickListener(new ShakeOnClickListener(null));
    this.mShakeShare.setOnClickListener(new ShakeOnClickListener(null));
    this.mProgressView = findViewById(2131494467);
    this.mShakeHomeBg = ((RelativeLayout)findViewById(2131494457));
    this.mShakeHomeUploadBg = ((RelativeLayout)findViewById(2131494456));
    if (isSingerShake())
    {
      if (isShowPopularity())
      {
        this.mPopularityImageView = ((ImageView)findViewById(2131494473));
        this.mPopularityImageView.setOnClickListener(new ShakeOnClickListener(null));
        this.mPopularityImageView.setVisibility(0);
      }
      this.mShakeBottomShake = ((ImageView)findViewById(2131494471));
      this.mShakeBottomShakeFirst = ((ImageView)findViewById(2131494470));
      Drawable localDrawable1 = ImageUtil.scaleDrawable(getResources().getDrawable(2130838199), 640.0F, 1136.0F);
      Drawable localDrawable2 = ImageUtil.scaleDrawable(getResources().getDrawable(2130838198), 640.0F, 1136.0F);
      this.mShakeBottomShake.setImageDrawable(localDrawable1);
      this.mShakeBottomShakeFirst.setImageDrawable(localDrawable2);
    }
  }
  
  private void initToast()
  {
    View localView = getLayoutInflater().inflate(2130903305, null);
    ((TextView)localView.findViewById(2131494527)).setText("My Toast");
    if (ShakeDialogNew.instance != null)
    {
      Toast localToast = new Toast(ShakeDialogNew.instance);
      localToast.setGravity(17, 0, 0);
      localToast.setDuration(0);
      localToast.setView(localView);
      localToast.show();
    }
  }
  
  private boolean isShowPopularity()
  {
    ShakeData localShakeData;
    if ((isSingerShake()) && (this.mShakeBDInfo != null)) {
      localShakeData = this.mShakeBDInfo.getData();
    }
    return (localShakeData == null) || (1 == localShakeData.getIsRank());
  }
  
  private boolean isSingerShake()
  {
    return TextUtils.equals(this.mShakeType, "singer");
  }
  
  private void loadShakeTimes(final String paramString1, final String paramString2)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("shakeTimes");
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        ShakeActivity.this.mShakeTimeSuccess = true;
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null)
        {
          ShakeActivity.this.mMaxShakeTime = localJSONObjectProxy.getStringOrNull("shakeTimes");
          ShakeActivity.this.standardDate = localJSONObjectProxy.getStringOrNull("currentDate");
          if (!TextUtils.isEmpty(ShakeActivity.this.mMaxShakeTime))
          {
            ShakeActivity.this.mShakeTimes = MathsUtils.parseInt(ShakeActivity.this.mMaxShakeTime, 0);
            ShakeActivity.this.mMaxIntShakeTime = ShakeActivity.this.mShakeTimes;
          }
          String str = ShakeActivity.this.standardDate + ":" + ShakeActivity.this.mMaxIntShakeTime;
          if ((!TextUtils.equals(ShakeActivity.this.standardDate, paramString1)) || (TextUtils.isEmpty(paramString1))) {
            ShakeActivity.this.saveStringToCache(str);
          }
          for (;;)
          {
            ShakeActivity.this.updateShakeTimes(ShakeActivity.this.mMaxShakeTime);
            ShakeActivity.this.optionsViewVisible(8);
            return;
            if (!TextUtils.isEmpty(paramString2)) {
              if (MathsUtils.parseInt(paramString2, 0) > ShakeActivity.this.mMaxIntShakeTime) {
                ShakeActivity.this.mShakeTimes = ShakeActivity.this.mMaxIntShakeTime;
              } else {
                ShakeActivity.this.mMaxShakeTime = paramString2;
              }
            }
          }
        }
        ShakeActivity.this.showError();
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        ShakeActivity.this.showError();
        ShakeActivity.this.optionsViewVisible(8);
        ShakeActivity.this.mShakeTimeSuccess = false;
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void loadSound()
  {
    this.sndPool = new SoundPool(4, 1, 5);
    new Thread()
    {
      public void run()
      {
        try
        {
          ShakeActivity.this.soundPoolMap.put(Integer.valueOf(0), Integer.valueOf(ShakeActivity.this.sndPool.load(ShakeActivity.this.getAssets().openFd("sound/shakeing.mp3"), 1)));
          ShakeActivity.this.soundPoolMap.put(Integer.valueOf(1), Integer.valueOf(ShakeActivity.this.sndPool.load(ShakeActivity.this.getAssets().openFd("sound/shake_something.mp3"), 1)));
          ShakeActivity.this.soundPoolMap.put(Integer.valueOf(2), Integer.valueOf(ShakeActivity.this.sndPool.load(ShakeActivity.this.getAssets().openFd("sound/shake_again.mp3"), 1)));
          ShakeActivity.this.soundPoolMap.put(Integer.valueOf(3), Integer.valueOf(ShakeActivity.this.sndPool.load(ShakeActivity.this.getAssets().openFd("sound/shake_nothing.mp3"), 1)));
          return;
        }
        catch (IOException localIOException) {}
      }
    }.start();
  }
  
  private int obtainFunctionId(String paramString)
  {
    int i;
    if (TextUtils.equals(paramString, "sku")) {
      i = 1;
    }
    boolean bool;
    do
    {
      return i;
      if (TextUtils.equals(paramString, "special_sku")) {
        return 2;
      }
      if (TextUtils.equals(paramString, "coupon")) {
        return 3;
      }
      if (TextUtils.equals(paramString, "bean")) {
        return 4;
      }
      if (TextUtils.equals(paramString, "nothing")) {
        return 5;
      }
      if (TextUtils.equals(paramString, "more")) {
        return 6;
      }
      if (TextUtils.equals(paramString, "special_prize")) {
        return 8;
      }
      bool = TextUtils.equals(paramString, "hot_sku");
      i = 0;
    } while (!bool);
    return 7;
  }
  
  private void optionHomeBg(Bitmap paramBitmap)
  {
    if (this.mShakeBDInfo != null)
    {
      ShakeData localShakeData = this.mShakeBDInfo.getData();
      if (localShakeData != null)
      {
        String str = localShakeData.getBkgUrl();
        ShakeController.loadHomeBackground(getHttpGroupaAsynPool(), this, this.mShakeHomeBg, this.mShakeHomeUploadBg, str, paramBitmap);
      }
    }
  }
  
  private String optionsHomeShare()
  {
    if (this.mShakeBDInfo != null)
    {
      ShakeData localShakeData = this.mShakeBDInfo.getData();
      if (localShakeData != null) {
        return localShakeData.getShareIndexAnd();
      }
    }
    return "";
  }
  
  private void optionsViewVisible(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (ShakeActivity.this.mShakeProgressBar != null) {
          ShakeActivity.this.mShakeProgressBar.setVisibility(paramInt);
        }
      }
    });
  }
  
  private void querryShakeData()
  {
    this.mShakeDataIsQuerying = true;
    setShakeProgressVisible(0);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("shake");
    localHttpSetting.setEffect(0);
    if (shakeDialogIsShowing()) {
      localHttpSetting.setNotifyUser(false);
    }
    for (;;)
    {
      localHttpSetting.setListener(new HttpGroup.OnCommonListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          ShakeActivity.this.setShakeProgressVisible(8);
          ShakeActivity.this.mJLOGEvent = "shake_shake";
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
          if (localJSONObjectProxy != null) {
            try
            {
              ShakeActivity.this.mShakeResult = new ShakeResult(localJSONObjectProxy);
              if (ShakeActivity.this.mShakeResult != null)
              {
                String str = ShakeActivity.this.mShakeResult.getType();
                ShakeActivity.this.switchValue = ShakeActivity.this.obtainFunctionId(str);
                ShakeActivity.this.mJLOGValue = str;
                ShakeActivity.this.mJLOGKey = "type";
                if ((TextUtils.equals(str, "bean")) || (TextUtils.equals(str, "coupon")) || (TextUtils.equals(str, "special_prize"))) {
                  ShakeActivity.this.isHintUser = true;
                }
                ShakeActivity.this.stopShakeListener();
                ShakeActivity.this.shakeHandler.postDelayed(ShakeActivity.this.shakeRunnable, 500L);
              }
              return;
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              ShakeActivity.this.mJLOGValue = "-1";
              ShakeActivity.this.mJLOGKey = "err";
              return;
            }
            finally
            {
              ShakeUtils.onJMAEvent(ShakeActivity.this.getBaseContext(), ShakeActivity.this.mJLOGEvent, ShakeActivity.this.getShakeParams());
            }
          }
          ShakeActivity.this.mJLOGValue = "-1";
          ShakeActivity.this.mJLOGKey = "err";
          ShakeUtils.onJMAEvent(ShakeActivity.this.getBaseContext(), ShakeActivity.this.mJLOGEvent, ShakeActivity.this.getShakeParams());
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          ShakeActivity.this.setShakeProgressVisible(8);
          if (paramAnonymousHttpError != null)
          {
            int i = paramAnonymousHttpError.getErrorCode();
            ShakeActivity.this.mJLOGValue = String.valueOf(i);
            ShakeActivity.this.mJLOGKey = "err";
            ShakeActivity.this.mJLOGEvent = "shake_shake";
            ShakeUtils.onJMAEvent(ShakeActivity.this.getBaseContext(), ShakeActivity.this.mJLOGEvent, ShakeActivity.this.getShakeParams());
            if ((30 == paramAnonymousHttpError.getJsonCode()) && (ShakeActivity.this.shakeDialogIsShowing()) && (!ShakeActivity.this.shakeMoreTimesDialog))
            {
              final String str = ShakeActivity.this.getString(2131166548);
              ShakeActivity.this.post(new Runnable()
              {
                public void run()
                {
                  ShakeActivity.this.showCustomDialog(str);
                }
              });
            }
          }
          ShakeActivity.this.startShakeListener();
          ShakeActivity.this.cancelVibrator();
          ShakeActivity.this.mShakeDataIsQuerying = false;
        }
        
        public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
      });
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      localHttpSetting.setNotifyUser(true);
    }
  }
  
  private boolean shakeDialogIsShowing()
  {
    return (this.isShowDialog) && (ShakeDialogNew.instance != null);
  }
  
  private void showAffirmToast()
  {
    if ((ShakeDialogNew.instance == null) || (!this.isHintUser)) {
      return;
    }
    this.isHintUser = false;
    Toast localToast = Toast.makeText(ShakeDialogNew.instance, getString(2131166538), 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
    delayStartShakeListener(2000);
  }
  
  private void showCustomDialog(String paramString)
  {
    if (ShakeDialogNew.instance == null) {
      return;
    }
    final AlertDialog localAlertDialog = new AlertDialog.Builder(ShakeDialogNew.instance).create();
    localAlertDialog.setMessage(paramString);
    localAlertDialog.setTitle(2131166509);
    DialogInterface.OnClickListener local18 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        }
        do
        {
          return;
          localAlertDialog.dismiss();
          ShakeActivity.this.shakeMoreTimesDialog = false;
        } while (ShakeDialogNew.instance == null);
        ShakeDialogNew.instance.finish();
        ShakeDialogNew.instance = null;
      }
    };
    localAlertDialog.setButton(-1, getString(2131165517), local18);
    try
    {
      localAlertDialog.show();
      this.shakeMoreTimesDialog = true;
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  private void showError() {}
  
  private void showNoShakeTimesToast()
  {
    post(new Runnable()
    {
      public void run()
      {
        Toast localToast = Toast.makeText(ShakeActivity.this, ShakeActivity.this.getString(2131166515), 0);
        localToast.setGravity(17, 0, 0);
        localToast.show();
      }
    });
    delayStartShakeListener(2000);
  }
  
  private void showShakeResult(int paramInt)
  {
    switch (paramInt)
    {
    case 9: 
    default: 
      if (this.mShakeTimes > 0)
      {
        if (!this.mShakeActivityIsDestry) {
          break label128;
        }
        this.mShakeActivityIsDestry = false;
      }
      break;
    }
    label128:
    while (this.isShowDialog)
    {
      return;
      startShakeSound(1);
      break;
      startShakeSound(1);
      break;
      startShakeSound(1);
      break;
      startShakeSound(1);
      break;
      startShakeSound(3);
      break;
      startShakeSound(2);
      break;
      startShakeSound(1);
      break;
    }
    Intent localIntent = new Intent(this, ShakeDialogNew.class);
    localIntent.putExtra("type", paramInt);
    localIntent.putExtra("result", this.mShakeResult);
    localIntent.putExtra("shake_type", this.mShakeType);
    ShakeUtils.shakeCallback(this, this.runnableServiceStart, this.runnableServiceStop);
    startActivityForResultNoException(localIntent, 1);
    this.isShowDialog = true;
  }
  
  private void showShakeToast()
  {
    if ((this.isHintUser) && (this.isShowDialog) && (ShakeDialogNew.instance != null)) {
      ShakeDialogNew.instance.getHandler().post(this.runnableShowAffirmDialog);
    }
  }
  
  private void startAnim()
  {
    if (isSingerShake()) {
      this.mLoopImage.setBackgroundResource(2130838257);
    }
    for (;;)
    {
      ((AnimationDrawable)this.mLoopImage.getBackground()).start();
      return;
      if (this.mHandAnimation == null)
      {
        this.mHandAnimation = AnimationUtils.loadAnimation(this, 2130968590);
        this.mHandAnimation.setRepeatCount(-1);
        this.mHandAnimation.setRepeatMode(-1);
        this.mHandAnimation.setStartOffset(2000L);
        this.mHandAnimation.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymousAnimation)
          {
            if (!ShakeActivity.this.animEnable) {
              return;
            }
            Message localMessage = ShakeActivity.this.mHandler.obtainMessage(0);
            ShakeActivity.this.mHandler.sendMessageDelayed(localMessage, 800L);
          }
          
          public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
          
          public void onAnimationStart(Animation paramAnonymousAnimation) {}
        });
      }
      Message localMessage = this.mHandler.obtainMessage(0);
      this.mHandler.sendMessage(localMessage);
      this.mLoopImage.setBackgroundResource(2130838245);
    }
  }
  
  /* Error */
  private void startShakeListener()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 122	com/jingdong/app/mall/shake/ShakeActivity:hasPause	Z
    //   5: istore_2
    //   6: iload_2
    //   7: ifeq +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: getfield 127	com/jingdong/app/mall/shake/ShakeActivity:mShakeListener	Lcom/jingdong/app/mall/shake/ShakeListener;
    //   17: ifnull -7 -> 10
    //   20: aload_0
    //   21: getfield 127	com/jingdong/app/mall/shake/ShakeActivity:mShakeListener	Lcom/jingdong/app/mall/shake/ShakeListener;
    //   24: invokevirtual 823	com/jingdong/app/mall/shake/ShakeListener:isShakeListenerStart	()Z
    //   27: ifne -17 -> 10
    //   30: aload_0
    //   31: getfield 127	com/jingdong/app/mall/shake/ShakeActivity:mShakeListener	Lcom/jingdong/app/mall/shake/ShakeListener;
    //   34: invokevirtual 824	com/jingdong/app/mall/shake/ShakeListener:start	()V
    //   37: goto -27 -> 10
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	ShakeActivity
    //   40	4	1	localObject	Object
    //   5	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	6	40	finally
    //   13	37	40	finally
  }
  
  private void startShakeSound(int paramInt)
  {
    if ((this.sndPool != null) && (this.soundPoolMap != null) && (this.soundPoolMap.size() > paramInt)) {
      this.sndPool.play(((Integer)this.soundPoolMap.get(Integer.valueOf(paramInt))).intValue(), 0.5F, 0.5F, 0, 0, 1.0F);
    }
  }
  
  private void stopShakeListener()
  {
    try
    {
      if ((this.mShakeListener != null) && (this.mShakeListener.isShakeListenerStart())) {
        this.mShakeListener.stop();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void updateShakeTimes(String paramString)
  {
    try
    {
      ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(getResources().getColor(2131296414));
      final SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getResources().getString(2131166514, new Object[] { paramString }));
      int i = 8 + paramString.length();
      localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.0F), 8, i, 33);
      localSpannableStringBuilder.setSpan(localForegroundColorSpan, 8, i, 33);
      post(new Runnable()
      {
        public void run()
        {
          if (ShakeActivity.this.mShakeTimesTextView != null)
          {
            ShakeActivity.this.mShakeTimesTextView.setVisibility(0);
            ShakeActivity.this.mShakeTimesTextView.setText(localSpannableStringBuilder);
          }
        }
      });
      return;
    }
    catch (Exception localException) {}
  }
  
  public void finish()
  {
    ShakeUtils.mShakeRunnableStart = null;
    ShakeUtils.mShakeRunnableStop = null;
    super.finish();
  }
  
  public Map<String, String> getShakeParams()
  {
    HashMap localHashMap = new HashMap();
    if (TextUtils.equals(this.mJLOGEvent, "share_sns"))
    {
      localHashMap.put("from", "shake_shake");
      return localHashMap;
    }
    localHashMap.put(this.mJLOGKey, this.mJLOGValue);
    return localHashMap;
  }
  
  public final boolean isScreenLocked()
  {
    return ((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == 0)
    {
      this.isShowDialog = false;
      this.isHintUser = false;
      mShakeIsStop = false;
      if (this.mShakeTimes != 0) {
        delayStartShakeListener(0);
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mShakeBDInfo = ((ShakeBDInfo)getIntent().getExtras().get("shake_type"));
    if (this.mShakeBDInfo != null) {
      this.mShakeType = this.mShakeBDInfo.getType();
    }
    int i;
    if (isSingerShake())
    {
      i = 2130903297;
      setContentView(i);
      initAllViews();
      loadSound();
      ShakeAnimationUtils.startBottomAnim(this, this.mShakeBottomShake, this.mShakeBottomShakeFirst);
      String[] arrayOfString = ShakeUtils.loadShakeTimesFromSD();
      if ((arrayOfString != null) && (arrayOfString.length > 0))
      {
        this.mStandardDateFromSD = arrayOfString[0].trim();
        this.mCurrentShakeTimes = arrayOfString[1].trim();
      }
      optionsViewVisible(0);
      if (!isSingerShake()) {
        break label217;
      }
    }
    label217:
    for (Bitmap localBitmap = JDImageUtils.getBitmapWithJpg(this, 2130838229);; localBitmap = JDImageUtils.getBitmapWithJpg(this, 2130838197))
    {
      if ((localBitmap != null) && (this.mShakeHomeBg != null)) {
        this.mShakeHomeBg.setBackgroundDrawable(new BitmapDrawable(localBitmap));
      }
      optionHomeBg(localBitmap);
      loadShakeTimes(this.mStandardDateFromSD, this.mCurrentShakeTimes);
      this.mShakeListener = new ShakeListener(this);
      startShakeListener();
      this.mShakeListener.setOnShakeListener(new ShakeListener.OnShakeListener()
      {
        public void onShake()
        {
          if ((!ShakeActivity.this.mIsCanShake) || (ShakeActivity.this.isPopularityQuerying)) {}
          String str1;
          do
          {
            do
            {
              String[] arrayOfString;
              do
              {
                do
                {
                  return;
                  ShakeActivity.this.mIsCanShake = false;
                  ShakeActivity.this.post(new Runnable()
                  {
                    public void run()
                    {
                      ShakeActivity.this.mIsCanShake = true;
                    }
                  }, 2100);
                  if (!ShakeActivity.this.mShakeTimeSuccess)
                  {
                    ShakeActivity.this.startVibrato();
                    ShakeActivity.this.startShakeSound(0);
                    ShakeActivity.this.loadShakeTimes(ShakeActivity.this.mStandardDateFromSD, ShakeActivity.this.mCurrentShakeTimes);
                    ShakeActivity.this.startShakeListener();
                    return;
                  }
                } while (TextUtils.isEmpty(ShakeActivity.this.standardDate));
                if (ShakeActivity.this.mShakeDataIsQuerying)
                {
                  ShakeActivity.this.startShakeListener();
                  return;
                }
                ShakeActivity.this.stopShakeListener();
                arrayOfString = ShakeUtils.loadShakeTimesFromSD();
              } while ((arrayOfString == null) || (arrayOfString.length <= 1));
              ShakeActivity.this.mStandardDateFromSD = arrayOfString[0].trim();
              ShakeActivity.this.mCurrentShakeTimes = arrayOfString[1].trim();
              str1 = ShakeActivity.this.standardDate;
              if (!TextUtils.isEmpty(ShakeActivity.this.mCurrentShakeTimes)) {
                ShakeActivity.this.mShakeTimes = MathsUtils.parseInt(ShakeActivity.this.mCurrentShakeTimes, 0);
              }
              if (ShakeDialogNew.isReceiveCouponed)
              {
                ShakeDialogNew.isReceiveCouponed = false;
                ShakeActivity.this.isHintUser = false;
              }
            } while ((TextUtils.isEmpty(ShakeActivity.this.mStandardDateFromSD)) || (TextUtils.isEmpty(str1)));
            if (ShakeActivity.this.isHintUser)
            {
              ShakeActivity.this.showShakeToast();
              return;
            }
            ShakeActivity.this.closeShakeDialog();
            if (!TextUtils.equals(ShakeActivity.this.mStandardDateFromSD, str1)) {
              break label377;
            }
            if (ShakeActivity.this.mShakeTimes > 0) {
              break;
            }
          } while (ShakeActivity.this.isHintUser);
          ShakeActivity.this.startVibrato();
          ShakeActivity.this.startShakeSound(0);
          ShakeActivity.this.showNoShakeTimesToast();
          return;
          if (ShakeActivity.this.mShakeTimes > ShakeActivity.this.mMaxIntShakeTime) {
            ShakeActivity.this.mShakeTimes = ShakeActivity.this.mMaxIntShakeTime;
          }
          ShakeActivity.this.startToShake();
          return;
          label377:
          ShakeActivity.this.mShakeTimes = ShakeActivity.this.mMaxIntShakeTime;
          String str2 = str1 + ":" + ShakeActivity.this.mShakeTimes;
          ShakeActivity.this.saveStringToCache(str2);
          ShakeActivity.this.startToShake();
        }
      });
      return;
      i = 2130903295;
      break;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.mShakeActivityIsDestry = true;
    stopShakeListener();
    closeShakeDialog();
    this.mShakeListener.destroy();
    destroyAllData();
    setContentView(2130903306);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    return true;
  }
  
  protected void onPause()
  {
    hasPause = true;
    super.onPause();
    stopShakeListener();
    cancelVibrator();
    clearAnim();
  }
  
  protected void onResume()
  {
    hasPause = false;
    super.onResume();
    mShakeIsStop = false;
    startAnim();
    this.animEnable = true;
    startShakeListener();
  }
  
  protected void onStart()
  {
    super.onStart();
  }
  
  protected void onStop()
  {
    super.onStop();
    clearAnim();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if ((!paramBoolean) && (isScreenLocked()))
    {
      mShakeIsStop = true;
      stopShakeListener();
      delayCancelVibrator(2000);
      return;
    }
    if (paramBoolean)
    {
      startShakeListener();
      mShakeIsStop = false;
      return;
    }
    stopShakeListener();
    delayCancelVibrator(2000);
  }
  
  public Boolean saveStringToCache(String paramString)
  {
    FileService.Directory localDirectory = FileService.getDirectory(5);
    boolean bool = false;
    if (localDirectory != null) {
      try
      {
        bool = FileService.saveToSDCard(localDirectory, "shake_cache.txt", paramString);
        Boolean localBoolean = Boolean.valueOf(bool);
        return localBoolean;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return Boolean.valueOf(bool);
  }
  
  public void setShakeProgressVisible(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (ShakeActivity.this.mProgressView != null)
        {
          ShakeActivity.this.mProgressView.setVisibility(paramInt);
          ShakeActivity.this.mProgressView.setBackgroundDrawable(ShakeActivity.this.getResources().getDrawable(2130838265));
          if (paramInt == 0)
          {
            TextView localTextView = (TextView)ShakeActivity.this.mProgressView.findViewById(2131493611);
            if (localTextView != null)
            {
              localTextView.setPadding(0, 0, 15, 0);
              localTextView.setText(ShakeActivity.this.getString(2131166550));
              localTextView.setTextColor(ShakeActivity.this.getResources().getColor(2131296396));
            }
          }
        }
      }
    });
  }
  
  protected void startToShake()
  {
    if (!this.isHintUser)
    {
      startVibrato();
      startShakeSound(0);
      querryShakeData();
    }
  }
  
  public void startVibrato()
  {
    if (this.mVibrator != null) {
      this.mVibrator.vibrate(new long[] { 500L, 200L, 500L, 200L }, -1);
    }
  }
  
  public static abstract interface OnShakeCallback
    extends Serializable
  {
    public abstract void run();
  }
  
  private class ShakeOnClickListener
    implements View.OnClickListener
  {
    private ShakeOnClickListener() {}
    
    public void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      }
      do
      {
        do
        {
          return;
          ShakeActivity.this.finish();
          return;
          ShakeActivity.this.avoidMoreTimeClick();
        } while ((ShakeActivity.this.mShakeDataIsQuerying) || (!ShakeActivity.this.isCanClickButton));
        ShakeActivity.this.avoidMoreTimeClicked();
        String str = ShakeActivity.this.optionsHomeShare();
        if (TextUtils.isEmpty(str)) {
          str = ShakeActivity.this.getString(2131166541);
        }
        ShakeUtils.handelShare(ShakeActivity.this, str);
        ShakeActivity.this.mJLOGEvent = "share_sns";
        ShakeActivity.this.mJLOGValue = "shake_shake";
        ShakeUtils.onJMAEvent(ShakeActivity.this, ShakeActivity.this.mJLOGEvent, ShakeActivity.this.getShakeParams());
        return;
        ShakeUtils.onJMAEvent(ShakeActivity.this, "shake_singer", new HashMap());
        ShakeActivity.this.avoidMoreTimeClick();
      } while ((ShakeActivity.this.mShakeDataIsQuerying) || (ShakeActivity.this.isPopularityQuerying) || (!ShakeActivity.this.isCanClickButton));
      ShakeActivity.this.avoidMoreTimeClicked();
      ShakeActivity.this.forwardPopularityList();
    }
  }
  
  public class ShakeRunnable
    implements Runnable, Serializable
  {
    private static final long serialVersionUID = -8954584664036125917L;
    
    public ShakeRunnable() {}
    
    public void run()
    {
      ShakeActivity.this.startShakeListener();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shake.ShakeActivity
 * JD-Core Version:    0.7.0.1
 */