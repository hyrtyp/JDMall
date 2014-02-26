package com.jingdong.app.mall.home.slide;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.app.mall.promotion.PromotionProductListActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.HomeFloorElement;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.PromotionMessage;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.JsonParser;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import com.jingdong.common.utils.adapter.UIRunnable;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class SlideScreen
{
  public static final String COME_FROM = "salse";
  private static final String TAG = SlideScreen.class.getName();
  AdapterView.OnItemClickListener activityOnItemClickListener = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      if (!CommonUtil.getInstance().isCanClick()) {}
      PromotionMessage localPromotionMessage;
      do
      {
        return;
        paramAnonymousView.setPressed(false);
        localPromotionMessage = (PromotionMessage)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
      } while (localPromotionMessage == null);
      Intent localIntent = new Intent(SlideScreen.this.mMyActivity, PromotionProductListActivity.class);
      Bundle localBundle = new Bundle();
      localBundle.putString("content", localPromotionMessage.getContent());
      localBundle.putString("activityId", localPromotionMessage.getActivityId());
      localBundle.putString("catelogyId", localPromotionMessage.getCategoryId());
      localBundle.putString("title", localPromotionMessage.getTitle());
      localBundle.putString("comeFrom", "salse");
      localIntent.putExtras(localBundle);
      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
      SlideScreen.this.mMyActivity.startActivityInFrame(localIntent);
    }
  };
  private ListView activityProductList;
  private MySimpleAdapter adapter;
  private HomeFloorElement element;
  private RelativeLayout listHeadContainer;
  private LinearLayout loadingLayout;
  private NextPageLoader mActivityListNextPageLoader;
  private NextPageLoader mHotProductNextLoader;
  private MyActivity mMyActivity;
  private SalesPromotion mSalesPromotion;
  private View mView;
  
  public SlideScreen(MyActivity paramMyActivity)
  {
    this.mMyActivity = paramMyActivity;
    this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
  }
  
  private void getCmsActivityListByType(String paramString1, String paramString2)
  {
    JSONObjectProxy localJSONObjectProxy = JsonParser.parseParamsJsonFromString(paramString2);
    this.mActivityListNextPageLoader = new ActivityListNextPageLoader(this.mMyActivity, this.activityProductList, this.loadingLayout, paramString1, localJSONObjectProxy, this.mMyActivity.getString(2131165802), 3600000L);
    this.mActivityListNextPageLoader.setEffect(false);
    this.mActivityListNextPageLoader.setHttpNotifyUser(false);
    this.mActivityListNextPageLoader.showPageOne(true);
  }
  
  private void getData(HomeFloorElement paramHomeFloorElement)
  {
    String str1;
    String str2;
    String str3;
    String str4;
    if (paramHomeFloorElement != null)
    {
      this.activityProductList.setVisibility(0);
      str1 = paramHomeFloorElement.getFunctionId();
      str2 = paramHomeFloorElement.getParam();
      str3 = paramHomeFloorElement.getFunctionId2();
      str4 = paramHomeFloorElement.getParam2();
      if (!paramHomeFloorElement.isGoTOActvity()) {
        break label82;
      }
      if (this.listHeadContainer.getVisibility() != 0) {
        this.listHeadContainer.setVisibility(0);
      }
      getHotSaleList(str1, str2);
      setHotSalesTitle(paramHomeFloorElement.getFunctionName());
    }
    for (;;)
    {
      getCmsActivityListByType(str3, str4);
      return;
      label82:
      if (paramHomeFloorElement.isGoTOActvityNoHot())
      {
        str3 = str1;
        str4 = str2;
        if (this.listHeadContainer.getVisibility() != 8) {
          this.listHeadContainer.setVisibility(8);
        }
      }
    }
  }
  
  private void getHotSaleList(String paramString1, String paramString2)
  {
    loadHdTitleView(paramString1, paramString2);
  }
  
  private void loadHdTitleView(String paramString1, String paramString2)
  {
    final JDShoppingGallery localJDShoppingGallery = (JDShoppingGallery)this.listHeadContainer.findViewById(2131494419);
    localJDShoppingGallery.setCallbackDuringFling(false);
    TextView localTextView1 = (TextView)this.listHeadContainer.findViewById(2131494420);
    localJDShoppingGallery.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (!CommonUtil.getInstance().isCanClick()) {
          return;
        }
        Product localProduct = (Product)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        MyActivity localMyActivity = SlideScreen.this.mMyActivity;
        Long localLong = localProduct.getId();
        if (SlideScreen.this.element != null) {}
        for (String str = SlideScreen.this.element.getTitle();; str = "")
        {
          StartActivityUtils.startProductDetailActivity(localMyActivity, localLong, null, new SourceEntity("recommend_sales_product", str));
          return;
        }
      }
    });
    TextView localTextView2 = new TextView(this.mMyActivity);
    JSONObjectProxy localJSONObjectProxy = JsonParser.parseParamsJsonFromString(paramString2);
    this.mHotProductNextLoader = new NextPageLoader(this.mMyActivity, localJDShoppingGallery, localTextView2, paramString1, localJSONObjectProxy, null, 3600000L)
    {
      protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        MySimpleAdapter localMySimpleAdapter = new MySimpleAdapter(paramAnonymousIMyActivity, paramAnonymousArrayList, 2130903273, new String[] { "imageurl", "jdPrice" }, new int[] { 2131493226, 2131493227 }, false);
        localMySimpleAdapter.setViewBinder(new SimpleSubViewBinder(new SlideScreen.ProductImageProcessor(null)));
        return localMySimpleAdapter;
      }
      
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        super.onEnd(paramAnonymousHttpResponse);
        if ((localJDShoppingGallery.getVisibility() == 0) || (this.val$gallery.getVisibility() == 8)) {
          SlideScreen.this.mMyActivity.post(new Runnable()
          {
            public void run()
            {
              this.val$tips.setVisibility(8);
              this.val$gallery.setVisibility(0);
              if (SlideScreen.5.this.showItemList != null) {
                this.val$gallery.setSelection(SlideScreen.5.this.showItemList.size() / 2);
              }
            }
          });
        }
      }
      
      public void setSelection(int paramAnonymousInt) {}
      
      protected void showError() {}
      
      protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        ArrayList localArrayList = new ArrayList();
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null)
        {
          JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("hotSaleList");
          if ((localJSONArrayPoxy == null) || (localJSONArrayPoxy.length() == 0))
          {
            showError();
            return localArrayList;
          }
          return Product.toList(localJSONArrayPoxy, 21);
        }
        showError();
        return localArrayList;
      }
    };
    this.mHotProductNextLoader.setPageSize(10);
    this.mHotProductNextLoader.setEffect(false);
    this.mHotProductNextLoader.setHttpNotifyUser(false);
    this.mHotProductNextLoader.showPageOne();
  }
  
  private void reLoad()
  {
    this.mMyActivity.post(new Runnable()
    {
      public void run()
      {
        if (SlideScreen.this.mActivityListNextPageLoader != null)
        {
          SlideScreen.this.mSalesPromotion.getProgressBar().setVisibility(8);
          SlideScreen.this.mSalesPromotion.getView().setVisibility(0);
          SlideScreen.this.mSalesPromotion.getLoadingButton().setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              if (SlideScreen.this.element != null)
              {
                SlideScreen.this.mSalesPromotion.getProgressBar().setVisibility(0);
                SlideScreen.this.mSalesPromotion.getView().setVisibility(8);
                SlideScreen.this.getData(SlideScreen.this.element);
              }
            }
          });
        }
      }
    });
  }
  
  private void setHotSalesTitle(final String paramString)
  {
    this.mMyActivity.post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(paramString)) {
          ((TextView)SlideScreen.this.listHeadContainer.findViewById(2131494417)).setText(paramString);
        }
      }
    });
  }
  
  private void showHeadView()
  {
    if ((this.element != null) && (this.element.isGoTOActvityNoHot())) {}
    while (this.listHeadContainer.getParent() != null) {
      return;
    }
    this.adapter.addHeaderView(this.activityProductList, this.listHeadContainer);
  }
  
  private void showProgressBar(final int paramInt)
  {
    this.mMyActivity.post(new Runnable()
    {
      public void run()
      {
        SlideScreen.this.mSalesPromotion.getProgressBar().setVisibility(paramInt);
      }
    });
  }
  
  public void onResume()
  {
    if (this.mMyActivity == null) {
      return;
    }
    this.mMyActivity.post(new Runnable()
    {
      public void run()
      {
        if (SlideScreen.this.adapter != null) {
          SlideScreen.this.adapter.notifyDataSetChanged();
        }
      }
    });
  }
  
  public void setDrawable(final ImageView paramImageView, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setType(5000);
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final BitmapDrawable localBitmapDrawable = new BitmapDrawable(ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0));
        SlideScreen.this.mMyActivity.post(new Runnable()
        {
          public void run()
          {
            if (localBitmapDrawable != null) {
              this.val$imagerView.setBackgroundDrawable(localBitmapDrawable);
            }
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    this.mMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public void setViewTitle(final String paramString1, String paramString2)
  {
    final TextView localTextView = (TextView)this.mView.findViewById(2131492990);
    setDrawable((ImageView)this.mView.findViewById(2131494358), paramString2);
    this.mMyActivity.post(new Runnable()
    {
      public void run()
      {
        if ((localTextView != null) && (!TextUtils.isEmpty(paramString1))) {
          localTextView.setText(paramString1);
        }
      }
    });
  }
  
  public void showScreen(HomeFloorElement paramHomeFloorElement, SalesPromotion paramSalesPromotion)
  {
    if (paramHomeFloorElement == null) {
      return;
    }
    this.element = paramHomeFloorElement;
    this.mSalesPromotion = paramSalesPromotion;
    this.mView = this.mSalesPromotion.getCustomView();
    this.activityProductList = ((ListView)this.mView.findViewById(2131494415));
    this.listHeadContainer = ((RelativeLayout)ImageUtil.inflate(2130903284, null));
    setViewTitle(paramHomeFloorElement.getTitle(), paramHomeFloorElement.getBannerImgUrl());
    getData(paramHomeFloorElement);
  }
  
  public class ActivityListNextPageLoader
    extends NextPageLoader
  {
    public ActivityListNextPageLoader(MyActivity paramMyActivity, AbsListView paramAbsListView, View paramView, String paramString1, JSONObject paramJSONObject, String paramString2, long paramLong)
    {
      super(paramAbsListView, paramView, paramString1, paramJSONObject, paramString2, paramLong);
      setPageSize(10);
    }
    
    protected MySimpleAdapter createAdapter(IMyActivity paramIMyActivity, AdapterView paramAdapterView, ArrayList<?> paramArrayList)
    {
      SlideScreen.this.adapter = new MySimpleAdapter(paramIMyActivity, paramArrayList, 2130903267, new String[] { "imageUrl" }, new int[] { 2131494343 }, false)
      {
        public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
        {
          View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
          TextView localTextView = (TextView)localView.findViewById(2131494344);
          PromotionMessage localPromotionMessage = (PromotionMessage)getItem(paramAnonymousInt);
          if (localPromotionMessage != null) {
            localTextView.setText(SlideScreen.this.mMyActivity.getResources().getString(2131166372) + localPromotionMessage.getEndDate());
          }
          return localView;
        }
      };
      SlideScreen.this.adapter.setViewBinder(new SimpleSubViewBinder(new SlideScreen.PromotionImageProcessor(null)));
      SlideScreen.this.mMyActivity.post(new Runnable()
      {
        public void run()
        {
          SlideScreen.this.mSalesPromotion.getView().setVisibility(8);
          SlideScreen.this.activityProductList.setAdapter(SlideScreen.this.adapter.getHeaderViewListAdapter());
          SlideScreen.this.showHeadView();
          SlideScreen.this.activityProductList.setOnItemClickListener(SlideScreen.this.activityOnItemClickListener);
        }
      });
      return SlideScreen.this.adapter;
    }
    
    public void setSelection(int paramInt) {}
    
    protected void showError()
    {
      if ((this.showItemList != null) && (this.showItemList.size() <= 0)) {
        SlideScreen.this.reLoad();
      }
    }
    
    protected ArrayList<?> toList(HttpGroup.HttpResponse paramHttpResponse)
    {
      JSONObjectProxy localJSONObjectProxy = paramHttpResponse.getJSONObject();
      ArrayList localArrayList = null;
      String str = "activityList";
      try
      {
        HomeFloorElement localHomeFloorElement = SlideScreen.this.element;
        localArrayList = null;
        if ((localHomeFloorElement != null) && (SlideScreen.this.element.isGoTOActvityNoHot())) {
          str = "cmsActivityList";
        }
        localArrayList = PromotionMessage.toList(localJSONObjectProxy.getJSONArrayOrNull(str), 0);
        SlideScreen.this.mMyActivity.post(new Runnable()
        {
          public void run()
          {
            SlideScreen.this.showProgressBar(8);
          }
        });
        return localArrayList;
      }
      catch (Exception localException) {}
      return localArrayList;
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
  
  private static class PromotionImageProcessor
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
        if ((localObject != null) && (localSubViewHolder.getSubData().equals(((PromotionMessage)localObject).getImageUrl()))) {
          return super.getItemView();
        }
        return null;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.slide.SlideScreen
 * JD-Core Version:    0.7.0.1
 */