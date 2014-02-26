package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageSwitcher;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.home.PullRefreshListener;
import com.jingdong.app.mall.product.ProductListActivity;
import com.jingdong.app.mall.promotion.PromotionActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.IGestureListener;
import com.jingdong.app.mall.utils.IGestureListener.TouchFlingActionListener;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.animation.Rotate3d;
import com.jingdong.common.entity.Commercial;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.URLParamMap;
import java.util.ArrayList;
import java.util.HashMap;

public class CommodityPromotionView
  implements Runnable, PullRefreshListener
{
  private final String TAG = "CommodityPromotionView";
  private int commIndex;
  private LinearLayout commLayout;
  public HashMap<String, Drawable> commercialCache;
  public ArrayList<Commercial> commercialsList;
  private Thread currentThread;
  private boolean isActivityLoader;
  private boolean isDoUp;
  private boolean isDoing;
  private boolean isDown;
  private boolean isLoaderFinish;
  private boolean isOnline = true;
  private boolean isOnlyNetData = false;
  private Rotate3d leftAnimation;
  private boolean lockTouch;
  private MyActivity mActivity;
  private Context mContext;
  private HttpGroup mHttpGroup;
  private LinearLayout mLayoutLoadFaild;
  private LinearLayout mLayoutLoading;
  private ImageSwitcher mSwitcher;
  private int oldIndex;
  final OnCommercialListener onCommercialListener = new OnCommercialListener()
  {
    public void onError(int paramAnonymousInt, String paramAnonymousString, HttpGroup.HttpError paramAnonymousHttpError)
    {
      if ((!CommodityPromotionView.this.isEmpty()) && (CommodityPromotionView.this.size() > 0) && (paramAnonymousInt < CommodityPromotionView.this.size()) && (paramAnonymousInt == CommodityPromotionView.this.commIndex)) {
        CommodityPromotionView.this.showActivities(paramAnonymousInt, null);
      }
    }
    
    public void onFinish()
    {
      if ((CommodityPromotionView.this.commercialsList != null) && (CommodityPromotionView.this.commercialsList.size() > 1)) {
        CommodityPromotionView.this.isLoaderFinish = true;
      }
    }
    
    public void onSuccess(int paramAnonymousInt, String paramAnonymousString)
    {
      if ((paramAnonymousInt == CommodityPromotionView.this.commIndex) && (!CommodityPromotionView.this.isEmpty()) && (CommodityPromotionView.this.size() > 0)) {
        CommodityPromotionView.this.showActivities(paramAnonymousInt, paramAnonymousString);
      }
    }
    
    public void onSyncronizotionParams(ArrayList<Commercial> paramAnonymousArrayList)
    {
      CommodityPromotionView.this.show();
      if (CommodityPromotionView.this.commercialsList.size() > 1)
      {
        CommodityPromotionView.this.isLoaderFinish = true;
        CommodityPromotionView.this.commIndex = 0;
        CommodityPromotionView.this.oldIndex = 0;
        CommodityPromotionView.this.start();
      }
    }
  };
  private boolean onWait;
  private Rotate3d rightAnimation;
  private int type;
  
  public CommodityPromotionView(MyActivity paramMyActivity, ImageSwitcher paramImageSwitcher, LinearLayout paramLinearLayout1, LinearLayout paramLinearLayout2, LinearLayout paramLinearLayout3)
  {
    this.mActivity = paramMyActivity;
    this.mContext = paramMyActivity;
    this.mSwitcher = paramImageSwitcher;
    this.commLayout = paramLinearLayout1;
    this.mLayoutLoadFaild = paramLinearLayout3;
    this.mLayoutLoading = paramLinearLayout2;
    this.currentThread = new Thread(this);
    this.currentThread.setName("CommodityPromotionView");
    initActivities();
  }
  
  private void getActivitesImage(final int paramInt, final ArrayList<Commercial> paramArrayList, Commercial paramCommercial, final HttpGroup paramHttpGroup, final OnCommercialListener paramOnCommercialListener)
  {
    final String str = paramCommercial.getHorizontalImg();
    try
    {
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setType(5000);
      localHttpSetting.setEffect(0);
      localHttpSetting.setForeverCache(true);
      localHttpSetting.setUrl(str);
      localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
      {
        private void loadNext(int paramAnonymousInt)
        {
          if (paramAnonymousInt < paramArrayList.size())
          {
            CommodityPromotionView.this.getActivitesImage(paramAnonymousInt, paramArrayList, (Commercial)paramArrayList.get(paramAnonymousInt), paramHttpGroup, paramOnCommercialListener);
            return;
          }
          CommodityPromotionView.this.isOnline = false;
        }
        
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
            localBitmapDrawable = null;
            if (localBitmap != null)
            {
              int i = CommodityPromotionView.this.mSwitcher.getWidth();
              if (i <= 0) {
                i = DPIUtil.getWidth() - DPIUtil.dip2px(10.0F);
              }
              float f = localBitmap.getWidth();
              localBitmap.getHeight();
              (i / f);
              localBitmapDrawable = new BitmapDrawable(localBitmap);
            }
          }
          catch (Exception localException)
          {
            for (;;)
            {
              BitmapDrawable localBitmapDrawable = new BitmapDrawable(ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0));
            }
          }
          if ((localBitmapDrawable != null) && (!TextUtils.isEmpty(str))) {
            CommodityPromotionView.this.commercialCache.put(str, localBitmapDrawable);
          }
          if (paramOnCommercialListener != null) {
            paramOnCommercialListener.onSuccess(paramInt, str);
          }
          loadNext(1 + paramInt);
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          if (paramOnCommercialListener != null) {
            paramOnCommercialListener.onError(paramInt, str, paramAnonymousHttpError);
          }
          loadNext(1 + paramInt);
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      paramHttpGroup.add(localHttpSetting);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private ImageSwitcher initActivities()
  {
    int i = DPIUtil.getWidth() / 2;
    this.leftAnimation = new Rotate3d(0.0F, -90.0F, i, 0.0F);
    this.rightAnimation = new Rotate3d(90.0F, 0.0F, i, 0.0F);
    this.leftAnimation.setFillAfter(true);
    this.leftAnimation.setDuration(500L);
    this.rightAnimation.setFillAfter(true);
    this.rightAnimation.setDuration(500L);
    Animation.AnimationListener local2 = new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        CommodityPromotionView.this.lockTouch = false;
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        CommodityPromotionView.this.lockTouch = true;
      }
    };
    this.leftAnimation.setAnimationListener(local2);
    this.rightAnimation.setAnimationListener(local2);
    setAnimation(0);
    this.mSwitcher.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView) {}
    });
    initCommercial();
    return this.mSwitcher;
  }
  
  private void initCommercial()
  {
    final GestureDetector localGestureDetector = new GestureDetector(new IGestureListener(this.mSwitcher.getParent(), new IGestureListener.TouchFlingActionListener()
    {
      public void next()
      {
        CommodityPromotionView.this.doNext(false);
      }
      
      public void previous()
      {
        CommodityPromotionView.this.doPrevious(false);
      }
      
      public void startActivity()
      {
        CommodityPromotionView.this.doStartActivity();
      }
    }));
    this.mSwitcher.setOnTouchListener(new View.OnTouchListener()
    {
      private void doUp()
      {
        CommodityPromotionView.this.isDown = false;
        CommodityPromotionView.this.onWait = true;
        CommodityPromotionView.this.isDoing = false;
        synchronized (CommodityPromotionView.this.currentThread)
        {
          CommodityPromotionView.this.currentThread.notify();
          return;
        }
      }
      
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          boolean bool1 = CommodityPromotionView.this.lockTouch;
          boolean bool2 = false;
          if (!bool1) {
            bool2 = localGestureDetector.onTouchEvent(paramAnonymousMotionEvent);
          }
          if (CommodityPromotionView.this.isDoUp)
          {
            doUp();
            CommodityPromotionView.this.isDoUp = false;
          }
          return bool2;
          CommodityPromotionView.this.isDown = true;
          CommodityPromotionView.this.notifyCPV();
          continue;
          CommodityPromotionView.this.isDoUp = true;
          continue;
          CommodityPromotionView.this.isDoUp = true;
        }
      }
    });
  }
  
  private Drawable next(Drawable paramDrawable)
  {
    switch (this.type)
    {
    default: 
      return paramDrawable;
    case 0: 
      this.leftAnimation.reverseTransformation(false);
      this.rightAnimation.reverseTransformation(false);
      return paramDrawable;
    }
    push_left();
    return paramDrawable;
  }
  
  private void notifyCPV()
  {
    synchronized (this.currentThread)
    {
      this.currentThread.notify();
      return;
    }
  }
  
  private void onChange()
  {
    this.mActivity.post(new Runnable()
    {
      public void run()
      {
        CommodityPromotionView.this.doPrevious(true);
      }
    });
  }
  
  private Drawable previous(Drawable paramDrawable)
  {
    switch (this.type)
    {
    default: 
      return paramDrawable;
    case 0: 
      this.leftAnimation.reverseTransformation(true);
      this.rightAnimation.reverseTransformation(true);
      return paramDrawable;
    }
    push_right();
    return paramDrawable;
  }
  
  private void push_left()
  {
    this.mSwitcher.setInAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968582));
    this.mSwitcher.setOutAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968583));
  }
  
  private void push_right()
  {
    this.mSwitcher.setInAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968584));
    this.mSwitcher.setOutAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968585));
  }
  
  private void rotate3d()
  {
    this.mSwitcher.setInAnimation(this.rightAnimation);
    this.mSwitcher.setOutAnimation(this.leftAnimation);
  }
  
  private void setAnimation(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      rotate3d();
    }
    for (;;)
    {
      this.type = paramInt;
      return;
      rotate3d();
      continue;
      push_left();
      continue;
      push_right();
    }
  }
  
  private void setImage(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      this.mSwitcher.setImageDrawable(paramDrawable);
      return;
    }
    if (this.isOnline)
    {
      this.mSwitcher.setImageDrawable(new ExceptionDrawable(this.mContext, this.mContext.getString(2131165582)));
      return;
    }
    this.mSwitcher.setImageDrawable(new ExceptionDrawable(this.mContext, this.mContext.getString(2131165737)));
  }
  
  public void clearDrawable()
  {
    if (this.commercialCache != null) {
      this.commercialCache.clear();
    }
  }
  
  public void clearDrawableWithoutCurrent()
  {
    if (this.commercialCache != null) {
      if (1 + this.commIndex <= -1 + size()) {
        break label38;
      }
    }
    int j;
    label38:
    for (int i = 0;; i = 1 + this.commIndex)
    {
      j = 0;
      if (j < this.commercialsList.size()) {
        break;
      }
      return;
    }
    if ((j == this.commIndex) || (j == i)) {}
    for (;;)
    {
      j++;
      break;
      this.commercialCache.remove(((Commercial)this.commercialsList.get(j)).getHorizontalImg());
    }
  }
  
  public void closeNight(int paramInt)
  {
    if (this.commLayout != null)
    {
      View localView = this.commLayout.getChildAt(paramInt);
      if (localView != null) {
        localView.setBackgroundResource(2130837527);
      }
    }
  }
  
  public void createCursor(int paramInt)
  {
    this.commLayout.removeAllViews();
    for (int i = 0;; i++)
    {
      if ((i >= paramInt) || (paramInt <= 1)) {
        return;
      }
      View localView = ImageUtil.inflate(2130903111, null);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((this.commLayout.getWidth() - DPIUtil.dip2px(1.0F) * (paramInt - 2)) / paramInt, DPIUtil.dip2px(2.0F));
      localLayoutParams.setMargins(DPIUtil.dip2px(1.0F), 0, DPIUtil.dip2px(1.0F), 0);
      localView.setLayoutParams(localLayoutParams);
      localView.setBackgroundResource(2130837527);
      this.commLayout.addView(localView);
    }
  }
  
  public void doNext(boolean paramBoolean)
  {
    if (this.isDoing) {
      return;
    }
    if (!paramBoolean) {
      this.isDoing = true;
    }
    if (!isEmpty())
    {
      int i = -1 + this.commIndex;
      this.commIndex = i;
      int j;
      if (i < 0) {
        j = -1 + size();
      }
      for (;;)
      {
        this.commIndex = j;
        if ((this.commIndex < 0) || (this.commIndex > -1 + this.commercialsList.size())) {
          break;
        }
        setImage(previous(getCacheDrawable(((Commercial)this.commercialsList.get(this.commIndex)).getHorizontalImg())));
        if (size() <= 1) {
          break;
        }
        closeNight(this.oldIndex);
        View localView = this.commLayout.getChildAt(this.commIndex);
        this.oldIndex = this.commIndex;
        if (localView == null) {
          break;
        }
        localView.setBackgroundResource(2130837528);
        return;
        j = this.commIndex;
        this.commIndex = (j - 1);
      }
    }
    this.mSwitcher.startAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968588));
  }
  
  public void doPrevious(boolean paramBoolean)
  {
    if (this.isDoing) {
      return;
    }
    if (!paramBoolean) {
      this.isDoing = true;
    }
    if (!isEmpty())
    {
      int i = 1 + this.commIndex;
      this.commIndex = i;
      int j;
      if (i > -1 + size()) {
        j = 0;
      }
      for (;;)
      {
        this.commIndex = j;
        if (this.commIndex > -1 + this.commercialsList.size()) {
          break;
        }
        setImage(next(getCacheDrawable(((Commercial)this.commercialsList.get(this.commIndex)).getHorizontalImg())));
        if (size() <= 1) {
          break;
        }
        closeNight(this.oldIndex);
        View localView = this.commLayout.getChildAt(this.commIndex);
        this.oldIndex = this.commIndex;
        if (localView == null) {
          break;
        }
        localView.setBackgroundResource(2130837528);
        return;
        j = this.commIndex;
        this.commIndex = (j + 1);
      }
    }
    this.mSwitcher.startAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968588));
  }
  
  public void doStartActivity()
  {
    if (!CommonUtil.getInstance().isCanClick()) {}
    label188:
    label196:
    String str2;
    do
    {
      final Commercial localCommercial;
      int m;
      do
      {
        String str1;
        URLParamMap localURLParamMap;
        do
        {
          return;
          int i = this.commIndex;
          int j = 0;
          if (i < 0)
          {
            this.commIndex = j;
            if (this.commIndex <= -1 + size()) {
              break label188;
            }
          }
          for (int k = -1 + size();; k = this.commIndex)
          {
            this.commIndex = k;
            localCommercial = (Commercial)this.commercialsList.get(this.commIndex);
            m = localCommercial.getType();
            if (NewJLogUtil.isUseNewJLog()) {
              NewJLogUtil.onJMAEvent(this.mContext, "Click_CommondityPromotionView", localCommercial.getId());
            }
            if (m != 0) {
              break label196;
            }
            try
            {
              Intent localIntent2 = new Intent(this.mContext, ProductListActivity.class);
              Bundle localBundle = new Bundle();
              localBundle.putSerializable("commercial", localCommercial);
              localIntent2.putExtras(localBundle);
              localIntent2.putExtra("source", new SourceEntity("listActivity", localCommercial.getId()));
              StartActivityUtils.startProductListActivity(this.mActivity, localIntent2);
              return;
            }
            catch (Exception localException)
            {
              return;
            }
            j = this.commIndex;
            break;
          }
          if (m == 1)
          {
            Intent localIntent1 = new Intent(this.mContext, PromotionActivity.class);
            localIntent1.putExtra("source", new SourceEntity("listActivity", localCommercial.getId()));
            this.mActivity.startActivityInFrame(localIntent1);
            return;
          }
          if (m == 2)
          {
            CommonUtil.queryBrowserUrl(localCommercial.getAction(), new URLParamMap(), new CommonBase.BrowserUrlListener()
            {
              public void onComplete(final String paramAnonymousString)
              {
                CommodityPromotionView.this.mActivity.post(new Runnable()
                {
                  public void run()
                  {
                    Intent localIntent = new Intent(CommodityPromotionView.this.mContext, WebActivity.class);
                    localIntent.putExtra("url", paramAnonymousString);
                    localIntent.putExtra("source", new SourceEntity("listActivity", this.val$commercial.getId()));
                    CommodityPromotionView.this.mActivity.startActivityInFrame(localIntent);
                  }
                });
              }
            });
            return;
          }
          if (m != 3) {
            break;
          }
          str1 = localCommercial.getAction();
          localURLParamMap = new URLParamMap();
        } while (TextUtils.isEmpty(str1));
        localURLParamMap.put("to", str1);
        CommonUtil.getInstance().forwardWebActivity(this.mActivity, "to", localURLParamMap);
        return;
      } while (m != 4);
      str2 = localCommercial.getAction();
    } while (TextUtils.isEmpty(str2));
    new URLParamMap().put("to", str2);
    CommonUtil.getInstance().forwardWebActivity(this.mActivity, "to", str2, false, "screen_land");
  }
  
  public void getActivities()
  {
    getActivities(this.onCommercialListener);
  }
  
  public void getActivities(final OnCommercialListener paramOnCommercialListener)
  {
    this.isOnline = true;
    HttpGroup.OnCommonListener local7 = new HttpGroup.OnCommonListener()
    {
      private boolean reLoadData()
      {
        if (!CommodityPromotionView.this.isOnlyNetData)
        {
          CommodityPromotionView.this.isOnlyNetData = true;
          CommodityPromotionView.this.getActivities();
          return true;
        }
        return false;
      }
      
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        CommodityPromotionView.this.mActivity.post(new Runnable()
        {
          public void run()
          {
            CommodityPromotionView.this.mLayoutLoadFaild.setVisibility(8);
            CommodityPromotionView.this.mLayoutLoading.setVisibility(8);
          }
        });
        try
        {
          CommodityPromotionView.this.isActivityLoader = true;
          JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("activityList");
          if (localJSONArrayPoxy != null)
          {
            CommodityPromotionView.this.commercialsList = Commercial.toList(localJSONArrayPoxy, 0);
            if ((CommodityPromotionView.this.commercialsList != null) && (CommodityPromotionView.this.commercialsList.size() > 0) && (CommodityPromotionView.this.commercialsList != null) && (CommodityPromotionView.this.commercialsList.size() > 0))
            {
              if (CommodityPromotionView.this.commercialCache == null) {
                CommodityPromotionView.this.commercialCache = new HashMap();
              }
              paramOnCommercialListener.onSyncronizotionParams(CommodityPromotionView.this.commercialsList);
              CommodityPromotionView.this.getActivitesImage(0, CommodityPromotionView.this.commercialsList, (Commercial)CommodityPromotionView.this.commercialsList.get(0), CommodityPromotionView.this.mActivity.getHttpGroupaAsynPool(), paramOnCommercialListener);
            }
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            paramOnCommercialListener.onFinish();
          }
        }
        finally
        {
          paramOnCommercialListener.onFinish();
        }
        if (reLoadData()) {}
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        if (reLoadData()) {}
        while (!CommodityPromotionView.this.isOnlyNetData) {
          return;
        }
        if (!CommodityPromotionView.this.isActivityLoader) {
          CommodityPromotionView.this.mActivity.post(new Runnable()
          {
            public void run()
            {
              CommodityPromotionView.this.mLayoutLoadFaild.setVisibility(0);
              CommodityPromotionView.this.mLayoutLoading.setVisibility(8);
              CommodityPromotionView.this.mSwitcher.setVisibility(8);
              CommodityPromotionView.this.commLayout.setVisibility(8);
            }
          });
        }
        MyApplication.getInstance().getHandler().post(new Runnable()
        {
          public void run()
          {
            Toast.makeText(MyApplication.getInstance(), MyApplication.getInstance().getString(2131165616), 0).show();
          }
        });
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    };
    try
    {
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("indexFocusActivity");
      localHttpSetting.putJsonParam("page", "1");
      localHttpSetting.putJsonParam("pagesize", "12");
      localHttpSetting.setListener(local7);
      localHttpSetting.setEffect(0);
      localHttpSetting.setForeverCache(true);
      if (this.isOnlyNetData) {
        localHttpSetting.setCacheMode(2);
      }
      for (;;)
      {
        localHttpSetting.setNeedGlobalInitialization(false);
        if (this.mHttpGroup == null) {
          break;
        }
        this.mHttpGroup.add(localHttpSetting);
        return;
        localHttpSetting.setCacheMode(1);
      }
      this.mActivity.getHttpGroupaAsynPool().add(localHttpSetting);
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
  }
  
  public Drawable getCacheDrawable(String paramString)
  {
    if ((this.commercialCache == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    return (Drawable)this.commercialCache.get(paramString);
  }
  
  public boolean isActivityLoader()
  {
    return this.isActivityLoader;
  }
  
  public boolean isEmpty()
  {
    return this.commercialsList == null;
  }
  
  public void onReloadImage()
  {
    new Thread()
    {
      public void run()
      {
        setName("CommodityPromotionView_onReloadImage");
        try
        {
          if (CommodityPromotionView.this.commercialsList != null)
          {
            if (CommodityPromotionView.this.commercialsList.size() < 1) {
              return;
            }
            if ((CommodityPromotionView.this.commercialsList != null) && (CommodityPromotionView.this.commercialsList.size() > 0))
            {
              if (CommodityPromotionView.this.commercialCache == null) {
                CommodityPromotionView.this.commercialCache = new HashMap();
              }
              CommodityPromotionView.this.getActivitesImage(0, CommodityPromotionView.this.commercialsList, (Commercial)CommodityPromotionView.this.commercialsList.get(0), CommodityPromotionView.this.mActivity.getHttpGroupaAsynPool(), null);
              return;
            }
          }
        }
        catch (Exception localException) {}
      }
    }.start();
  }
  
  public void removeDrawable(String paramString)
  {
    if (this.commercialCache != null) {
      this.commercialCache.remove(paramString);
    }
  }
  
  public void resetNoLoad() {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 151	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:isDown	Z
    //   4: ifne -4 -> 0
    //   7: aload_0
    //   8: getfield 88	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:currentThread	Ljava/lang/Thread;
    //   11: astore_2
    //   12: aload_2
    //   13: monitorenter
    //   14: aload_0
    //   15: getfield 88	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:currentThread	Ljava/lang/Thread;
    //   18: ldc2_w 592
    //   21: invokevirtual 596	java/lang/Object:wait	(J)V
    //   24: aload_2
    //   25: monitorexit
    //   26: aload_0
    //   27: getfield 151	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:isDown	Z
    //   30: ifeq +22 -> 52
    //   33: aload_0
    //   34: getfield 88	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:currentThread	Ljava/lang/Thread;
    //   37: astore 4
    //   39: aload 4
    //   41: monitorenter
    //   42: aload_0
    //   43: getfield 88	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:currentThread	Ljava/lang/Thread;
    //   46: invokevirtual 598	java/lang/Object:wait	()V
    //   49: aload 4
    //   51: monitorexit
    //   52: aload_0
    //   53: getfield 107	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:onWait	Z
    //   56: ifeq +26 -> 82
    //   59: aload_0
    //   60: iconst_0
    //   61: putfield 107	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:onWait	Z
    //   64: goto -64 -> 0
    //   67: astore_1
    //   68: return
    //   69: astore_3
    //   70: aload_2
    //   71: monitorexit
    //   72: aload_3
    //   73: athrow
    //   74: astore 5
    //   76: aload 4
    //   78: monitorexit
    //   79: aload 5
    //   81: athrow
    //   82: aload_0
    //   83: invokespecial 600	com/jingdong/app/mall/utils/ui/view/CommodityPromotionView:onChange	()V
    //   86: goto -86 -> 0
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	this	CommodityPromotionView
    //   67	1	1	localException	Exception
    //   69	4	3	localObject1	Object
    //   74	6	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	14	67	java/lang/Exception
    //   26	42	67	java/lang/Exception
    //   52	64	67	java/lang/Exception
    //   72	74	67	java/lang/Exception
    //   79	82	67	java/lang/Exception
    //   82	86	67	java/lang/Exception
    //   14	26	69	finally
    //   70	72	69	finally
    //   42	52	74	finally
    //   76	79	74	finally
  }
  
  public void setHttpGroup(HttpGroup paramHttpGroup)
  {
    this.mHttpGroup = paramHttpGroup;
  }
  
  public void show()
  {
    this.mActivity.post(new Runnable()
    {
      public void run()
      {
        CommodityPromotionView.this.createCursor(CommodityPromotionView.this.size());
        CommodityPromotionView.this.mSwitcher.setVisibility(0);
        CommodityPromotionView.this.commLayout.setVisibility(0);
        CommodityPromotionView.this.mSwitcher.setImageDrawable(new ExceptionDrawable(CommodityPromotionView.this.mContext, CommodityPromotionView.this.mContext.getString(2131165582)));
        if (CommodityPromotionView.this.commLayout.getChildAt(0) != null) {
          CommodityPromotionView.this.commLayout.getChildAt(0).setBackgroundResource(2130837528);
        }
      }
    });
  }
  
  public void showActivities(final int paramInt, final String paramString)
  {
    this.mActivity.post(new Runnable()
    {
      public void run()
      {
        if ((CommodityPromotionView.this.commercialCache != null) && (!TextUtils.isEmpty(paramString))) {}
        for (Object localObject = (Drawable)CommodityPromotionView.this.commercialCache.get(paramString);; localObject = new ExceptionDrawable(CommodityPromotionView.this.mContext, CommodityPromotionView.this.mContext.getString(2131165737)))
        {
          CommodityPromotionView.this.mSwitcher.setImageDrawable((Drawable)localObject);
          if ((CommodityPromotionView.this.commercialsList.size() > 1) && (CommodityPromotionView.this.commLayout.getChildAt(paramInt) != null)) {
            CommodityPromotionView.this.commLayout.getChildAt(paramInt).setBackgroundResource(2130837528);
          }
          CommodityPromotionView.this.rotate3d();
          return;
        }
      }
    });
  }
  
  public int size()
  {
    if (this.commercialsList == null) {
      return 0;
    }
    return this.commercialsList.size();
  }
  
  public void start()
  {
    if (this.isLoaderFinish)
    {
      if ((this.currentThread != null) && (!this.currentThread.isAlive())) {
        this.currentThread.start();
      }
      this.isDown = false;
      this.onWait = true;
      this.isDoing = false;
      this.isDoUp = true;
      notifyCPV();
    }
  }
  
  public void stop()
  {
    if (this.isLoaderFinish)
    {
      this.isDown = true;
      onChange();
    }
  }
  
  public static abstract interface OnCommercialListener
  {
    public abstract void onError(int paramInt, String paramString, HttpGroup.HttpError paramHttpError);
    
    public abstract void onFinish();
    
    public abstract void onSuccess(int paramInt, String paramString);
    
    public abstract void onSyncronizotionParams(ArrayList<Commercial> paramArrayList);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.CommodityPromotionView
 * JD-Core Version:    0.7.0.1
 */