package com.jingdong.app.mall.promotion;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.app.mall.product.CommercialRuleActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.CouponUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.ImageUtil;
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
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class PromotionProductListActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener
{
  private static final String TAG = "PromotionProductListActivity";
  private String activityId;
  private String comeFrom;
  private String functionId;
  private GridView gridView;
  private String landPageId;
  private LinearLayout loadingView;
  private TextView noDateTextView;
  private JSONObject params;
  private MySimpleAdapter promotionProductListAdapter;
  private String promotionRuleDetail;
  private Button rightButton;
  private RelativeLayout takeCouponLayout;
  private TextView titleTextView;
  
  private void handleActivityRule()
  {
    if (!TextUtils.isEmpty(this.promotionRuleDetail))
    {
      this.rightButton = ((Button)findViewById(2131494684));
      this.rightButton.setVisibility(0);
      this.rightButton.setText(getResources().getString(2131166019));
      this.rightButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Intent localIntent = new Intent(PromotionProductListActivity.this, CommercialRuleActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putString("title", (String)PromotionProductListActivity.this.titleTextView.getText());
          localBundle.putString("detail", PromotionProductListActivity.this.promotionRuleDetail);
          localIntent.putExtras(localBundle);
          localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
          PromotionProductListActivity.this.startActivityInFrame(localIntent);
        }
      });
    }
  }
  
  private void handleGridView(String paramString, JSONObject paramJSONObject)
  {
    NextPageLoader local2 = new NextPageLoader(this, this.gridView, this.loadingView, paramString, paramJSONObject)
    {
      protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        PromotionProductListActivity.this.promotionProductListAdapter = new MySimpleAdapter(PromotionProductListActivity.this, paramAnonymousArrayList, 2130903272, new String[] { "imageurl", "name", "jdPrice" }, new int[] { 2131493447, 2131493448, 2131493449 })
        {
          public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
          {
            return super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
          }
        };
        PromotionProductListActivity.this.promotionProductListAdapter.setViewBinder(new SimpleSubViewBinder(new PromotionProductListActivity.PromotionProductListImageProcessor(null)));
        return PromotionProductListActivity.this.promotionProductListAdapter;
      }
      
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        super.onEnd(paramAnonymousHttpResponse);
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        final String str2;
        final String str3;
        if (localJSONObjectProxy != null)
        {
          String str1 = localJSONObjectProxy.getStringOrNull("couponStatus");
          str2 = localJSONObjectProxy.getStringOrNull("roleIds");
          str3 = localJSONObjectProxy.getStringOrNull("couponURL");
          if (TextUtils.isEmpty(str1)) {
            break label114;
          }
          if (!"1".equals(str1)) {
            break label99;
          }
          if (PromotionProductListActivity.this.takeCouponLayout != null) {}
        }
        else
        {
          return;
        }
        PromotionProductListActivity.this.setVisibleAndPadding(0, DPIUtil.dip2px(0.0F));
        PromotionProductListActivity.this.takeCouponLayout.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            Runnable local1 = new Runnable()
            {
              public void run()
              {
                CouponUtil.queryTakeCoupon(PromotionProductListActivity.this, "coupon", this.val$roleIds, this.val$couponURL);
              }
            };
            LoginUser.getInstance().executeLoginRunnable(PromotionProductListActivity.this, local1);
          }
        });
        return;
        label99:
        PromotionProductListActivity.this.setVisibleAndPadding(8, DPIUtil.dip2px(6.0F));
        return;
        label114:
        PromotionProductListActivity.this.setVisibleAndPadding(8, DPIUtil.dip2px(6.0F));
      }
      
      public void setSelection(int paramAnonymousInt) {}
      
      protected void showError()
      {
        PromotionProductListActivity.this.post(new Runnable()
        {
          public void run()
          {
            PromotionProductListActivity.this.noDateTextView.setVisibility(0);
            PromotionProductListActivity.this.gridView.setVisibility(8);
          }
        });
      }
      
      protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        ArrayList localArrayList = new ArrayList();
        if ((localJSONObjectProxy != null) && (!localJSONObjectProxy.isNull("cmsActivityWareList"))) {}
        for (localArrayList = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("cmsActivityWareList"), 20);; localArrayList = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("wareInfoList"), 20)) {
          do
          {
            if (((localArrayList == null) || (localArrayList.size() < 1)) && ((getAllProductList() == null) || (getAllProductList().size() < 1))) {
              PromotionProductListActivity.this.post(new Runnable()
              {
                public void run()
                {
                  PromotionProductListActivity.this.noDateTextView.setVisibility(0);
                  PromotionProductListActivity.this.gridView.setVisibility(8);
                }
              });
            }
            return localArrayList;
          } while ((localJSONObjectProxy == null) || (localJSONObjectProxy.isNull("wareInfoList")));
        }
      }
    };
    local2.setPageSize(10);
    local2.setEffect(true);
    local2.setHttpNotifyUser(true);
    local2.showPageOne();
  }
  
  private void setVisibleAndPadding(final int paramInt1, final int paramInt2)
  {
    post(new Runnable()
    {
      public void run()
      {
        PromotionProductListActivity.this.takeCouponLayout.setVisibility(paramInt1);
        PromotionProductListActivity.this.gridView.setPadding(DPIUtil.dip2px(8.0F), paramInt2, DPIUtil.dip2px(8.0F), DPIUtil.dip2px(6.0F));
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903271);
    Bundle localBundle = getIntent().getExtras();
    this.functionId = "getCmsActivityWareList";
    this.params = new JSONObject();
    this.activityId = localBundle.getString("activityId");
    this.comeFrom = localBundle.getString("comeFrom");
    this.landPageId = localBundle.getString("landPageId");
    String str1 = localBundle.getString("functionId");
    if (!TextUtils.isEmpty(str1)) {
      this.functionId = str1;
    }
    String str2 = localBundle.getString("paramsJsonString");
    try
    {
      if (!TextUtils.isEmpty(str2)) {
        this.params = new JSONObject(str2);
      }
      for (;;)
      {
        this.promotionRuleDetail = localBundle.getString("content");
        this.titleTextView = ((TextView)findViewById(2131492990));
        this.titleTextView.setText(localBundle.getString("title"));
        this.takeCouponLayout = ((RelativeLayout)findViewById(2131494351));
        CommonUtil.fixBackBroundRepeat(this.takeCouponLayout);
        this.gridView = ((GridView)findViewById(2131493444));
        this.gridView.setOnItemClickListener(this);
        this.noDateTextView = ((TextView)findViewById(2131493446));
        this.loadingView = ((LinearLayout)ImageUtil.inflate(2130903175, null));
        this.loadingView.setGravity(17);
        handleActivityRule();
        handleGridView(this.functionId, this.params);
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
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView.setPressed(false);
    Product localProduct = (Product)((Adapter)paramAdapterView.getAdapter()).getItem(paramInt);
    SourceEntity localSourceEntity;
    if (localProduct != null)
    {
      if (!this.comeFrom.equals("home")) {
        break label70;
      }
      localSourceEntity = new SourceEntity("promotionProductListFromHome", this.activityId);
    }
    for (;;)
    {
      StartActivityUtils.startProductDetailActivity(this, localProduct.getId(), null, localSourceEntity);
      return;
      label70:
      if (this.comeFrom.equals("category"))
      {
        localSourceEntity = new SourceEntity("promotionProductListFromCategory", this.activityId);
      }
      else if (this.comeFrom.equals("salse"))
      {
        localSourceEntity = new SourceEntity("promotionProductListFromSlideScreen", this.activityId);
      }
      else if ("m_destination".equals(this.comeFrom))
      {
        localSourceEntity = new SourceEntity("m_destination_page", this.landPageId);
      }
      else
      {
        boolean bool = this.comeFrom.equals("floor");
        localSourceEntity = null;
        if (bool) {
          localSourceEntity = new SourceEntity("home_floor", this.functionId);
        }
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          if (PromotionProductListActivity.this.promotionProductListAdapter != null) {
            PromotionProductListActivity.this.promotionProductListAdapter.notifyDataSetChanged();
          }
          return;
        }
        catch (Exception localException) {}
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
 * Qualified Name:     com.jingdong.app.mall.promotion.PromotionProductListActivity
 * JD-Core Version:    0.7.0.1
 */