package com.jingdong.app.mall.shopping;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager.WakeLock;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.color.BlankActivity;
import com.jingdong.app.mall.color.SimilarProductListActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.JDColorProductModel;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.NetUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class CameraActivity
  extends MyActivity
  implements SensorEventListener
{
  private static final int REQUEST_CODE_CATEGORIES_SELECTION = 101;
  private static final int SIZE = 3;
  private static final String TAG = CameraActivity.class.getSimpleName();
  private static final int[] ivIds = { 2131493250, 2131493251, 2131493252, 2131493254, 2131493255, 2131493256 };
  private final int COLOR_SHOPPING_TIMEOUT = 5000;
  private final String MOBILE = "MOBILE";
  private final int UPDATE_BUTION = 11;
  private final int UPDATE_BUTION_DELAYED = 1000;
  private final int UPDATE_PRODUCT_PIC = 0;
  private final int UPDATE_PRODUCT_PIC_DELAYED = 2000;
  private final int WAKELOCK_RELEASE = 10;
  private final int WAKELOCK_TIMEOUT = 180000;
  private final String WIFI = "WIFI";
  private IntentFilter filterIntent = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
  private boolean hasFinished = false;
  private String host = Configuration.getProperty("paiHost");
  private boolean isGuided;
  private ImageView[] iv = new ImageView[6];
  private Sensor mAccel;
  private Object mAutoFocusBlock = new Object();
  private long mAutoFocusTime = 0L;
  private View mBanner;
  private ArrayList<Bitmap> mBitmaps = new ArrayList();
  private boolean mBlock = false;
  CameraView mCameraView;
  private String mCategories;
  private ImageView mColorClose;
  private ArrayList<JDColorProductModel> mColorProductModel = new ArrayList();
  private JSONArrayPoxy mColorShoppingList;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what == 1) {
        CameraActivity.this.mBanner.setBackgroundColor(paramAnonymousMessage.arg1);
      }
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (paramAnonymousMessage.what != 2) {
                break;
              }
            } while (CameraActivity.this.mBlock);
            CameraActivity.this.mBlock = true;
            final String str = (String)paramAnonymousMessage.obj;
            HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
            localHttpSetting.setType(1000);
            localHttpSetting.setPriority(1000);
            localHttpSetting.setFunctionId("colorSearchNew");
            localHttpSetting.putJsonParam("colorKey", str);
            localHttpSetting.putJsonParam("productNum", CameraActivity.this.productCount);
            localHttpSetting.putJsonParam("networkType", CameraActivity.this.getNetType());
            localHttpSetting.putJsonParam("cateMsg", CameraActivity.this.mCategories);
            localHttpSetting.setAttempts(1);
            localHttpSetting.setHost(CameraActivity.this.host);
            localHttpSetting.setEffect(0);
            if (CameraActivity.this.networkConnectFailedNotifyUser)
            {
              localHttpSetting.setNotifyUser(true);
              localHttpSetting.setAlertErrorDialogType(3);
              CameraActivity.this.networkConnectFailedNotifyUser = false;
            }
            localHttpSetting.setConnectTimeout(5000);
            localHttpSetting.setListener(new HttpGroup.OnAllListener()
            {
              public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
              {
                String str = str;
                CameraActivity.this.mPool.getQueue().clear();
                for (;;)
                {
                  try
                  {
                    JSONObjectProxy localJSONObjectProxy = paramAnonymous2HttpResponse.getJSONObject();
                    if (localJSONObjectProxy == null) {
                      continue;
                    }
                    CameraActivity.this.mColorShoppingList = localJSONObjectProxy.getJSONArrayOrNull("matchWareInfoList");
                    localArrayList = JDColorProductModel.toList(CameraActivity.this.mColorShoppingList, str);
                    if ((localArrayList != null) && (localArrayList.size() != 0)) {
                      continue;
                    }
                    CameraActivity.this.showError();
                  }
                  catch (Exception localException)
                  {
                    ArrayList localArrayList;
                    localException.printStackTrace();
                    return;
                    CameraActivity.this.showError();
                    continue;
                  }
                  finally
                  {
                    CameraActivity.this.mBlock = false;
                  }
                  CameraActivity.this.mBlock = false;
                  return;
                  CameraActivity.this.loadProductPicture(localArrayList);
                }
              }
              
              public void onError(HttpGroup.HttpError paramAnonymous2HttpError)
              {
                CameraActivity.this.mBlock = false;
              }
              
              public void onProgress(int paramAnonymous2Int1, int paramAnonymous2Int2) {}
              
              public void onStart() {}
            });
            CameraActivity.this.getHttpGroupaAsynPool().add(localHttpSetting);
            return;
            if (paramAnonymousMessage.what != 0) {
              break;
            }
          } while (CameraActivity.this.mBitmaps.size() <= 0);
          synchronized (CameraActivity.this.mBitmaps)
          {
            Bitmap localBitmap = (Bitmap)CameraActivity.this.mBitmaps.get(0);
            JDColorProductModel localJDColorProductModel1 = (JDColorProductModel)CameraActivity.this.mColorProductModel.get(0);
            CameraActivity.this.mBitmaps.remove(0);
            CameraActivity.this.mColorProductModel.remove(0);
            JDColorProductModel localJDColorProductModel2 = (JDColorProductModel)CameraActivity.this.iv[CameraActivity.this.mIndex].getTag();
            if (localJDColorProductModel2 != null) {
              CameraActivity.this.mShowIds.remove(localJDColorProductModel2.getId());
            }
            CameraActivity.this.iv[CameraActivity.this.mIndex].setImageBitmap(localBitmap);
            CameraActivity.this.iv[CameraActivity.this.mIndex].setTag(localJDColorProductModel1);
            CameraActivity.this.mIndex = ((1 + CameraActivity.this.mIndex) % 6);
            CameraActivity.this.mHandler.sendEmptyMessageDelayed(0, 2000L);
            return;
          }
          if (paramAnonymousMessage.what != 11) {
            break;
          }
        } while ((CameraActivity.this.mViewFinder == null) || (CameraActivity.this.mColorClose == null));
        CameraActivity.this.mViewFinder.setVisibility(0);
        CameraActivity.this.mColorClose.setVisibility(0);
        return;
      } while (paramAnonymousMessage.what != 10);
      CameraActivity.this.wakeLockRelease();
    }
  };
  private int mIndex = 0;
  private float mLastX = 0.0F;
  private float mLastY = 0.0F;
  private float mLastZ = 0.0F;
  private ThreadPoolExecutor mPool = new ThreadPoolExecutor(3, 3, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
  private SensorManager mSensorManager;
  private ArrayList<String> mShowIds = new ArrayList();
  private LinearLayout mShowViewDownLayout;
  private LinearLayout mShowViewLayout;
  private LinearLayout mShowViewUpLayout;
  private int mSleepTime = 0;
  private boolean mThreadBlock = false;
  private TextView mTitle;
  private Button mTitleMenuBtn;
  private ImageView mViewFinder;
  private LinearLayout mViewfinderLayout;
  private PowerManager.WakeLock mWakeLock;
  private boolean networkConnectFailedNotifyUser = true;
  View.OnClickListener onClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      JDColorProductModel localJDColorProductModel = (JDColorProductModel)paramAnonymousView.getTag();
      CameraActivity.this.doClick(localJDColorProductModel);
    }
  };
  private String productCount = "3";
  private HomeReceiver receiverHome = new HomeReceiver();
  private int showViewHeight;
  private int viewfinderHeight;
  
  private String categoryFilter(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramString = "0:0";
      return paramString;
    }
    String[] arrayOfString = paramString.split(",");
    label63:
    for (int i = 0;; i++)
    {
      int j = arrayOfString.length;
      int k = 0;
      if (i >= j) {}
      while (k != 0)
      {
        return "0:0";
        if (!"0:0".equals(arrayOfString[i])) {
          break label63;
        }
        k = 1;
      }
      break;
    }
  }
  
  private void doClick(JDColorProductModel paramJDColorProductModel)
  {
    if (paramJDColorProductModel == null) {
      return;
    }
    Intent localIntent = new Intent(this, SimilarProductListActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("productModel", paramJDColorProductModel);
    localIntent.putExtras(localBundle);
    localIntent.putExtra("source", new SourceEntity("color_shopping", null));
    startActivity(localIntent);
  }
  
  private void findView()
  {
    this.mBanner = findViewById(2131493247);
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText(getString(2131166421));
    this.mTitleMenuBtn = ((Button)findViewById(2131494685));
    this.mTitleMenuBtn.setVisibility(0);
    this.mShowViewLayout = ((LinearLayout)findViewById(2131493246));
    this.mViewfinderLayout = ((LinearLayout)findViewById(2131493244));
    this.mCameraView = ((CameraView)findViewById(2131493242));
    this.mShowViewUpLayout = ((LinearLayout)findViewById(2131493249));
    this.mShowViewDownLayout = ((LinearLayout)findViewById(2131493253));
  }
  
  private String getNetType()
  {
    try
    {
      localConnectivityManager = (ConnectivityManager)MyApplication.getInstance().getSystemService("connectivity");
      if (localConnectivityManager == null) {}
      int i;
      do
      {
        return "";
        i = NetUtils.getSummaryType(localConnectivityManager);
        if (2 == i) {
          return "MOBILE";
        }
      } while (1 != i);
      return "WIFI";
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ConnectivityManager localConnectivityManager = null;
      }
    }
  }
  
  private void inteView()
  {
    ExceptionDrawable localExceptionDrawable = new ExceptionDrawable(this, MyApplication.getInstance().getString(2131165185));
    Button localButton1 = this.mTitleMenuBtn;
    View.OnClickListener local6 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CategoriesSelectionActivity.launchForResult(CameraActivity.this, 101);
      }
    };
    localButton1.setOnClickListener(local6);
    int i = getStatusHeight();
    final int j = getResources().getDimensionPixelOffset(2131427437);
    int k = DPIUtil.getHeight() - i - j;
    int m = getResources().getDimensionPixelOffset(2131427439);
    int n = k / 2;
    this.showViewHeight = (m + n);
    int i1 = k / 2 - m;
    ViewGroup.LayoutParams localLayoutParams1 = this.mShowViewLayout.getLayoutParams();
    localLayoutParams1.height = this.showViewHeight;
    this.mShowViewLayout.setLayoutParams(localLayoutParams1);
    ViewGroup.LayoutParams localLayoutParams2 = this.mShowViewUpLayout.getLayoutParams();
    localLayoutParams2.height = (n / 2);
    this.mShowViewUpLayout.setLayoutParams(localLayoutParams2);
    ViewGroup.LayoutParams localLayoutParams3 = this.mShowViewDownLayout.getLayoutParams();
    localLayoutParams3.height = (n / 2);
    this.mShowViewDownLayout.setLayoutParams(localLayoutParams3);
    this.viewfinderHeight = getResources().getDimensionPixelOffset(2131427436);
    ImageView localImageView1 = new ImageView(this);
    this.mViewFinder = localImageView1;
    this.mViewFinder.setBackgroundDrawable(getResources().getDrawable(2130837832));
    ViewGroup.LayoutParams localLayoutParams4 = new ViewGroup.LayoutParams(-2, -2);
    localLayoutParams4.height = this.viewfinderHeight;
    localLayoutParams4.width = this.viewfinderHeight;
    this.mViewFinder.setLayoutParams(localLayoutParams4);
    ViewTreeObserver localViewTreeObserver = this.mViewFinder.getViewTreeObserver();
    ViewTreeObserver.OnGlobalLayoutListener local7 = new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        CameraActivity.this.mViewFinder.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        int i = CameraActivity.this.mViewFinder.getBottom() - CameraActivity.this.mViewFinder.getHeight() + j;
        CameraActivity.this.mCameraView.setFocusYoffset(i);
      }
    };
    localViewTreeObserver.addOnGlobalLayoutListener(local7);
    ViewGroup.LayoutParams localLayoutParams5 = this.mViewfinderLayout.getLayoutParams();
    localLayoutParams5.height = i1;
    this.mViewfinderLayout.setLayoutParams(localLayoutParams5);
    this.mViewfinderLayout.setGravity(17);
    this.mViewfinderLayout.addView(this.mViewFinder);
    this.mCameraView.setHandle(this.mHandler);
    this.mCameraView.setFocusWidth(30);
    this.mCameraView.setFocusHeight(30);
    this.mColorClose = ((ImageView)findViewById(2131493245));
    ImageView localImageView2 = this.mColorClose;
    View.OnClickListener local8 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CameraActivity.this.mCameraView.releaseCamera();
        CameraActivity.this.finish();
      }
    };
    localImageView2.setOnClickListener(local8);
    for (int i2 = 0;; i2++)
    {
      if (i2 >= this.iv.length)
      {
        final Button localButton2 = (Button)this.mBanner.findViewById(2131493248);
        View.OnClickListener local9 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (CameraActivity.this.mCameraView.isColorExtracting())
            {
              int i = 0;
              if (i >= CameraActivity.this.mBitmaps.size())
              {
                CameraActivity.this.mBitmaps.clear();
                CameraActivity.this.mShowIds.clear();
              }
              for (int j = 0;; j++)
              {
                if (j >= CameraActivity.this.iv.length)
                {
                  CameraActivity.this.mColorProductModel.clear();
                  CameraActivity.this.mHandler.removeMessages(0);
                  CameraActivity.this.mCameraView.pauseColorExtract();
                  localButton2.setBackgroundResource(2130837822);
                  return;
                  ((Bitmap)CameraActivity.this.mBitmaps.get(i)).recycle();
                  i++;
                  break;
                }
                JDColorProductModel localJDColorProductModel = (JDColorProductModel)CameraActivity.this.iv[j].getTag();
                if (localJDColorProductModel != null) {
                  CameraActivity.this.mShowIds.add(localJDColorProductModel.getId());
                }
              }
            }
            CameraActivity.this.mCameraView.resumeColorExtract();
            localButton2.setBackgroundResource(2130837821);
          }
        };
        localButton2.setOnClickListener(local9);
        return;
      }
      this.iv[i2] = ((ImageView)findViewById(ivIds[i2]));
      this.iv[i2].setOnClickListener(this.onClickListener);
      this.iv[i2].setImageDrawable(localExceptionDrawable);
    }
  }
  
  private void loadProductPicture(ArrayList<JDColorProductModel> paramArrayList)
  {
    int i = paramArrayList.size();
    int j = 0;
    if (j >= i) {
      return;
    }
    final JDColorProductModel localJDColorProductModel = (JDColorProductModel)paramArrayList.get(j);
    final String str = localJDColorProductModel.getImageUrl();
    if (this.mShowIds.contains(localJDColorProductModel.getId())) {}
    for (;;)
    {
      j++;
      break;
      this.mPool.execute(new Runnable()
      {
        public void run()
        {
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setType(5000);
          localHttpSetting.setPriority(5000);
          localHttpSetting.setUrl(str);
          localHttpSetting.setEffect(0);
          localHttpSetting.setAttempts(1);
          localHttpSetting.setConnectTimeout(5000);
          localHttpSetting.setListener(new HttpGroup.OnCommonListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
            {
              Bitmap localBitmap1 = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymous2HttpResponse), 0, 0);
              if (CameraActivity.this.mCameraView.isColorExtracting())
              {
                if (CameraActivity.this.mBitmaps.size() == 0) {
                  CameraActivity.this.mHandler.sendEmptyMessageDelayed(0, 2000L);
                }
                synchronized (CameraActivity.this.mBitmaps)
                {
                  if (CameraActivity.this.mBitmaps.size() >= 3)
                  {
                    Bitmap localBitmap2 = (Bitmap)CameraActivity.this.mBitmaps.get(0);
                    CameraActivity.this.mBitmaps.remove(0);
                    JDColorProductModel localJDColorProductModel = (JDColorProductModel)CameraActivity.this.mColorProductModel.remove(0);
                    CameraActivity.this.mShowIds.remove(localJDColorProductModel.getId());
                    if (localBitmap2 != null) {
                      localBitmap2.recycle();
                    }
                  }
                  CameraActivity.this.mShowIds.add(this.val$colorProductModel.getId());
                  CameraActivity.this.mColorProductModel.add(this.val$colorProductModel);
                  CameraActivity.this.mBitmaps.add(localBitmap1);
                  return;
                }
              }
              if (localBitmap1 != null) {
                localBitmap1.recycle();
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymous2HttpError) {}
            
            public void onReady(HttpGroup.HttpSettingParams paramAnonymous2HttpSettingParams) {}
          });
          CameraActivity.this.getHttpGroupaAsynPool(5000).add(localHttpSetting);
        }
      });
    }
  }
  
  private void releaseCamera()
  {
    if (this.mCameraView != null) {
      this.mCameraView.releaseCamera();
    }
  }
  
  private void showError() {}
  
  private void startCamera()
  {
    if (this.mCameraView != null) {
      this.mCameraView.startPreview();
    }
  }
  
  private void stopCamera()
  {
    if (this.mCameraView != null) {
      this.mCameraView.stopPreview();
    }
  }
  
  private void wakeLockRelease()
  {
    if (this.mWakeLock != null)
    {
      this.mWakeLock.release();
      this.mWakeLock = null;
    }
  }
  
  public int getStatusHeight()
  {
    Rect localRect = new Rect();
    getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    if (i == 0) {}
    try
    {
      Class localClass = Class.forName("com.android.internal.R$dimen");
      Object localObject = localClass.newInstance();
      int j = Integer.parseInt(localClass.getField("status_bar_height").get(localObject).toString());
      int k = getResources().getDimensionPixelSize(j);
      i = k;
      return i;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return i;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return i;
    }
    catch (InstantiationException localInstantiationException)
    {
      localInstantiationException.printStackTrace();
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      localNumberFormatException.printStackTrace();
      return i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return i;
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
      return i;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.printStackTrace();
    }
    return i;
  }
  
  public final boolean isScreenLocked()
  {
    return ((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode();
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((101 == paramInt1) && (-1 == paramInt2)) {
      if (paramIntent == null) {
        break label35;
      }
    }
    label35:
    for (String str = paramIntent.getStringExtra("color_buy_selected_categories");; str = CommonUtil.getJdSharedPreferences().getString("color_buy_selected_categories", ""))
    {
      this.mCategories = categoryFilter(str);
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903101);
    findView();
    this.mSleepTime = Settings.System.getInt(getContentResolver(), "screen_off_timeout", -1);
    this.mCategories = CommonUtil.getJdSharedPreferences().getString("color_buy_selected_categories", "");
    this.mCategories = categoryFilter(this.mCategories);
    this.mSensorManager = ((SensorManager)getSystemService("sensor"));
    this.mAccel = this.mSensorManager.getDefaultSensor(1);
    this.isGuided = CommonUtil.activityIsGuided(getClass().getName());
    if (!this.isGuided)
    {
      setGuideResId(2130837819);
      addGuideImage((ViewGroup)getWindow().peekDecorView());
    }
    registerReceiver(this.receiverHome, this.filterIntent);
    this.mHandler.sendEmptyMessageDelayed(0, 1000L);
    post(new Runnable()
    {
      public void run()
      {
        CameraActivity.this.inteView();
      }
    });
    Thread localThread = new Thread(new Runnable()
    {
      public void run()
      {
        try
        {
          for (;;)
          {
            synchronized (CameraActivity.this.mAutoFocusBlock)
            {
              CameraActivity.this.mAutoFocusBlock.wait();
              boolean bool = CameraActivity.this.hasFinished;
              if (bool) {
                return;
              }
            }
            CameraActivity.this.mCameraView.autoFocus();
            CameraActivity.this.mAutoFocusTime = System.currentTimeMillis();
            CameraActivity.this.mThreadBlock = false;
          }
        }
        catch (Throwable localThrowable) {}
      }
    });
    localThread.setPriority(1);
    localThread.setName("CameraActivity");
    localThread.start();
  }
  
  /* Error */
  protected void onDestroy()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 804	com/jingdong/app/mall/shopping/CameraActivity:releaseCamera	()V
    //   4: aload_0
    //   5: iconst_1
    //   6: putfield 194	com/jingdong/app/mall/shopping/CameraActivity:hasFinished	Z
    //   9: invokestatic 807	com/jingdong/app/mall/utils/CommonUtil:getInstance	()Lcom/jingdong/app/mall/utils/CommonUtil;
    //   12: ldc_w 425
    //   15: invokevirtual 810	com/jingdong/app/mall/utils/CommonUtil:putSelectedCatsStr	(Ljava/lang/String;)V
    //   18: aload_0
    //   19: getfield 190	com/jingdong/app/mall/shopping/CameraActivity:mAutoFocusBlock	Ljava/lang/Object;
    //   22: astore_2
    //   23: aload_2
    //   24: monitorenter
    //   25: aload_0
    //   26: getfield 190	com/jingdong/app/mall/shopping/CameraActivity:mAutoFocusBlock	Ljava/lang/Object;
    //   29: invokevirtual 813	java/lang/Object:notify	()V
    //   32: aload_2
    //   33: monitorexit
    //   34: aload_0
    //   35: invokespecial 815	com/jingdong/app/mall/utils/MyActivity:onDestroy	()V
    //   38: aload_0
    //   39: aload_0
    //   40: getfield 205	com/jingdong/app/mall/shopping/CameraActivity:receiverHome	Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;
    //   43: invokevirtual 819	com/jingdong/app/mall/shopping/CameraActivity:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   46: return
    //   47: astore_3
    //   48: aload_2
    //   49: monitorexit
    //   50: aload_3
    //   51: athrow
    //   52: astore_1
    //   53: goto -19 -> 34
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	CameraActivity
    //   52	1	1	localThrowable	Throwable
    //   47	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   25	34	47	finally
    //   48	50	47	finally
    //   18	25	52	java/lang/Throwable
    //   50	52	52	java/lang/Throwable
  }
  
  protected void onPause()
  {
    super.onPause();
    try
    {
      int i = CommonUtil.getIntFromPreference("sleep_setting_time", 0);
      if ((i > 0) && (Settings.System.putInt(getContentResolver(), "screen_off_timeout", i))) {
        CommonUtil.putIntToPreference("sleep_setting_time", 0);
      }
    }
    catch (Throwable localThrowable)
    {
      label38:
      break label38;
    }
    if ((this.mViewFinder != null) && (this.mColorClose != null))
    {
      this.mViewFinder.setVisibility(8);
      this.mColorClose.setVisibility(8);
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
  }
  
  protected void onResume()
  {
    super.onResume();
    try
    {
      if (CommonUtil.putIntToPreference("sleep_setting_time", this.mSleepTime)) {
        Settings.System.putInt(getContentResolver(), "screen_off_timeout", 180000);
      }
      label30:
      this.mHandler.sendEmptyMessageDelayed(11, 1000L);
      return;
    }
    catch (Throwable localThrowable)
    {
      break label30;
    }
  }
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    long l = System.currentTimeMillis();
    if ((this.mThreadBlock) || (Math.abs(l - this.mAutoFocusTime) < 1000L)) {
      return;
    }
    float f1 = paramSensorEvent.values[0];
    float f2 = paramSensorEvent.values[1];
    float f3 = paramSensorEvent.values[2];
    float f4 = Math.abs(this.mLastX - f1);
    float f5 = Math.abs(this.mLastY - f2);
    float f6 = Math.abs(this.mLastZ - f3);
    if ((f4 > 0.8D) || (f5 > 0.8D) || (f6 > 0.8D)) {}
    try
    {
      synchronized (this.mAutoFocusBlock)
      {
        this.mAutoFocusBlock.notify();
        label134:
        this.mThreadBlock = true;
        this.mLastX = f1;
        this.mLastY = f2;
        this.mLastZ = f3;
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      break label134;
    }
  }
  
  protected void onStart()
  {
    super.onStart();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if ((!paramBoolean) && (isScreenLocked()))
    {
      Intent localIntent = new Intent(this, BlankActivity.class);
      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
      startActivity(localIntent);
      post(new Runnable()
      {
        public void run()
        {
          CameraActivity.this.finish();
        }
      });
      return;
    }
    if (paramBoolean)
    {
      startCamera();
      this.mSensorManager.registerListener(this, this.mAccel, 2);
      return;
    }
    stopCamera();
    this.mSensorManager.unregisterListener(this);
  }
  
  public class HomeReceiver
    extends BroadcastReceiver
  {
    public HomeReceiver() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str;
      if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(paramIntent.getAction()))
      {
        str = paramIntent.getStringExtra("reason");
        if (str != null)
        {
          if (!"homekey".equals(str)) {
            break label40;
          }
          CameraActivity.this.finish();
        }
      }
      label40:
      while (!"recentapps".equals(str)) {
        return;
      }
      CameraActivity.this.finish();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.CameraActivity
 * JD-Core Version:    0.7.0.1
 */