package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.jingdong.app.mall.product.LimitBuyListActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.JDMiaoShaUtil;
import com.jingdong.app.mall.utils.JDMiaoShaUtil.CountDownListener;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.app.mall.utils.ui.DateDrawable;
import com.jingdong.common.entity.HomeFloorModel;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpTaskListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JDImageUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.JsonParser;
import com.jingdong.common.utils.MyCountdownTimer;
import com.jingdong.common.utils.NewJLogUtil;
import java.util.ArrayList;
import java.util.List;

public class HomePanicByView
  extends LinearLayout
{
  private static final String TAG = "HomePanicByView";
  private final int MAX_SIZE = 3;
  private MyActivity context;
  private int dividerHeight = DPIUtil.dip2px(1.0F);
  private HttpGroup group;
  private int headerHeight = 88 * DPIUtil.getHeight() / 1280;
  private int imageWh = 130 * DPIUtil.getHeight() / 1280;
  private boolean isTestA = true;
  private HomeFloorModel model;
  private int padding = 18 * DPIUtil.getHeight() / 1280;
  private int textSize = 24 * DPIUtil.getWidth() / 720;
  private int timeHeight = 35 * DPIUtil.getHeight() / 1280;
  private long timeMillis;
  private int timeWidth = 45 * DPIUtil.getHeight() / 1280;
  
  public HomePanicByView(Context paramContext)
  {
    super(paramContext);
  }
  
  public HomePanicByView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private View getBottomDividerView()
  {
    View localView = new View(getContext());
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, this.dividerHeight);
    localView.setBackgroundColor(getResources().getColor(2131296284));
    localView.setLayoutParams(localLayoutParams);
    return localView;
  }
  
  private View getContentView(List<Product> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      LinearLayout localLinearLayout = new LinearLayout(this.context);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.weight = 1.0F;
      localLayoutParams.topMargin = (-DPIUtil.dip2px(5.0F));
      localLinearLayout.setOrientation(0);
      int i = getStartIndex();
      if ((i >= 3) || (i >= paramList.size())) {
        return localLinearLayout;
      }
      Product localProduct = (Product)paramList.get(i);
      if (i == 2) {}
      for (boolean bool = true;; bool = false)
      {
        localLinearLayout.addView(getProductItemView(localProduct, bool), localLayoutParams);
        i++;
        break;
      }
    }
    return null;
  }
  
  private View getHeaderView()
  {
    View localView = ImageUtil.inflate(2130903066, null);
    if (this.isTestA)
    {
      localView.findViewById(2131493057).setVisibility(0);
      localView.findViewById(2131493058).setVisibility(0);
    }
    for (;;)
    {
      localView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (!CommonUtil.getInstance().isCanClick()) {
            return;
          }
          HomePanicByView.this.gotoPanicBuyList();
        }
      });
      localView.setLayoutParams(new LinearLayout.LayoutParams(-1, this.headerHeight));
      return localView;
      localView.findViewById(2131493057).setVisibility(8);
      localView.findViewById(2131493058).setVisibility(8);
    }
  }
  
  private View getProductItemView(final Product paramProduct, boolean paramBoolean)
  {
    View localView = ImageUtil.inflate(2130903063, null);
    LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131493052);
    ImageView localImageView1 = (ImageView)localView.findViewById(2131493053);
    localImageView1.getLayoutParams().width = this.imageWh;
    localImageView1.getLayoutParams().height = this.imageWh;
    TextView localTextView = (TextView)localView.findViewById(2131493054);
    setDrawable(localImageView1, paramProduct.getImageUrl());
    localTextView.setText("￥" + paramProduct.getMiaoShaPrice());
    ImageView localImageView2 = new ImageView(this.context);
    final DateDrawable localDateDrawable = new DateDrawable();
    localDateDrawable.setPointColor(this.context.getResources().getColor(2131296368));
    localDateDrawable.setBackgroundColor(this.context.getResources().getColor(2131296368));
    localDateDrawable.setBackgroundWidth(this.timeWidth);
    localDateDrawable.setBackgroundHeight(this.timeHeight);
    localDateDrawable.setTextColor(-1);
    localDateDrawable.setTextSize(this.textSize);
    localDateDrawable.setHour("00");
    localDateDrawable.setMinute("00");
    localDateDrawable.setSecond("00");
    localImageView2.setImageDrawable(localDateDrawable);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 40 * DPIUtil.getHeight() / 1280);
    localLinearLayout.setPadding(0, 34 * DPIUtil.getHeight() / 1280, 0, 13 * DPIUtil.getHeight() / 1280);
    localLinearLayout.addView(localImageView2, localLayoutParams);
    for (;;)
    {
      try
      {
        localJDMiaoShaUtil = new JDMiaoShaUtil();
        long l1 = System.currentTimeMillis() - this.timeMillis;
        l2 = paramProduct.getStartTime().longValue() - l1;
        l3 = paramProduct.getEndTime().longValue() - l1;
        if ((l2 > 0L) || (l3 > 0L)) {
          continue;
        }
        localDateDrawable.setHour("00");
        localDateDrawable.setMinute("00");
        localDateDrawable.setSecond("00");
        localDateDrawable.invalidateSelf();
      }
      catch (Exception localException)
      {
        JDMiaoShaUtil localJDMiaoShaUtil;
        long l2;
        long l3;
        localException.printStackTrace();
        continue;
      }
      localView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (!CommonUtil.getInstance().isCanClick()) {
            return;
          }
          if (HomePanicByView.this.isTestA)
          {
            if (NewJLogUtil.isUseNewJLog()) {
              NewJLogUtil.onJMAEvent(HomePanicByView.this.context, "Click_MiaoShaDetail", paramProduct.getId());
            }
            StartActivityUtils.startProductDetailActivity(HomePanicByView.this.context, Long.valueOf(paramProduct.getId().longValue()), paramProduct.getName(), new SourceEntity("indexMiaoShaArea", ""));
            return;
          }
          HomePanicByView.this.gotoPanicBuyList();
        }
      });
      if (paramBoolean) {
        localView.findViewById(2131493055).setVisibility(4);
      }
      return localView;
      localJDMiaoShaUtil.setCountdown(l2, l3, new JDMiaoShaUtil.CountDownListener()
      {
        public void changed(MyCountdownTimer paramAnonymousMyCountdownTimer, long paramAnonymousLong, long[] paramAnonymousArrayOfLong, int paramAnonymousInt)
        {
          if (paramAnonymousArrayOfLong == null) {
            return;
          }
          try
          {
            String str1 = paramAnonymousArrayOfLong[0];
            String str2 = paramAnonymousArrayOfLong[1];
            String str3 = paramAnonymousArrayOfLong[2];
            DateDrawable localDateDrawable1 = localDateDrawable;
            if (str1.length() <= 1) {
              str1 = "0" + str1;
            }
            localDateDrawable1.setHour(str1);
            DateDrawable localDateDrawable2 = localDateDrawable;
            if (str2.length() <= 1) {
              str2 = "0" + str2;
            }
            localDateDrawable2.setMinute(str2);
            DateDrawable localDateDrawable3 = localDateDrawable;
            if (str3.length() <= 1) {
              str3 = "0" + str3;
            }
            localDateDrawable3.setSecond(str3);
            localDateDrawable.invalidateSelf();
            return;
          }
          catch (Exception localException) {}
        }
        
        public boolean finish(MyCountdownTimer paramAnonymousMyCountdownTimer, long paramAnonymousLong, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          }
          for (;;)
          {
            return false;
            paramAnonymousMyCountdownTimer.reset(paramAnonymousLong, 1000L, 2);
            continue;
            HomePanicByView.this.onRefresh();
          }
        }
      });
    }
  }
  
  private void gotoPanicBuyList()
  {
    if (NewJLogUtil.isUseNewJLog()) {
      NewJLogUtil.onJMAEvent(this.context, "Click_MiaoShaList", "");
    }
    Intent localIntent = new Intent(this.context, LimitBuyListActivity.class);
    localIntent.putExtra("source", new SourceEntity("indexMiaoShaArea", ""));
    localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    localIntent.putExtra("com.360buy:clearHistoryFlag", true);
    this.context.startActivityInFrame(localIntent);
  }
  
  private void initData()
  {
    getPanicBuyingList(new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        HomePanicByView.this.timeMillis = System.currentTimeMillis();
        try
        {
          JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("indexMiaoSha");
          String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("scheme");
          if (!TextUtils.isEmpty(str)) {
            HomePanicByView.this.isTestA = str.equals("A");
          }
          final ArrayList localArrayList = Product.toList(localJSONArrayPoxy, 17);
          if (localArrayList == null) {
            return;
          }
          HomePanicByView.this.context.post(new Runnable()
          {
            public void run()
            {
              HomePanicByView.this.removeAllViews();
              View localView = HomePanicByView.this.getContentView(localArrayList);
              if (localView != null)
              {
                HomePanicByView.this.addView(HomePanicByView.this.getHeaderView());
                HomePanicByView.this.addView(localView);
                HomePanicByView.this.addView(HomePanicByView.this.getBottomDividerView());
                HomePanicByView.this.setVisibility(0);
              }
            }
          });
          return;
        }
        catch (Exception localException) {}
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
  }
  
  private void setDrawable(ImageView paramImageView, String paramString)
  {
    JDImageUtils.setViewImageWithPriority(this.context, paramImageView, paramString, 100);
  }
  
  public void getPanicBuyingList(HttpGroup.HttpTaskListener paramHttpTaskListener)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(this.model.getFunctionId());
    localHttpSetting.setJsonParams(JsonParser.parseParamsJsonFromString(this.model.getParams()));
    localHttpSetting.setEffect(0);
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setListener(paramHttpTaskListener);
    this.group.add(localHttpSetting);
  }
  
  public int getStartIndex()
  {
    return 0;
  }
  
  public void init(MyActivity paramMyActivity, HomeFloorModel paramHomeFloorModel, HttpGroup paramHttpGroup)
  {
    this.model = paramHomeFloorModel;
    this.group = paramHttpGroup;
    if (this.context == null) {
      setVisibility(8);
    }
    setPadding(-1, 0, -1, this.padding);
    setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.context = paramMyActivity;
    setOrientation(1);
    initData();
  }
  
  public void onRefresh()
  {
    initData();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.HomePanicByView
 * JD-Core Version:    0.7.0.1
 */