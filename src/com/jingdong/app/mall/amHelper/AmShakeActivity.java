package com.jingdong.app.mall.amHelper;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.jingdong.app.mall.shake.ShakeAnimationUtils;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.FileService;
import com.jingdong.common.utils.FileService.Directory;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.NetUtils;
import com.jingdong.common.utils.ShakeUtils;
import java.io.Serializable;
import java.util.Random;

public class AmShakeActivity
  extends MyActivity
{
  public static final float HEIGHT = 1280.0F;
  public static final int SHAKE_DIALOG_CLOSE = 1;
  private static final int SHAKE_SOUND_MAX = 3;
  private static final int SHAKE_SOUND_TYPE_AGAIN = 2;
  private static final int SHAKE_SOUND_TYPE_SHAKEING = 0;
  private static final int SHAKE_SOUND_TYPE_SOMETHING = 1;
  private static final String TAG = AmShakeActivity.class.getSimpleName();
  public static final float WIDTH = 720.0F;
  public static boolean hasPause = false;
  public static boolean mShakeIsStop = false;
  private boolean animEnable = false;
  private AnimationDrawable animationDrawable;
  private int count;
  private int filterIndex;
  public boolean isBackUpKeyDown = false;
  public boolean isHintUser = false;
  public boolean isShowDialog;
  private RelativeLayout mAmShakeHomeBg;
  private Animation mHandAnimation;
  private ImageView mHandImageView;
  Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if ((paramAnonymousMessage.what == 0) && (AmShakeActivity.this.mHandAnimation != null) && (AmShakeActivity.this.mHandImageView != null))
      {
        AmShakeActivity.this.mHandImageView.startAnimation(AmShakeActivity.this.mHandAnimation);
        AmShakeActivity.mShakeIsStop = false;
      }
    }
  };
  private boolean mIsCanShake = true;
  private RelativeLayout mLoadingLayout;
  private ImageView mLoadingView;
  private ImageView mLoopImage;
  private boolean mShakeActivityIsDestry = false;
  private Button mShakeBack;
  ImageView mShakeBottomShake;
  ImageView mShakeBottomShakeFirst;
  private boolean mShakeDataIsQuerying = false;
  private AmShakeListener mShakeListener = null;
  private ProgressBar mShakeProgressBar;
  private AmShakeResult mShakeResult;
  private Vibrator mVibrator;
  private Random random;
  final Runnable runnableServiceStart = new Runnable()
  {
    public void run()
    {
      AmShakeActivity.this.startShakeListener();
    }
  };
  final Runnable runnableServiceStop = new Runnable()
  {
    public void run()
    {
      AmShakeActivity.this.stopShakeListener();
    }
  };
  final Runnable runnableShowAffirmDialog = new Runnable()
  {
    public void run()
    {
      AmShakeActivity.this.showAffirmToast();
    }
  };
  private final Handler shakeHandler = new Handler()
  {
    public void dispatchMessage(Message paramAnonymousMessage)
    {
      super.dispatchMessage(paramAnonymousMessage);
    }
  };
  private final Runnable shakeRunnable = new Runnable()
  {
    public void run()
    {
      AmShakeActivity.this.showShakeResult();
      AmShakeActivity.this.cancelVibrator();
      AmShakeActivity.this.post(new Runnable()
      {
        public void run()
        {
          AmShakeActivity.this.startShakeListener();
          AmShakeActivity.this.mShakeDataIsQuerying = false;
        }
      }, 1000);
    }
  };
  private String token;
  
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
    this.mLoopImage.setBackgroundResource(2130838223);
    this.mLoopImage.clearAnimation();
  }
  
  private void closeShakeDialog()
  {
    if (AmShakeDialogNew.instance != null)
    {
      AmShakeDialogNew.instance.destroyAllData();
      AmShakeDialogNew.instance.finish();
      AmShakeDialogNew.instance = null;
      this.isShowDialog = false;
    }
  }
  
  private void delayCancelVibrator(int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        AmShakeActivity.this.cancelVibrator();
      }
    }, paramInt);
  }
  
  private void delayStartShakeListener(int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (AmShakeActivity.mShakeIsStop) {
          return;
        }
        AmShakeActivity.this.startShakeListener();
      }
    }, paramInt);
  }
  
  private void destroyAllData()
  {
    this.mShakeListener = null;
    this.mVibrator = null;
    this.mLoopImage = null;
    this.mHandImageView = null;
    this.mHandAnimation = null;
    this.mShakeBack = null;
    this.mShakeResult = null;
    this.mShakeProgressBar = null;
    this.mShakeBottomShake = null;
    this.mShakeBottomShakeFirst = null;
    this.mAmShakeHomeBg = null;
  }
  
  private void hideLoadingView()
  {
    this.mLoadingLayout.setVisibility(8);
    this.animationDrawable.stop();
  }
  
  private void initAllViews()
  {
    this.mVibrator = ((Vibrator)getApplication().getSystemService("vibrator"));
    this.mShakeBottomShake = ((ImageView)findViewById(2131494471));
    this.mShakeBottomShakeFirst = ((ImageView)findViewById(2131494470));
    Drawable localDrawable1 = ImageUtil.scaleDrawable(getResources().getDrawable(2130837678), 720.0F, 1280.0F);
    Drawable localDrawable2 = ImageUtil.scaleDrawable(getResources().getDrawable(2130837677), 720.0F, 1280.0F);
    this.mShakeBottomShake.setImageDrawable(localDrawable1);
    this.mShakeBottomShakeFirst.setImageDrawable(localDrawable2);
    this.mShakeProgressBar = ((ProgressBar)findViewById(2131494466));
    this.mShakeBack = ((Button)findViewById(2131494458));
    this.mLoopImage = ((ImageView)findViewById(2131494462));
    this.mHandImageView = ((ImageView)findViewById(2131494461));
    this.mShakeBack.setOnClickListener(new ShakeOnClickListener(null));
    this.mAmShakeHomeBg = ((RelativeLayout)findViewById(2131494468));
    this.mLoadingView = ((ImageView)findViewById(2131492977));
    this.mLoadingLayout = ((RelativeLayout)findViewById(2131494467));
    this.mLoadingView.setImageResource(2130837518);
    this.animationDrawable = ((AnimationDrawable)this.mLoadingView.getDrawable());
  }
  
  private void optionsViewVisible(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        AmShakeActivity.this.mShakeProgressBar.setVisibility(paramInt);
      }
    });
  }
  
  private void querryShakeData()
  {
    this.mShakeDataIsQuerying = true;
    final HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("shakeAnnual");
    localHttpSetting.setEffect(0);
    if (NetUtils.getNetworkType().equals("wifi"))
    {
      localHttpSetting.setConnectTimeout(5000);
      localHttpSetting.setAttempts(0);
      localHttpSetting.setNotifyUser(false);
    }
    localHttpSetting.putJsonParam("tk", this.token);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        AmShakeActivity.this.post(new Runnable()
        {
          public void run()
          {
            AmShakeActivity.this.hideLoadingView();
          }
        });
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null) {
          try
          {
            AmShakeActivity.this.mShakeResult = new AmShakeResult(localJSONObjectProxy);
            if (AmShakeActivity.this.mShakeResult != null)
            {
              AmShakeActivity.this.stopShakeListener();
              AmShakeActivity.this.shakeHandler.postDelayed(AmShakeActivity.this.shakeRunnable, 1000L);
            }
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
        }
        onError(null);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        if (!AmShakeActivity.this.isShowDialog)
        {
          AmShakeActivity.this.post(new Runnable()
          {
            public void run()
            {
              AmShakeActivity.this.hideLoadingView();
              Intent localIntent = new Intent(AmShakeActivity.this, AmShakeDialogNew.class);
              ShakeUtils.shakeCallback(AmShakeActivity.this, AmShakeActivity.this.runnableServiceStart, AmShakeActivity.this.runnableServiceStop);
              AmShakeActivity.this.startActivityForResultNoException(localIntent, 1);
              AmShakeActivity.this.delayStartShakeListener(2000);
              AmShakeActivity.this.cancelVibrator();
            }
          }, 1000);
          AmShakeActivity.this.isShowDialog = true;
        }
        AmShakeActivity.this.mShakeDataIsQuerying = false;
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    showLoadingView();
    int i = this.random.nextInt(2000);
    post(new Runnable()
    {
      public void run()
      {
        AmShakeActivity.this.getHttpGroupaAsynPool().add(localHttpSetting);
      }
    }, i);
  }
  
  private void showAffirmToast()
  {
    if ((AmShakeDialogNew.instance == null) || (!this.isHintUser)) {
      return;
    }
    this.isHintUser = false;
    Toast localToast = Toast.makeText(AmShakeDialogNew.instance, getString(2131166538), 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
    delayStartShakeListener(2000);
  }
  
  private void showCustomDialog(String paramString)
  {
    final AlertDialog localAlertDialog = new AlertDialog.Builder(this).create();
    localAlertDialog.setMessage(paramString);
    localAlertDialog.setTitle(2131166509);
    DialogInterface.OnClickListener local14 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        }
        localAlertDialog.dismiss();
      }
    };
    localAlertDialog.setButton(-1, getString(2131165517), local14);
    try
    {
      localAlertDialog.show();
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  private void showLoadingView()
  {
    this.mLoadingLayout.setVisibility(0);
    this.animationDrawable.start();
  }
  
  private void showShakeResult()
  {
    if ((this.isBackUpKeyDown) || (this.mShakeResult == null)) {}
    while (this.isShowDialog) {
      return;
    }
    Intent localIntent = new Intent(this, AmShakeDialogNew.class);
    if ("0".equals(this.mShakeResult.getCode()))
    {
      if (this.mShakeActivityIsDestry)
      {
        this.mShakeActivityIsDestry = false;
        return;
      }
      localIntent.putExtra("result", this.mShakeResult);
    }
    ShakeUtils.shakeCallback(this, this.runnableServiceStart, this.runnableServiceStop);
    startActivityForResultNoException(localIntent, 1);
    this.isShowDialog = true;
  }
  
  private void startAnim()
  {
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
          if (!AmShakeActivity.this.animEnable) {
            return;
          }
          Message localMessage = AmShakeActivity.this.mHandler.obtainMessage(0);
          AmShakeActivity.this.mHandler.sendMessageDelayed(localMessage, 800L);
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
    }
    Message localMessage = this.mHandler.obtainMessage(0);
    this.mHandler.sendMessage(localMessage);
    this.mLoopImage.setBackgroundResource(2130838245);
    ((AnimationDrawable)this.mLoopImage.getBackground()).start();
  }
  
  /* Error */
  private void startShakeListener()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 81	com/jingdong/app/mall/amHelper/AmShakeActivity:hasPause	Z
    //   5: istore_2
    //   6: iload_2
    //   7: ifeq +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: getfield 86	com/jingdong/app/mall/amHelper/AmShakeActivity:mShakeListener	Lcom/jingdong/app/mall/amHelper/AmShakeListener;
    //   17: ifnull -7 -> 10
    //   20: aload_0
    //   21: getfield 86	com/jingdong/app/mall/amHelper/AmShakeActivity:mShakeListener	Lcom/jingdong/app/mall/amHelper/AmShakeListener;
    //   24: invokevirtual 535	com/jingdong/app/mall/amHelper/AmShakeListener:isShakeListenerStart	()Z
    //   27: ifne -17 -> 10
    //   30: aload_0
    //   31: getfield 86	com/jingdong/app/mall/amHelper/AmShakeActivity:mShakeListener	Lcom/jingdong/app/mall/amHelper/AmShakeListener;
    //   34: invokevirtual 536	com/jingdong/app/mall/amHelper/AmShakeListener:start	()V
    //   37: goto -27 -> 10
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	AmShakeActivity
    //   40	4	1	localObject	Object
    //   5	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	6	40	finally
    //   13	37	40	finally
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
  
  public void finish()
  {
    ShakeUtils.mShakeRunnableStart = null;
    ShakeUtils.mShakeRunnableStop = null;
    super.finish();
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
      post(new Runnable()
      {
        public void run()
        {
          AmShakeActivity.this.startShakeListener();
        }
      });
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(ImageUtil.inflate(2130903296, null));
    initAllViews();
    ShakeAnimationUtils.startBottomAnim(this, this.mShakeBottomShake, this.mShakeBottomShakeFirst);
    this.token = getIntent().getStringExtra("token");
    if (TextUtils.isEmpty(this.token)) {
      this.token = AmHelper.token;
    }
    try
    {
      if (this.mAmShakeHomeBg != null) {
        this.mAmShakeHomeBg.setBackgroundResource(2130837524);
      }
      label80:
      optionsViewVisible(0);
      this.mShakeListener = new AmShakeListener(this);
      this.mShakeListener.setOnShakeListener(new AmShakeListener.OnShakeListener()
      {
        public void onShake()
        {
          if (!AmShakeActivity.this.mIsCanShake) {}
          do
          {
            return;
            AmShakeActivity.this.mIsCanShake = false;
            AmShakeActivity.this.post(new Runnable()
            {
              public void run()
              {
                AmShakeActivity.this.mIsCanShake = true;
              }
            }, 2100);
          } while (AmShakeActivity.mShakeIsStop);
          if (AmShakeActivity.this.mShakeDataIsQuerying)
          {
            AmShakeActivity.this.startShakeListener();
            return;
          }
          AmShakeActivity.this.stopShakeListener();
          if (AmShakeDialogNew.isReceiveCouponed)
          {
            AmShakeDialogNew.isReceiveCouponed = false;
            AmShakeActivity.this.isHintUser = false;
          }
          AmShakeActivity.this.closeShakeDialog();
          AmShakeActivity.this.startToShake();
        }
      });
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      this.random = new Random();
      return;
    }
    catch (Throwable localThrowable)
    {
      break label80;
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
    AmHelper.getInstance().destroyAllData();
    this.isBackUpKeyDown = false;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    switch (paramInt)
    {
    default: 
      bool = super.onKeyDown(paramInt, paramKeyEvent);
    case 82: 
      return bool;
    }
    this.isBackUpKeyDown = bool;
    finish();
    return bool;
  }
  
  protected void onPause()
  {
    hasPause = true;
    super.onPause();
    stopShakeListener();
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
    post(new Runnable()
    {
      public void run()
      {
        AmHelper.getInstance();
      }
    }, 500);
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
      mShakeIsStop = false;
      hasPause = false;
      delayStartShakeListener(500);
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
  
  protected void startToShake()
  {
    if (!this.isHintUser)
    {
      startVibrato();
      AmHelper.getInstance().startShakeSound(0);
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
      default: 
        return;
      }
      AmShakeActivity.this.isBackUpKeyDown = true;
      AmShakeActivity.this.finish();
    }
  }
  
  public class ShakeRunnable
    implements Runnable, Serializable
  {
    private static final long serialVersionUID = -8954584664036125917L;
    
    public ShakeRunnable() {}
    
    public void run()
    {
      AmShakeActivity.this.startShakeListener();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.amHelper.AmShakeActivity
 * JD-Core Version:    0.7.0.1
 */