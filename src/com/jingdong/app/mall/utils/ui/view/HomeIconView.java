package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.jd.lottery.lib.activity.MainActivity;
import com.jingdong.app.mall.home.NewHomeActivity;
import com.jingdong.app.mall.personel.MyCollectActivity;
import com.jingdong.app.mall.shake.ShakeActivity;
import com.jingdong.app.mall.shake.ShakeController;
import com.jingdong.app.mall.signin.SignActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.HomeFloorModel;
import com.jingdong.common.entity.HomeLayout;
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
import com.jingdong.common.utils.ShakeUtils;
import com.jingdong.common.utils.UseCacheHttpGroupUtil;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class HomeIconView
  extends LinearLayout
{
  private static final String TAG = "HomeIconView";
  private final String LOCAL_LOTTERY_GUIDED_TAG = "com.jingdong.app.mall.local.lottery";
  private MyActivity activity;
  private int childHeight = 155 * DPIUtil.getHeight() / 1280;
  private int childImageHW = 75 * DPIUtil.getHeight() / 1280;
  private int childTextHeight = 62 * DPIUtil.getWidth() / 720;
  private int childWidth = 160 * DPIUtil.getWidth() / 720;
  private HttpGroup group;
  private int halfMarginHorizontal = this.marginHorizontal / 2;
  private ImageView localLotteryImagePop;
  private ShakeController mShakeController;
  private int marginHorizontal = 16 * DPIUtil.getWidth() / 720;
  private int marginVertical = 16 * DPIUtil.getHeight() / 1280;
  private HomeFloorModel model;
  private int popMargin = DPIUtil.dip2px(8.0F);
  private int popWH = 22 * DPIUtil.getHeight() / 1280;
  private ImageView shakeImagePop;
  private UseCacheHttpGroupUtil util = new UseCacheHttpGroupUtil();
  
  public HomeIconView(Context paramContext)
  {
    super(paramContext);
  }
  
  public HomeIconView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private View generateChild(HomeLayout paramHomeLayout, boolean paramBoolean1, boolean paramBoolean2)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(getContext());
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(this.childWidth, this.childHeight);
    localLayoutParams.bottomMargin = 0;
    localLayoutParams.topMargin = this.marginVertical;
    localLayoutParams.weight = 1.0F;
    if (paramBoolean1)
    {
      localLayoutParams.leftMargin = this.marginHorizontal;
      localLayoutParams.rightMargin = this.halfMarginHorizontal;
    }
    for (;;)
    {
      localRelativeLayout.setLayoutParams(localLayoutParams);
      localRelativeLayout.setBackgroundResource(2130837892);
      localRelativeLayout.setGravity(17);
      ImageView localImageView = new ImageView(getContext());
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(this.childImageHW, this.childImageHW);
      localLayoutParams1.bottomMargin = 0;
      localLayoutParams1.topMargin = this.marginHorizontal;
      localLayoutParams1.rightMargin = this.marginHorizontal;
      localLayoutParams1.leftMargin = this.marginHorizontal;
      localLayoutParams1.addRule(14, -1);
      localImageView.setLayoutParams(localLayoutParams1);
      localImageView.setId(4660);
      TextView localTextView = new TextView(getContext());
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-1, this.childTextHeight);
      localLayoutParams2.addRule(3, localImageView.getId());
      localTextView.setLayoutParams(localLayoutParams2);
      localTextView.setGravity(17);
      localTextView.setText(paramHomeLayout.getTitle());
      localTextView.setTextColor(getResources().getColor(2131296417));
      localTextView.setTextSize(14.0F);
      localRelativeLayout.addView(localImageView);
      localRelativeLayout.addView(localTextView);
      initChild(localRelativeLayout, paramHomeLayout, localImageView);
      localRelativeLayout.setTag(localImageView);
      return localRelativeLayout;
      if (paramBoolean2)
      {
        localLayoutParams.leftMargin = this.halfMarginHorizontal;
        localLayoutParams.rightMargin = this.marginHorizontal;
      }
      else
      {
        localLayoutParams.leftMargin = this.halfMarginHorizontal;
        localLayoutParams.rightMargin = this.halfMarginHorizontal;
      }
    }
  }
  
  private ImageView generatorPop()
  {
    ImageView localImageView = new ImageView(getContext());
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(this.popWH, this.popWH);
    localLayoutParams.topMargin = this.popMargin;
    localLayoutParams.rightMargin = this.popMargin;
    localLayoutParams.addRule(11, -1);
    localLayoutParams.addRule(10, -1);
    localImageView.setLayoutParams(localLayoutParams);
    localImageView.setImageResource(2130838235);
    return localImageView;
  }
  
  private void gotoShakeActivity()
  {
    if (this.activity != null) {
      this.activity.post(new Runnable()
      {
        public void run()
        {
          Runnable local1 = new Runnable()
          {
            public void run()
            {
              Intent localIntent = new Intent(HomeIconView.this.activity, ShakeActivity.class);
              localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
              Bundle localBundle = new Bundle();
              localBundle.putSerializable("shake_type", HomeIconView.this.mShakeController.getShakeBDInfo());
              localIntent.putExtras(localBundle);
              HomeIconView.this.activity.startActivityInFrame(localIntent);
            }
          };
          HomeIconView.this.mShakeController = new ShakeController(HomeIconView.this.group);
          HomeIconView.this.mShakeController.queryShakeBDInfo(HomeIconView.this.activity, local1);
        }
      });
    }
  }
  
  private void initChild(RelativeLayout paramRelativeLayout, final HomeLayout paramHomeLayout, ImageView paramImageView)
  {
    final String str = paramHomeLayout.getType();
    if ("6".equals(str))
    {
      this.shakeImagePop = generatorPop();
      if (!isCanShake()) {
        break label122;
      }
      if (this.shakeImagePop.getVisibility() != 0) {
        this.shakeImagePop.setVisibility(0);
      }
    }
    for (;;)
    {
      paramRelativeLayout.addView(this.shakeImagePop);
      if (("9".equals(str)) && (!CommonUtil.activityIsGuided("com.jingdong.app.mall.local.lottery")))
      {
        this.localLotteryImagePop = generatorPop();
        paramRelativeLayout.addView(this.localLotteryImagePop);
      }
      paramRelativeLayout.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (!CommonUtil.getInstance().isCanClick()) {}
          do
          {
            String str;
            do
            {
              do
              {
                return;
              } while (TextUtils.isEmpty(str));
              if (NewJLogUtil.isUseNewJLog()) {
                NewJLogUtil.onJMAEvent(HomeIconView.this.activity, "Click_HomeIcon", paramHomeLayout.getType() + "&" + paramHomeLayout.getFunctionId());
              }
              if (!"5".equals(str)) {
                break;
              }
              str = paramHomeLayout.getFunctionId();
            } while (TextUtils.isEmpty(str));
            CommonUtil.getInstance().forwardWebActivity(HomeIconView.this.activity, str);
            return;
            if ("6".equals(str))
            {
              HomeIconView.this.gotoShakeActivity();
              return;
            }
            if ("7".equals(str))
            {
              Runnable local1 = new Runnable()
              {
                public void run()
                {
                  HomeIconView.this.post(new Runnable()
                  {
                    public void run()
                    {
                      Intent localIntent = new Intent(HomeIconView.this.activity, MyCollectActivity.class);
                      localIntent.putExtra("title", HomeIconView.this.activity.getString(2131166346));
                      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
                      localIntent.putExtra("isFromHome", true);
                      HomeIconView.this.activity.startActivityInFrame(localIntent);
                    }
                  });
                }
              };
              LoginUser.getInstance().executeLoginRunnable(HomeIconView.this.activity, local1);
              return;
            }
            if ("8".equals(str))
            {
              Intent localIntent1 = new Intent(HomeIconView.this.activity.getApplicationContext(), SignActivity.class);
              HomeIconView.this.activity.startActivity(localIntent1);
              return;
            }
          } while (!"9".equals(str));
          CommonUtil.setIsGuided("com.jingdong.app.mall.local.lottery");
          Intent localIntent2 = new Intent(HomeIconView.this.activity.getApplicationContext(), MainActivity.class);
          HomeIconView.this.activity.startActivity(localIntent2);
        }
      });
      JDImageUtils.setViewImageWithPriority(this.activity, paramImageView, paramHomeLayout.getIcon(), 100);
      return;
      label122:
      if (this.shakeImagePop.getVisibility() != 8) {
        this.shakeImagePop.setVisibility(8);
      }
    }
  }
  
  private void initData()
  {
    HttpGroup.OnCommonListener local1 = new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        int i = 0;
        do
        {
          try
          {
            JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("contentList");
            if (localJSONArrayPoxy != null)
            {
              i = 0;
              if (localJSONArrayPoxy != null)
              {
                int j = localJSONArrayPoxy.length();
                i = 0;
                if (j > 0)
                {
                  final ArrayList localArrayList = HomeLayout.toList(localJSONArrayPoxy);
                  i = 1;
                  HomeIconView.this.activity.post(new Runnable()
                  {
                    public void run()
                    {
                      if ((localArrayList != null) && (localArrayList.size() > 0)) {
                        HomeIconView.this.refreshHomeIcons(localArrayList);
                      }
                    }
                  });
                  return;
                }
              }
            }
          }
          catch (Exception localException)
          {
            return;
          }
          finally
          {
            if (i == 0) {
              HomeIconView.this.activity.post(new Runnable()
              {
                public void run()
                {
                  HomeIconView.this.setVisibility(8);
                }
              });
            }
          }
        } while (0 != 0);
        HomeIconView.this.activity.post(new Runnable()
        {
          public void run()
          {
            HomeIconView.this.setVisibility(8);
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    };
    this.util.addUseCache(this.group, this.model.getFunctionId(), this.model.getParams(), local1);
  }
  
  private boolean isCanShake()
  {
    if (!TextUtils.isEmpty(NewHomeActivity.currentTime)) {
      try
      {
        boolean bool = ShakeUtils.isCanShakeing(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(NewHomeActivity.currentTime));
        return bool;
      }
      catch (Exception localException) {}
    }
    return false;
  }
  
  private void refreshHomeIcons(ArrayList<HomeLayout> paramArrayList)
  {
    if (getVisibility() != 0) {
      setVisibility(0);
    }
    try
    {
      if (getChildCount() > paramArrayList.size())
      {
        j = getChildCount();
        int k = paramArrayList.size();
        if (j > k) {
          break label121;
        }
      }
    }
    catch (Exception localException)
    {
      int j;
      label42:
      int i;
      break label42;
    }
    if ((this.shakeImagePop != null) && (this.shakeImagePop.getVisibility() != 8)) {
      this.shakeImagePop.setVisibility(8);
    }
    if ((this.localLotteryImagePop != null) && (this.localLotteryImagePop.getVisibility() != 8)) {
      this.localLotteryImagePop.setVisibility(8);
    }
    i = 0;
    for (;;)
    {
      if (i >= paramArrayList.size()) {}
      label121:
      while (i == 4)
      {
        if (getVisibility() != 0) {
          setVisibility(0);
        }
        return;
        int m = j - 1;
        removeViewAt(m);
        j--;
        break;
      }
      HomeLayout localHomeLayout = (HomeLayout)paramArrayList.get(i);
      if (getChildCount() <= i) {
        break label199;
      }
      try
      {
        RelativeLayout localRelativeLayout = (RelativeLayout)getChildAt(i);
        if (localRelativeLayout != null) {
          initChild(localRelativeLayout, localHomeLayout, (ImageView)localRelativeLayout.getTag());
        }
        label193:
        i++;
      }
      catch (Throwable localThrowable)
      {
        boolean bool1;
        boolean bool2;
        break label193;
      }
    }
    label199:
    if (i == 0)
    {
      bool1 = true;
      label206:
      if (i != -1 + paramArrayList.size()) {
        break label242;
      }
    }
    label242:
    for (bool2 = true;; bool2 = false)
    {
      addView(generateChild(localHomeLayout, bool1, bool2));
      break;
      bool1 = false;
      break label206;
    }
  }
  
  public void init(MyActivity paramMyActivity, HomeFloorModel paramHomeFloorModel, HttpGroup paramHttpGroup, int paramInt, boolean paramBoolean)
  {
    if ((this.activity == null) && (getVisibility() != 8)) {
      setVisibility(8);
    }
    this.util.setOnlyUseCache(paramBoolean);
    this.activity = paramMyActivity;
    this.model = paramHomeFloorModel;
    this.group = paramHttpGroup;
    setLayoutParams(new LinearLayout.LayoutParams(-1, paramInt));
    setPadding(0, 0, 0, 0);
    setOrientation(0);
    initData();
  }
  
  public void resetPopView()
  {
    if (this.shakeImagePop != null)
    {
      if (isCanShake()) {
        break label94;
      }
      if (this.shakeImagePop.getVisibility() != 8) {
        this.shakeImagePop.setVisibility(8);
      }
    }
    for (;;)
    {
      if ((this.localLotteryImagePop != null) && (CommonUtil.activityIsGuided("com.jingdong.app.mall.local.lottery")) && (this.localLotteryImagePop.getVisibility() != 8)) {
        this.localLotteryImagePop.setVisibility(8);
      }
      if (this.activity != null) {
        this.activity.post(new Runnable()
        {
          public void run()
          {
            HomeIconView.this.requestLayout();
          }
        });
      }
      return;
      label94:
      if (this.shakeImagePop.getVisibility() != 0) {
        this.shakeImagePop.setVisibility(0);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.HomeIconView
 * JD-Core Version:    0.7.0.1
 */