package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.LayoutParams;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.product.ProductListActivity;
import com.jingdong.app.mall.promotion.PromotionActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.Commercial;
import com.jingdong.common.entity.HomeFloorModel;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JDImageUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.common.utils.UseCacheHttpGroupUtil;
import java.util.ArrayList;

public class CarouselFigureViewPager
  extends ViewPager
  implements View.OnTouchListener
{
  private static final String TAG = "CarouselFigureViewPager";
  private MyActivity activity;
  private CarouseFigureViewPagerAdapter adapter;
  private Runnable cursorCallBackRunnable;
  private HttpGroup group;
  private int imagePadding = -DPIUtil.dip2px(2.0F);
  private ViewGroup parent;
  private int size;
  private UseCacheHttpGroupUtil util = new UseCacheHttpGroupUtil();
  
  public CarouselFigureViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public CarouselFigureViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void doStartActivity(final Commercial paramCommercial)
  {
    if (!CommonUtil.getInstance().isCanClick()) {}
    String str2;
    do
    {
      int i;
      do
      {
        String str1;
        URLParamMap localURLParamMap;
        do
        {
          return;
          i = paramCommercial.getType();
          if (NewJLogUtil.isUseNewJLog()) {
            NewJLogUtil.onJMAEvent(this.activity, "Click_CommondityPromotionView", paramCommercial.getId());
          }
          if (i == 0) {}
          try
          {
            Intent localIntent2 = new Intent(this.activity, ProductListActivity.class);
            Bundle localBundle = new Bundle();
            localBundle.putSerializable("commercial", paramCommercial);
            localIntent2.putExtras(localBundle);
            localIntent2.putExtra("source", new SourceEntity("listActivity", paramCommercial.getId()));
            StartActivityUtils.startProductListActivity(this.activity, localIntent2);
            return;
          }
          catch (Exception localException) {}
          if (i == 1)
          {
            Intent localIntent1 = new Intent(this.activity, PromotionActivity.class);
            localIntent1.putExtra("source", new SourceEntity("listActivity", paramCommercial.getId()));
            this.activity.startActivityInFrame(localIntent1);
            return;
          }
          if (i == 2)
          {
            CommonUtil.queryBrowserUrl(paramCommercial.getAction(), new URLParamMap(), new CommonBase.BrowserUrlListener()
            {
              public void onComplete(final String paramAnonymousString)
              {
                CarouselFigureViewPager.this.activity.post(new Runnable()
                {
                  public void run()
                  {
                    Intent localIntent = new Intent(CarouselFigureViewPager.this.activity, WebActivity.class);
                    localIntent.putExtra("url", paramAnonymousString);
                    localIntent.putExtra("source", new SourceEntity("listActivity", this.val$commercial.getId()));
                    CarouselFigureViewPager.this.activity.startActivityInFrame(localIntent);
                  }
                });
              }
            });
            return;
          }
          if (i != 3) {
            break;
          }
          str1 = paramCommercial.getAction();
          localURLParamMap = new URLParamMap();
        } while (TextUtils.isEmpty(str1));
        localURLParamMap.put("to", str1);
        CommonUtil.getInstance().forwardWebActivity(this.activity, "to", localURLParamMap);
        return;
      } while (i != 4);
      str2 = paramCommercial.getAction();
    } while (TextUtils.isEmpty(str2));
    new URLParamMap().put("to", str2);
    CommonUtil.getInstance().forwardWebActivity(this.activity, "to", str2, false, "screen_land");
    return;
  }
  
  private void initData(HomeFloorModel paramHomeFloorModel)
  {
    HttpGroup.OnCommonListener local1 = new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("activityList");
          if (localJSONArrayPoxy != null)
          {
            ArrayList localArrayList = Commercial.toList(localJSONArrayPoxy, 0);
            if ((localArrayList != null) && (localArrayList.size() > 0))
            {
              CarouselFigureViewPager.this.setCount(localArrayList.size());
              CarouselFigureViewPager.this.refreshAdapter(localArrayList);
            }
          }
          return;
        }
        catch (Exception localException) {}finally
        {
          if (CarouselFigureViewPager.this.cursorCallBackRunnable != null) {
            CarouselFigureViewPager.this.activity.post(CarouselFigureViewPager.this.cursorCallBackRunnable);
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        if (CarouselFigureViewPager.this.cursorCallBackRunnable != null) {
          CarouselFigureViewPager.this.activity.post(CarouselFigureViewPager.this.cursorCallBackRunnable);
        }
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    };
    this.util.addUseCache(this.group, paramHomeFloorModel.getFunctionId(), paramHomeFloorModel.getParams(), local1);
  }
  
  public CarouseFigureViewPagerAdapter getAdapter(ArrayList<Commercial> paramArrayList)
  {
    this.adapter = new CarouseFigureViewPagerAdapter(paramArrayList);
    return this.adapter;
  }
  
  public int getCount()
  {
    return this.size;
  }
  
  public void init(MyActivity paramMyActivity, HttpGroup paramHttpGroup, HomeFloorModel paramHomeFloorModel, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    this.util.setOnlyUseCache(paramBoolean);
    this.parent = paramViewGroup;
    this.group = paramHttpGroup;
    this.activity = paramMyActivity;
    setOnTouchListener(this);
    initData(paramHomeFloorModel);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 2: 
    default: 
      if (this.parent != null) {
        this.parent.requestDisallowInterceptTouchEvent(true);
      }
      break;
    }
    for (;;)
    {
      onTouchEvent(paramMotionEvent);
      return true;
      if (this.parent != null) {
        this.parent.requestDisallowInterceptTouchEvent(false);
      }
    }
  }
  
  protected void refreshAdapter(final ArrayList<Commercial> paramArrayList)
  {
    this.activity.post(new Runnable()
    {
      public void run()
      {
        CarouselFigureViewPager.this.adapter = CarouselFigureViewPager.this.getAdapter(paramArrayList);
        CarouselFigureViewPager.this.setAdapter(CarouselFigureViewPager.this.adapter);
      }
    });
  }
  
  protected void setCount(int paramInt)
  {
    this.size = paramInt;
  }
  
  public void setCursorCallBack(Runnable paramRunnable)
  {
    this.cursorCallBackRunnable = paramRunnable;
  }
  
  private class CarouseFigureViewPagerAdapter
    extends PagerAdapter
  {
    private ArrayList<Commercial> commercialsList;
    
    public CarouseFigureViewPagerAdapter()
    {
      Object localObject;
      this.commercialsList = localObject;
    }
    
    public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
    {
      ((ViewPager)paramViewGroup).removeView((View)paramObject);
    }
    
    public int getCount()
    {
      return this.commercialsList.size();
    }
    
    public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
    {
      final Commercial localCommercial = (Commercial)this.commercialsList.get(paramInt);
      ImageView localImageView = new ImageView(CarouselFigureViewPager.this.getContext());
      localImageView.setLayoutParams(new ViewPager.LayoutParams());
      localImageView.setPadding(CarouselFigureViewPager.this.imagePadding, CarouselFigureViewPager.this.imagePadding, CarouselFigureViewPager.this.imagePadding, CarouselFigureViewPager.this.imagePadding);
      localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      localImageView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (!CommonUtil.getInstance().isCanClick()) {
            return;
          }
          CarouselFigureViewPager.this.doStartActivity(localCommercial);
        }
      });
      if (localCommercial != null) {
        JDImageUtils.setViewImageWithPriority(CarouselFigureViewPager.this.activity, localImageView, localCommercial.getHorizontalImg(), 100);
      }
      ((ViewPager)paramViewGroup).addView(localImageView);
      return localImageView;
    }
    
    public boolean isViewFromObject(View paramView, Object paramObject)
    {
      return paramView == paramObject;
    }
    
    public void setData(ArrayList<Commercial> paramArrayList)
    {
      this.commercialsList = paramArrayList;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.CarouselFigureViewPager
 * JD-Core Version:    0.7.0.1
 */