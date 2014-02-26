package com.jingdong.app.mall.home;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.ui.HandlerRecycleBitmapDrawable;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JDImageUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import com.jingdong.common.utils.adapter.UIRunnable;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class FloorProductListActivity
  extends MyActivity
{
  private static final String TAG = "PromotionProductListActivity";
  private String activityId;
  private String comeFrom;
  private int curSelection;
  private View floorBannerRoot;
  private String functionId;
  private final int halfWidth = 500 * DPIUtil.getWidth() / 1000;
  private boolean isInitializedBanner;
  private String landPageId;
  private LinearLayout loadingView;
  private String mActivityIntro;
  private String mBannerUrl;
  private String mBgColor;
  private Button mButtonShare;
  private ImageView mImageViewFloorBannerDefalut;
  private ImageView mImageViewFloorBannerServer;
  private RelativeLayout mLayoutFloorBanner;
  private ListView mListView;
  private String mShare;
  private String mShareTitle;
  private TextView mTextViewFloorBannerIntro;
  private TextView noDateTextView;
  private JSONObject params;
  private final int switcherHeight = 376 * DPIUtil.getWidth() / 1000;
  private String tmpJsonString;
  
  private void findViews()
  {
    this.mListView = ((ListView)findViewById(2131493444));
    this.mListView.setSelector(17170445);
    this.floorBannerRoot = ImageUtil.inflate(2130903133, null);
    this.mLayoutFloorBanner = ((RelativeLayout)this.floorBannerRoot.findViewById(2131493438));
    ViewGroup.LayoutParams localLayoutParams = this.mLayoutFloorBanner.getLayoutParams();
    localLayoutParams.height = this.switcherHeight;
    this.mLayoutFloorBanner.setLayoutParams(localLayoutParams);
    this.mTextViewFloorBannerIntro = ((TextView)this.mLayoutFloorBanner.findViewById(2131493441));
    this.mImageViewFloorBannerServer = ((ImageView)this.mLayoutFloorBanner.findViewById(2131493439));
    this.mImageViewFloorBannerDefalut = ((ImageView)this.mLayoutFloorBanner.findViewById(2131493440));
    this.noDateTextView = ((TextView)findViewById(2131493446));
    this.mButtonShare = ((Button)findViewById(2131493445));
    this.loadingView = ((LinearLayout)ImageUtil.inflate(2130903175, null));
    this.loadingView.setGravity(17);
  }
  
  private void handleBanner()
  {
    if (this.isInitializedBanner) {
      return;
    }
    post(new Runnable()
    {
      public void run()
      {
        FloorProductListActivity.this.isInitializedBanner = true;
        if (!TextUtils.isEmpty(FloorProductListActivity.this.mActivityIntro)) {
          FloorProductListActivity.this.mTextViewFloorBannerIntro.setText(FloorProductListActivity.this.mActivityIntro);
        }
        if (!TextUtils.isEmpty(FloorProductListActivity.this.mBannerUrl))
        {
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setType(5000);
          localHttpSetting.setUrl(FloorProductListActivity.this.mBannerUrl);
          localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
            {
              final Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymous2HttpResponse), 0, 0);
              if (localBitmap != null) {
                FloorProductListActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    FloorProductListActivity.this.mImageViewFloorBannerDefalut.setVisibility(8);
                    HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable = new HandlerRecycleBitmapDrawable(localBitmap, FloorProductListActivity.this);
                    localHandlerRecycleBitmapDrawable.setNeedPadding(false);
                    FloorProductListActivity.this.mImageViewFloorBannerServer.setImageDrawable(localHandlerRecycleBitmapDrawable);
                    FloorProductListActivity.this.mImageViewFloorBannerServer.invalidate();
                    FloorProductListActivity.this.mButtonShare.setVisibility(0);
                    if (!TextUtils.isEmpty(FloorProductListActivity.this.mBgColor)) {}
                    try
                    {
                      FloorProductListActivity.this.mListView.setBackgroundColor(Color.parseColor(FloorProductListActivity.this.mBgColor));
                      FloorProductListActivity.this.mLayoutFloorBanner.setBackgroundColor(Color.parseColor(FloorProductListActivity.this.mBgColor));
                      return;
                    }
                    catch (Exception localException) {}
                  }
                });
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymous2HttpError) {}
            
            public void onProgress(int paramAnonymous2Int1, int paramAnonymous2Int2) {}
            
            public void onStart() {}
          });
          FloorProductListActivity.this.getHttpGroupaAsynPool().add(localHttpSetting);
        }
      }
    });
  }
  
  private void handleListView(String paramString, JSONObject paramJSONObject)
  {
    NextPageLoader local3 = new NextPageLoader(this, this.mListView, this.loadingView, paramString, paramJSONObject)
    {
      protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        final MySimpleAdapter local3 = new MySimpleAdapter(FloorProductListActivity.this, paramAnonymousArrayList, 2130903138, new String[0], new int[0])
        {
          private FloorProductListActivity.3.1ViewHolder getItemView(LinearLayout paramAnonymous2LinearLayout)
          {
            ViewGroup.LayoutParams localLayoutParams = paramAnonymous2LinearLayout.getLayoutParams();
            localLayoutParams.width = FloorProductListActivity.this.halfWidth;
            paramAnonymous2LinearLayout.setLayoutParams(localLayoutParams);
            paramAnonymous2LinearLayout.removeAllViews();
            View localView = ImageUtil.inflate(2130903137, null);
            paramAnonymous2LinearLayout.addView(localView);
            FloorProductListActivity.3.1ViewHolder local1ViewHolder = new FloorProductListActivity.3.1ViewHolder(FloorProductListActivity.3.this);
            local1ViewHolder.mItemView = localView;
            local1ViewHolder.mImageView = ((ImageView)localView.findViewById(2131493447));
            local1ViewHolder.mTextViewName = ((TextView)localView.findViewById(2131493448));
            local1ViewHolder.mTextViewPrice = ((TextView)localView.findViewById(2131493449));
            return local1ViewHolder;
          }
          
          private void showProduct(FloorProductListActivity.3.1ViewHolder paramAnonymous21ViewHolder, Product paramAnonymous2Product)
          {
            if (paramAnonymous21ViewHolder == null) {
              return;
            }
            if (paramAnonymous2Product != null)
            {
              if (paramAnonymous21ViewHolder.mItemView.getVisibility() != 0) {
                paramAnonymous21ViewHolder.mItemView.setVisibility(0);
              }
              JDImageUtils.setViewImage(FloorProductListActivity.this, paramAnonymous21ViewHolder.mImageView, paramAnonymous2Product.getImageUrl());
              paramAnonymous21ViewHolder.mTextViewName.setText(paramAnonymous2Product.getName());
              paramAnonymous21ViewHolder.mTextViewPrice.setText(paramAnonymous2Product.getJdPriceRMB());
              FloorProductListActivity.this.setOnItemClick(paramAnonymous21ViewHolder.mItemView, paramAnonymous2Product);
              return;
            }
            paramAnonymous21ViewHolder.mItemView.setVisibility(4);
          }
          
          public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
          {
            FloorProductListActivity.3.1ViewHolder[] arrayOf1ViewHolder;
            if ((paramAnonymous2View != null) && (paramAnonymous2View.getTag() != null)) {
              arrayOf1ViewHolder = (FloorProductListActivity.3.1ViewHolder[])paramAnonymous2View.getTag();
            }
            for (;;)
            {
              Product[] arrayOfProduct = (Product[])getItem(paramAnonymous2Int);
              showProduct(arrayOf1ViewHolder[0], arrayOfProduct[0]);
              showProduct(arrayOf1ViewHolder[1], arrayOfProduct[1]);
              return paramAnonymous2View;
              paramAnonymous2View = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
              arrayOf1ViewHolder = new FloorProductListActivity.3.1ViewHolder[2];
              arrayOf1ViewHolder[0] = getItemView((LinearLayout)paramAnonymous2View.findViewById(2131493450));
              arrayOf1ViewHolder[1] = getItemView((LinearLayout)paramAnonymous2View.findViewById(2131493451));
              paramAnonymous2View.setTag(arrayOf1ViewHolder);
            }
          }
        };
        local3.setViewBinder(new SimpleSubViewBinder(new FloorProductListActivity.PromotionProductListImageProcessor(null)));
        FloorProductListActivity.this.post(new Runnable()
        {
          public void run()
          {
            if (FloorProductListActivity.this.floorBannerRoot != null) {
              local3.addHeaderView(FloorProductListActivity.this.mListView, FloorProductListActivity.this.floorBannerRoot);
            }
          }
        });
        return local3;
      }
      
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        super.onEnd(paramAnonymousHttpResponse);
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null)
        {
          FloorProductListActivity.this.mActivityIntro = localJSONObjectProxy.getStringOrNull("activityIntro");
          FloorProductListActivity.this.mShare = localJSONObjectProxy.getStringOrNull("share");
          FloorProductListActivity.this.mShareTitle = localJSONObjectProxy.getStringOrNull("shareTitle");
          FloorProductListActivity.this.mBgColor = localJSONObjectProxy.getStringOrNull("bgColor");
          FloorProductListActivity.this.mBannerUrl = localJSONObjectProxy.getStringOrNull("bannerUrl");
          FloorProductListActivity.this.handleBanner();
        }
      }
      
      protected void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        super.onScroll(paramAnonymousAbsListView, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
        FloorProductListActivity.this.curSelection = paramAnonymousInt1;
      }
      
      public void setSelection(int paramAnonymousInt) {}
      
      protected void showError()
      {
        FloorProductListActivity.this.post(new Runnable()
        {
          public void run()
          {
            FloorProductListActivity.this.noDateTextView.setVisibility(0);
            FloorProductListActivity.this.mListView.setVisibility(8);
          }
        });
      }
      
      protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        ArrayList localArrayList1 = new ArrayList();
        if ((localJSONObjectProxy != null) && (!localJSONObjectProxy.isNull("cmsActivityWareList"))) {}
        ArrayList localArrayList2;
        int i;
        for (localArrayList1 = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("cmsActivityWareList"), 20);; localArrayList1 = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("wareInfoList"), 20)) {
          do
          {
            if (((localArrayList1 == null) || (localArrayList1.size() < 1)) && ((getAllProductList() == null) || (getAllProductList().size() < 1))) {
              FloorProductListActivity.this.post(new Runnable()
              {
                public void run()
                {
                  FloorProductListActivity.this.noDateTextView.setVisibility(0);
                  FloorProductListActivity.this.mListView.setVisibility(8);
                }
              });
            }
            localArrayList2 = new ArrayList();
            i = 0;
            if (i < localArrayList1.size()) {
              break;
            }
            return localArrayList2;
          } while ((localJSONObjectProxy == null) || (localJSONObjectProxy.isNull("wareInfoList")));
        }
        Product[] arrayOfProduct = new Product[2];
        arrayOfProduct[0] = ((Product)localArrayList1.get(i));
        if (i + 1 >= localArrayList1.size())
        {
          arrayOfProduct[1] = null;
          this.isPaging = false;
        }
        for (;;)
        {
          localArrayList2.add(arrayOfProduct);
          i += 2;
          break;
          arrayOfProduct[1] = ((Product)localArrayList1.get(i + 1));
        }
      }
    };
    local3.setPageSize(10);
    local3.setColSize(2);
    local3.setEffect(true);
    local3.setHttpNotifyUser(true);
    local3.showPageOne();
  }
  
  private void handleShare()
  {
    this.mButtonShare.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (!TextUtils.isEmpty(FloorProductListActivity.this.mShare))
        {
          Intent localIntent = new Intent("android.intent.action.SEND");
          localIntent.setType("text/plain");
          localIntent.putExtra("android.intent.extra.SUBJECT", FloorProductListActivity.this.mShareTitle);
          localIntent.putExtra("android.intent.extra.TEXT", FloorProductListActivity.this.mShare);
          FloorProductListActivity.this.startActivityNoException(Intent.createChooser(localIntent, FloorProductListActivity.this.getString(2131165820)));
        }
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903136);
    Bundle localBundle = getIntent().getExtras();
    this.functionId = "getCmsActivityWareList";
    this.params = new JSONObject();
    this.activityId = localBundle.getString("activityId");
    this.comeFrom = localBundle.getString("comeFrom");
    this.landPageId = localBundle.getString("landPageId");
    String str = localBundle.getString("functionId");
    if (!TextUtils.isEmpty(str)) {
      this.functionId = str;
    }
    this.tmpJsonString = localBundle.getString("paramsJsonString");
    try
    {
      if (!TextUtils.isEmpty(this.tmpJsonString)) {
        this.params = new JSONObject(this.tmpJsonString);
      }
      for (;;)
      {
        findViews();
        this.mListView.setBackgroundColor(0);
        this.mLayoutFloorBanner.setBackgroundColor(0);
        handleShare();
        handleListView(this.functionId, this.params);
        return;
        this.params.put("activityID", this.activityId);
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((this.mListView != null) && (this.curSelection > 0)) {
      this.mListView.setSelection(this.curSelection);
    }
  }
  
  public void setOnItemClick(View paramView, final Product paramProduct)
  {
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SourceEntity localSourceEntity;
        if (paramProduct != null)
        {
          if (!FloorProductListActivity.this.comeFrom.equals("home")) {
            break label56;
          }
          localSourceEntity = new SourceEntity("promotionProductListFromHome", FloorProductListActivity.this.activityId);
        }
        label56:
        boolean bool1;
        do
        {
          for (;;)
          {
            StartActivityUtils.startProductDetailActivity(FloorProductListActivity.this, paramProduct.getId(), null, localSourceEntity);
            return;
            if (FloorProductListActivity.this.comeFrom.equals("category"))
            {
              localSourceEntity = new SourceEntity("promotionProductListFromCategory", FloorProductListActivity.this.activityId);
            }
            else if (FloorProductListActivity.this.comeFrom.equals("salse"))
            {
              localSourceEntity = new SourceEntity("promotionProductListFromSlideScreen", FloorProductListActivity.this.activityId);
            }
            else
            {
              if (!"m_destination".equals(FloorProductListActivity.this.comeFrom)) {
                break;
              }
              localSourceEntity = new SourceEntity("m_destination_page", FloorProductListActivity.this.landPageId);
            }
          }
          bool1 = FloorProductListActivity.this.comeFrom.equals("floor");
          localSourceEntity = null;
        } while (!bool1);
        for (localObject = "";; localObject = str2)
        {
          try
          {
            localJSONObject = new JSONObject(FloorProductListActivity.this.tmpJsonString);
            localIterator = localJSONObject.keys();
            boolean bool2 = localIterator.hasNext();
            if (bool2) {
              break label264;
            }
          }
          catch (Exception localException)
          {
            for (;;)
            {
              JSONObject localJSONObject;
              Iterator localIterator;
              label264:
              String str1;
              String str2;
              localObject = FloorProductListActivity.this.tmpJsonString;
            }
          }
          localSourceEntity = new SourceEntity("home_floor", FloorProductListActivity.this.functionId + "@" + (String)localObject);
          break;
          str1 = (String)localIterator.next();
          str2 = localObject + str1 + "-" + localJSONObject.get(str1) + "|";
        }
      }
    });
  }
  
  private static class PromotionProductListImageProcessor
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
 * Qualified Name:     com.jingdong.app.mall.home.FloorProductListActivity
 * JD-Core Version:    0.7.0.1
 */