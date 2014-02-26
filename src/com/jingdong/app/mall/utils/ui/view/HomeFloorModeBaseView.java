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
import android.widget.TextView;
import com.jingdong.app.mall.home.FloorProductListActivity;
import com.jingdong.app.mall.home.slide.LifeAssistantActivity;
import com.jingdong.app.mall.home.slide.SlideScreenActivity;
import com.jingdong.app.mall.signin.SignActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.HomeFloorElement;
import com.jingdong.common.entity.HomeFloorModel;
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

public abstract class HomeFloorModeBaseView
  extends LinearLayout
{
  public static final String COME_FROM = "floor";
  public static final String KEY_FUNCTION_ID = "functionId";
  public static final String KEY_PARAMS = "params";
  private final String TAG = "HomeFloorModeBaseView";
  protected MyActivity activity;
  private int dividerWh = 1;
  protected HttpGroup group;
  private TextView header;
  private int height = 406 * DPIUtil.getHeight() / 1280;
  private int imageRoundPx = DPIUtil.dip2px(3.0F);
  private int marinBottom = 15 * DPIUtil.getHeight() / 1280;
  protected HomeFloorModel model;
  private int paddingBottom = 20 * DPIUtil.getHeight() / 1280;
  protected int paddingHorizontal = 16 * DPIUtil.getWidth() / 720;
  private int textHeight = 88 * DPIUtil.getHeight() / 1280;
  private UseCacheHttpGroupUtil util = new UseCacheHttpGroupUtil();
  protected ArrayList<ImageView> viewList = new ArrayList();
  
  public HomeFloorModeBaseView(Context paramContext)
  {
    super(paramContext);
  }
  
  public HomeFloorModeBaseView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void initData()
  {
    HttpGroup.OnCommonListener local1 = new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        int i = 0;
        try
        {
          JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("childModelList");
          i = 0;
          if (localJSONArrayPoxy != null)
          {
            i = 0;
            if (localJSONArrayPoxy != null)
            {
              int j = localJSONArrayPoxy.length();
              i = 0;
              if (j > 0)
              {
                final ArrayList localArrayList = HomeFloorElement.toList(localJSONArrayPoxy);
                i = 1;
                HomeFloorModeBaseView.this.activity.post(new Runnable()
                {
                  public void run()
                  {
                    if ((localArrayList != null) && (localArrayList.size() > 0)) {
                      HomeFloorModeBaseView.this.initUI(localArrayList);
                    }
                  }
                });
              }
            }
          }
          return;
        }
        catch (Exception localException) {}finally
        {
          if (i == 0) {
            HomeFloorModeBaseView.this.activity.post(new Runnable()
            {
              public void run()
              {
                HomeFloorModeBaseView.this.setVisibility(8);
              }
            });
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    };
    this.util.addUseCache(this.group, this.model.getFunctionId(), this.model.getParams(), local1);
  }
  
  protected TextView getHeader()
  {
    return this.header;
  }
  
  protected View getHorizontalDivider()
  {
    View localView = new View(this.activity);
    localView.setLayoutParams(new LinearLayout.LayoutParams(-1, this.dividerWh));
    localView.setBackgroundColor(this.activity.getResources().getColor(2131296420));
    return localView;
  }
  
  protected int getImageRoundPx()
  {
    return this.imageRoundPx;
  }
  
  protected int getPriority()
  {
    return 0;
  }
  
  protected View getVerticalDivider()
  {
    View localView = new View(this.activity);
    localView.setLayoutParams(new LinearLayout.LayoutParams(this.dividerWh, -1));
    localView.setBackgroundColor(this.activity.getResources().getColor(2131296420));
    return localView;
  }
  
  public void init(MyActivity paramMyActivity, HomeFloorModel paramHomeFloorModel, HttpGroup paramHttpGroup, boolean paramBoolean)
  {
    try
    {
      this.util.setOnlyUseCache(paramBoolean);
      if ((this.activity == null) && (getVisibility() != 8)) {
        setVisibility(8);
      }
      this.activity = paramMyActivity;
      this.model = paramHomeFloorModel;
      this.group = paramHttpGroup;
      initData();
      return;
    }
    finally {}
  }
  
  protected void initImageView(final MyActivity paramMyActivity, ImageView paramImageView, final HomeFloorElement paramHomeFloorElement, boolean paramBoolean)
  {
    paramImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if ((paramHomeFloorElement == null) || (paramMyActivity == null)) {}
        do
        {
          do
          {
            do
            {
              return;
            } while (!CommonUtil.getInstance().isCanClick());
            if (NewJLogUtil.isUseNewJLog()) {
              NewJLogUtil.onJMAEvent(paramMyActivity, "Click_HomeNewFloor", paramHomeFloorElement.getTitle());
            }
            if (paramHomeFloorElement.isGoTOList())
            {
              Intent localIntent1 = new Intent(paramMyActivity, FloorProductListActivity.class);
              Bundle localBundle = new Bundle();
              localBundle.putString("functionId", paramHomeFloorElement.getFunctionId());
              localBundle.putString("paramsJsonString", paramHomeFloorElement.getParamsJson().toString());
              localBundle.putString("title", paramHomeFloorElement.getTitle());
              localBundle.putString("comeFrom", "floor");
              localIntent1.putExtras(localBundle);
              localIntent1.putExtra("com.360buy:navigationDisplayFlag", -1);
              paramMyActivity.startActivityInFrame(localIntent1);
              return;
            }
            if (!paramHomeFloorElement.isGoTOM()) {
              break;
            }
          } while (TextUtils.isEmpty(paramHomeFloorElement.getUnionUrl()));
          URLParamMap localURLParamMap = new URLParamMap();
          localURLParamMap.put("to", paramHomeFloorElement.getUnionUrl());
          CommonUtil.getInstance().forwardWebActivity(paramMyActivity, "to", localURLParamMap);
          return;
          if ((paramHomeFloorElement.isGoTOActvity()) || (paramHomeFloorElement.isGoTOActvityNoHot()))
          {
            Intent localIntent2 = new Intent(paramMyActivity, SlideScreenActivity.class);
            localIntent2.putExtra("com.360buy:navigationDisplayFlag", -1);
            localIntent2.putExtra("data", paramHomeFloorElement);
            paramMyActivity.startActivityInFrame(localIntent2);
            return;
          }
          if (paramHomeFloorElement.isGoTOLifeAssistant())
          {
            Intent localIntent3 = new Intent(paramMyActivity, LifeAssistantActivity.class);
            localIntent3.putExtra("title", paramMyActivity.getString(2131166364));
            localIntent3.putExtra("com.360buy:navigationDisplayFlag", -1);
            paramMyActivity.startActivityInFrame(localIntent3);
            return;
          }
        } while (!paramHomeFloorElement.isGoTOSign());
        Intent localIntent4 = new Intent(paramMyActivity, SignActivity.class);
        paramMyActivity.startActivity(localIntent4);
      }
    });
    JDImageUtils.setViewImage(paramMyActivity, paramImageView, paramHomeFloorElement.getImageUrl(), paramBoolean, getImageRoundPx(), getPriority());
  }
  
  protected void initLayoutParams()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, this.height);
    localLayoutParams.bottomMargin = this.marinBottom;
    setLayoutParams(localLayoutParams);
    setBackgroundResource(2130838271);
    setPadding(this.paddingHorizontal, 0, this.paddingHorizontal, this.paddingBottom);
  }
  
  protected void initUI(ArrayList<HomeFloorElement> paramArrayList)
  {
    try
    {
      initLayoutParams();
      setOrientation(1);
      if (getVisibility() != 0) {
        setVisibility(0);
      }
      if (this.header == null)
      {
        this.header = new TextView(getContext());
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, this.textHeight);
        this.header.setLayoutParams(localLayoutParams);
        this.header.setGravity(16);
        this.header.setText(this.model.getName());
        this.header.setTextColor(getResources().getColor(2131296418));
        this.header.setTextSize(16.0F);
        addView(this.header);
      }
      refreshUI(paramArrayList);
      if (getVisibility() != 0) {
        setVisibility(0);
      }
      return;
    }
    finally {}
  }
  
  protected abstract void refreshUI(ArrayList<HomeFloorElement> paramArrayList);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.HomeFloorModeBaseView
 * JD-Core Version:    0.7.0.1
 */