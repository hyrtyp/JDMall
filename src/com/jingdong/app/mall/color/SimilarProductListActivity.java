package com.jingdong.app.mall.color;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.JDColorProductModel;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import com.jingdong.common.utils.adapter.UIRunnable;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import java.util.ArrayList;
import java.util.List;

public class SimilarProductListActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener
{
  private static final String TAG = SimilarProductListActivity.class.getSimpleName();
  private Button errorLoadingBut;
  private View errorView;
  private String host = Configuration.getProperty("paiHost");
  private LinearLayout loadingLayout;
  private ProgressBar loadingViewPb = null;
  private MySimpleAdapter productAdapter;
  private SourceEntity sourceEntity;
  private String titleName;
  private TextView titleText;
  private ListView wareInfoList;
  
  private void getSimilarProduct(JDColorProductModel paramJDColorProductModel)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("colorGuessLike");
    String str = "3:" + paramJDColorProductModel.getCateId();
    localHttpSetting.putJsonParam("wareId", paramJDColorProductModel.getId());
    localHttpSetting.putJsonParam("cateId", str);
    localHttpSetting.putJsonParam("colorKey", paramJDColorProductModel.getColorValue());
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setEffect(0);
    localHttpSetting.setHost(this.host);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        SimilarProductListActivity.this.post(new Runnable()
        {
          public void run()
          {
            SimilarProductListActivity.this.loadingViewPb.setVisibility(8);
          }
        });
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null)
        {
          Object localObject1 = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("wareInfos"), 0);
          if ((localObject1 == null) || (((ArrayList)localObject1).size() == 0))
          {
            SimilarProductListActivity.this.showError();
            return;
          }
          Object localObject2 = localObject1;
          try
          {
            localObject2.add(0, SimilarProductListActivity.this.getResources().getString(2131166424));
            if (localObject2.size() > 2)
            {
              localObject2.add(2, SimilarProductListActivity.this.getResources().getString(2131166423));
              localObject1 = localObject2;
            }
            SimilarProductListActivity.this.getSimilarProductList((ArrayList)localObject1);
            return;
          }
          catch (Exception localException)
          {
            return;
          }
        }
        SimilarProductListActivity.this.showError();
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        SimilarProductListActivity.this.showError();
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void getSimilarProductList(ArrayList<?> paramArrayList)
  {
    this.productAdapter = new MySimpleAdapter(this, paramArrayList, 2130903100, new String[] { "imageurl", "name", "adWord" }, new int[] { 2131493041, 2131493046, 2131493236 })
    {
      private static final int CONTENT_VIEW = 1;
      private static final int TITLE_VIEW;
      
      public int getItemViewType(int paramAnonymousInt)
      {
        if ((getItem(paramAnonymousInt) instanceof String)) {
          return 0;
        }
        return 1;
      }
      
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        TextView localTextView5;
        Object localObject;
        if (getItemViewType(paramAnonymousInt) == 0) {
          if (paramAnonymousView == null)
          {
            SimilarProductListActivity localSimilarProductListActivity3 = SimilarProductListActivity.this;
            localTextView5 = new TextView(localSimilarProductListActivity3);
            String str4 = getItem(paramAnonymousInt).toString();
            localTextView5.setText(str4);
            localTextView5.setTextSize(16.0F);
            int i = SimilarProductListActivity.this.getResources().getColor(2131296352);
            localTextView5.setTextColor(i);
            localTextView5.setGravity(16);
            int j = DPIUtil.dip2px(10.0F);
            int k = DPIUtil.dip2px(0.0F);
            int m = DPIUtil.dip2px(10.0F);
            int n = DPIUtil.dip2px(0.0F);
            localTextView5.setPadding(j, k, m, n);
            localTextView5.setBackgroundResource(2130838118);
            localObject = localTextView5;
          }
        }
        for (;;)
        {
          return localObject;
          localTextView5 = (TextView)paramAnonymousView;
          break;
          localObject = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
          if (paramAnonymousInt % 2 == 1) {
            ((View)localObject).setBackgroundResource(2130838108);
          }
          Product localProduct;
          for (;;)
          {
            localProduct = (Product)getItem(paramAnonymousInt);
            if (localProduct != null) {
              break;
            }
            return localObject;
            ((View)localObject).setBackgroundResource(2130838110);
          }
          ProductShow localProductShow = new ProductShow(SimilarProductListActivity.this, localProduct);
          TextView localTextView1 = (TextView)((View)localObject).findViewById(2131493237);
          TextView localTextView2 = (TextView)((View)localObject).findViewById(2131493048);
          String str1;
          label248:
          TextView localTextView3;
          TextView localTextView4;
          ImageView localImageView1;
          ImageView localImageView2;
          Integer localInteger;
          String str2;
          if (TextUtils.isEmpty(localProduct.getJdPrice()))
          {
            str1 = "";
            localTextView1.setText(str1);
            localTextView2.setText(localProductShow.getMarketPrice());
            localTextView3 = (TextView)((View)localObject).findViewById(2131493240);
            localTextView4 = (TextView)((View)localObject).findViewById(2131493241);
            localImageView1 = (ImageView)((View)localObject).findViewById(2131493239);
            localImageView2 = (ImageView)((View)localObject).findViewById(2131493238);
            localInteger = localProduct.getTotalCount();
            str2 = localProduct.getGood();
            if ((localInteger != null) && (!TextUtils.isEmpty(str2))) {
              break label440;
            }
            localTextView4.setVisibility(8);
            localTextView3.setVisibility(8);
          }
          for (;;)
          {
            if (localProduct.getIsPromotionJiang().booleanValue())
            {
              localImageView2.setVisibility(0);
              if (localProduct.getIsPromotionZeng().booleanValue())
              {
                localImageView2.setImageResource(2130837615);
                localImageView1.setVisibility(0);
                localImageView1.setImageResource(2130837610);
                break;
                SimilarProductListActivity localSimilarProductListActivity1 = SimilarProductListActivity.this;
                Object[] arrayOfObject1 = new Object[1];
                arrayOfObject1[0] = localProduct.getJdPrice();
                str1 = localSimilarProductListActivity1.getString(2131165822, arrayOfObject1);
                break label248;
                label440:
                String str3 = SimilarProductListActivity.this.getString(2131166486);
                SpannableString localSpannableString1 = new SpannableString(str3 + str2);
                localSpannableString1.setSpan(new StyleSpan(1), str3.length(), localSpannableString1.length(), 33);
                SimilarProductListActivity localSimilarProductListActivity2 = SimilarProductListActivity.this;
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = String.valueOf(localInteger);
                SpannableString localSpannableString2 = new SpannableString(localSimilarProductListActivity2.getString(2131166410, arrayOfObject2));
                localSpannableString2.setSpan(new StyleSpan(1), 0, localSpannableString2.length(), 33);
                localTextView4.setText(localSpannableString2);
                localTextView4.setVisibility(0);
                localTextView3.setVisibility(0);
                localTextView3.setText(localSpannableString1);
                continue;
              }
              localImageView2.setImageResource(2130837610);
              localImageView1.setVisibility(8);
              break;
            }
          }
          localImageView1.setVisibility(8);
          if (localProduct.getIsPromotionZeng().booleanValue())
          {
            localImageView2.setVisibility(0);
            localImageView2.setImageResource(2130837615);
          }
          else
          {
            localImageView2.setVisibility(8);
          }
        }
      }
      
      public int getViewTypeCount()
      {
        return 2;
      }
    };
    this.productAdapter.setViewBinder(new SimpleSubViewBinder(new ProductImageProcessor(null)));
    post(new Runnable()
    {
      public void run()
      {
        SimilarProductListActivity.this.wareInfoList.setAdapter(SimilarProductListActivity.this.productAdapter);
      }
    });
  }
  
  private void initComponent()
  {
    this.titleText = ((TextView)findViewById(2131492990));
    this.wareInfoList = ((ListView)findViewById(2131494676));
    this.errorView = findViewById(2131493224);
    this.errorLoadingBut = ((Button)this.errorView.findViewById(2131493613));
    this.loadingViewPb = ((ProgressBar)findViewById(2131494331));
    this.titleName = getString(2131166422);
    this.titleText.setText(this.titleName);
    this.wareInfoList.setOnItemClickListener(this);
  }
  
  private void initData()
  {
    JDColorProductModel localJDColorProductModel = (JDColorProductModel)getIntent().getExtras().getSerializable("productModel");
    if (localJDColorProductModel == null) {
      return;
    }
    getSimilarProduct(localJDColorProductModel);
  }
  
  private void reLoad()
  {
    post(new Runnable()
    {
      public void run()
      {
        SimilarProductListActivity.this.loadingViewPb.setVisibility(8);
        SimilarProductListActivity.this.initData();
      }
    });
  }
  
  private void showError()
  {
    post(new Runnable()
    {
      public void run()
      {
        SimilarProductListActivity.this.errorView.setVisibility(0);
        SimilarProductListActivity.this.errorLoadingBut.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            SimilarProductListActivity.this.loadingViewPb.setVisibility(0);
            SimilarProductListActivity.this.errorView.setVisibility(8);
            SimilarProductListActivity.this.reLoad();
          }
        });
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903328);
    initComponent();
    initData();
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = paramAdapterView.getAdapter().getItem(paramInt);
    if ((localObject instanceof Product))
    {
      Product localProduct = (Product)localObject;
      if (localProduct != null) {
        StartActivityUtils.startProductDetailActivity(this, localProduct.getId(), localProduct.getName(), this.sourceEntity);
      }
    }
  }
  
  private static class ProductImageProcessor
    extends SimpleImageProcessor
  {
    protected UIRunnable provideUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
    {
      return new MyUIRunnable(paramSubViewHolder, paramImageState);
    }
    
    private static class MyUIRunnable
      extends UIRunnable
    {
      public MyUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
      {
        super(paramImageState);
      }
      
      protected View getItemView()
      {
        SimpleBeanAdapter.SubViewHolder localSubViewHolder = getSubViewHolder();
        Object localObject = localSubViewHolder.getAdapter().getItem(localSubViewHolder.getPosition());
        if ((localObject != null) && (localSubViewHolder.getSubData().equals(((Product)localObject).getImageUrl()))) {
          return super.getItemView();
        }
        return null;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.color.SimilarProductListActivity
 * JD-Core Version:    0.7.0.1
 */