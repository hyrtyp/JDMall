package com.jingdong.app.mall.personel;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.FloatMath;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.Product;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.EditTextUtils;
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
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class MyOrderListActivity
  extends MyActivity
{
  private static final String TAG = "MyOrderListActivity";
  private String functionId;
  private boolean isShowTextView;
  private LinearLayout loadingLayout;
  private AdapterView mAdapterView;
  private int mCurrentPos;
  private long mMyOrderListActivityStartTimestamp;
  private TextView mNoOrderTextView;
  private ListView mOneMonthList;
  NextPageLoader mOneMonthPageLoader;
  private ListView mPreMonthList;
  NextPageLoader mPreMonthPageLoader;
  private Button oneMonthOrders;
  private JSONObject params;
  private boolean preMonthBtnClickOnce = true;
  private Button preMonthOrders;
  
  private void InitComponenet()
  {
    EditTextUtils.setTextViewText((TextView)findViewById(2131492990), getIntent(), getString(2131166351));
    this.oneMonthOrders = ((Button)findViewById(2131493773));
    this.preMonthOrders = ((Button)findViewById(2131493774));
    ClickListener localClickListener = new ClickListener(null);
    this.oneMonthOrders.setOnClickListener(localClickListener);
    this.preMonthOrders.setOnClickListener(localClickListener);
    this.mOneMonthList = ((ListView)findViewById(2131493776));
    this.mPreMonthList = ((ListView)findViewById(2131493775));
    this.mNoOrderTextView = ((TextView)findViewById(2131493771));
    this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
    this.loadingLayout.setGravity(17);
    this.mOneMonthList.setItemsCanFocus(true);
  }
  
  private void getOneMotherOrderList(String paramString)
  {
    this.mOneMonthPageLoader = new MyNextPageLoader(this, this.mOneMonthList, this.loadingLayout, paramString, this.params, getString(2131165856));
    this.mOneMonthPageLoader.showPageOne(true);
  }
  
  private void goneCustomView()
  {
    post(new Runnable()
    {
      public void run()
      {
        if ((MyOrderListActivity.this.mNoOrderTextView != null) && (MyOrderListActivity.this.mNoOrderTextView.isShown())) {
          MyOrderListActivity.this.mNoOrderTextView.setVisibility(8);
        }
      }
    });
  }
  
  private void handleOneMonthOrder()
  {
    initOneMonthorder();
    this.mOneMonthPageLoader.showPageOne(true);
  }
  
  private void handlePreMonthOrder()
  {
    this.oneMonthOrders.setSelected(false);
    this.preMonthOrders.setSelected(true);
    this.functionId = "beforeOneMonthOrder";
    this.mOneMonthList.setVisibility(8);
    this.mPreMonthList.setVisibility(0);
    if (this.preMonthBtnClickOnce)
    {
      this.mPreMonthPageLoader.showPageOne(true);
      this.preMonthBtnClickOnce = false;
    }
    this.mAdapterView = this.mPreMonthList;
    goneCustomView();
  }
  
  private void handlerOrderDetail(Product paramProduct)
  {
    Intent localIntent = new Intent(this, MyOrderDetailActivity.class);
    if (paramProduct != null)
    {
      localIntent.putExtra("product", paramProduct);
      localIntent.putExtra("title", getString(2131165929));
      localIntent.putExtra("function", this.functionId);
      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    }
    startActivityInFrame(localIntent);
  }
  
  private void initOneMonthorder()
  {
    this.oneMonthOrders.setSelected(true);
    this.preMonthOrders.setSelected(false);
    this.mOneMonthList.setVisibility(0);
    this.mPreMonthList.setVisibility(8);
    this.mAdapterView = this.mOneMonthList;
  }
  
  private boolean isMoving(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramFloat1 - paramFloat3;
    float f2 = paramFloat2 - paramFloat4;
    return FloatMath.sqrt(f1 * f1 + f2 * f2) > 50.0F;
  }
  
  private void setOrderList()
  {
    this.mOneMonthPageLoader = new MyNextPageLoader(this, this.mOneMonthList, this.loadingLayout, this.functionId, this.params, getString(2131165856));
    this.mPreMonthPageLoader = new MyNextPageLoader(this, this.mPreMonthList, this.loadingLayout, "beforeOneMonthOrder", this.params, getString(2131165856));
  }
  
  private void showVisibleCustomView()
  {
    post(new Runnable()
    {
      public void run()
      {
        MyOrderListActivity.this.mAdapterView.setVisibility(8);
        MyOrderListActivity.this.mNoOrderTextView.setVisibility(0);
        MyOrderListActivity.this.mNoOrderTextView.setText(MyOrderListActivity.this.getString(2131165856));
        MyOrderListActivity.this.mNoOrderTextView.setTextSize(17.0F);
        MyOrderListActivity.this.mNoOrderTextView.setPadding(0, 20, 0, 20);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903201);
    this.mMyOrderListActivityStartTimestamp = System.currentTimeMillis();
    String str = getIntent().getStringExtra("functionId");
    if (!TextUtils.isEmpty(str)) {
      this.functionId = str;
    }
    for (;;)
    {
      this.params = new JSONObject();
      try
      {
        this.params.put("pin", LoginUserBase.getLoginUserName());
        this.params.put("isLoadWareInfos", true);
        InitComponenet();
        setOrderList();
        if ("oneMonthOrder".equals(this.functionId))
        {
          handleOneMonthOrder();
          return;
          this.functionId = "oneMonthOrder";
        }
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
        handlePreMonthOrder();
      }
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    this.mCurrentPos = this.mAdapterView.getFirstVisiblePosition();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.mAdapterView.setSelection(this.mCurrentPos);
    if (this.mMyOrderListActivityStartTimestamp < MyOrderDetailActivity.mCancelTimestamp)
    {
      MyOrderDetailActivity.mCancelTimestamp = 0L;
      getOneMotherOrderList("oneMonthOrder");
    }
  }
  
  private class ClickListener
    implements View.OnClickListener
  {
    private ClickListener() {}
    
    public void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      default: 
      case 2131493773: 
        do
        {
          return;
          MyOrderListActivity.this.functionId = "oneMonthOrder";
          MyOrderListActivity.this.initOneMonthorder();
        } while (!MyOrderListActivity.this.isShowTextView);
        MyOrderListActivity.this.showVisibleCustomView();
        return;
      }
      MyOrderListActivity.this.handlePreMonthOrder();
    }
  }
  
  public class MyNextPageLoader
    extends NextPageLoader
  {
    private LayoutInflater mInflater;
    
    public MyNextPageLoader(MyActivity paramMyActivity, AbsListView paramAbsListView, View paramView, String paramString1, JSONObject paramJSONObject, String paramString2)
    {
      super(paramAbsListView, paramView, paramString1, paramJSONObject, paramString2);
      setPageSize(50);
      this.mInflater = LayoutInflater.from(paramMyActivity);
    }
    
    protected MySimpleAdapter createAdapter(IMyActivity paramIMyActivity, final AdapterView paramAdapterView, ArrayList<?> paramArrayList)
    {
      MySimpleAdapter local1 = new MySimpleAdapter(paramIMyActivity, paramArrayList, 2130903215, new String[] { "productList" }, new int[] { 2131493938 })
      {
        public View getView(final int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
        {
          View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
          Product localProduct = (Product)getItem(paramAnonymousInt);
          TextView localTextView1 = (TextView)localView.findViewById(2131493931);
          TextView localTextView2 = (TextView)localView.findViewById(2131493934);
          TextView localTextView3 = (TextView)localView.findViewById(2131493936);
          TextView localTextView4 = (TextView)localView.findViewById(2131493945);
          Button localButton = (Button)localView.findViewById(2131493932);
          ((Gallery)localView.findViewById(2131493939)).setOnTouchListener(new View.OnTouchListener()
          {
            private boolean isDown = false;
            private float startX;
            private float startY;
            
            public boolean onTouch(View paramAnonymous2View, MotionEvent paramAnonymous2MotionEvent)
            {
              switch (paramAnonymous2MotionEvent.getAction())
              {
              default: 
                this.isDown = false;
              case 0: 
              case 1: 
                Product localProduct;
                do
                {
                  Object localObject;
                  do
                  {
                    Adapter localAdapter;
                    do
                    {
                      do
                      {
                        return false;
                        this.isDown = true;
                        this.startX = paramAnonymous2MotionEvent.getX();
                        this.startY = paramAnonymous2MotionEvent.getY();
                        return false;
                      } while ((!this.isDown) || (this.val$tmView == null));
                      localAdapter = this.val$tmView.getAdapter();
                    } while (localAdapter == null);
                    localObject = localAdapter.getItem(paramAnonymousInt);
                  } while ((localObject == null) || (!(localObject instanceof Product)));
                  localProduct = (Product)localObject;
                } while (localProduct == null);
                MyOrderListActivity.this.handlerOrderDetail(localProduct);
                return false;
              }
              float f1 = paramAnonymous2MotionEvent.getX();
              float f2 = paramAnonymous2MotionEvent.getY();
              if (MyOrderListActivity.this.isMoving(this.startX, this.startY, f1, f2))
              {
                this.isDown = false;
                return false;
              }
              this.isDown = true;
              return false;
            }
          });
          Boolean localBoolean = localProduct.getSubOrderFlag();
          if (localBoolean == null) {
            localBoolean = Boolean.valueOf(false);
          }
          if (localBoolean.booleanValue())
          {
            localTextView1.setText(localProduct.getOrderId() + MyOrderListActivity.this.getString(2131165864));
            if ((localProduct.getOrderStatus() == null) || (!localProduct.getOrderStatus().contains(MyOrderListActivity.this.getString(2131166028)))) {
              break label328;
            }
            localTextView4.setTextColor(-16777216);
          }
          for (;;)
          {
            localTextView2.setText(Constants.REN_MIN_BI + localProduct.getOrderPrice());
            localTextView3.setText(localProduct.getOrderSubtime());
            localTextView4.setText(localProduct.getOrderStatus());
            localButton.setVisibility(0);
            localButton.setOnClickListener(new checkLogisticsButtonListener(MyOrderListActivity.this.mAdapterView, paramAnonymousInt, localButton));
            localView.setOnClickListener(new ListviewItemListener(MyOrderListActivity.this.mAdapterView, paramAnonymousInt));
            return localView;
            localTextView1.setText(localProduct.getOrderId());
            break;
            label328:
            localTextView4.setTextColor(-65536);
          }
        }
        
        class ListviewItemListener
          implements View.OnClickListener
        {
          private AdapterView mParentAdapterView;
          private int mPosition;
          
          public ListviewItemListener(AdapterView paramAdapterView, int paramInt)
          {
            this.mParentAdapterView = paramAdapterView;
            this.mPosition = paramInt;
          }
          
          public void onClick(View paramView)
          {
            Product localProduct = (Product)this.mParentAdapterView.getAdapter().getItem(this.mPosition);
            MyOrderListActivity.this.handlerOrderDetail(localProduct);
          }
        }
        
        class checkLogisticsButtonListener
          implements View.OnClickListener
        {
          private AdapterView mParentAdapterView;
          private int mPosition;
          private View mlistItemButton;
          
          public checkLogisticsButtonListener(AdapterView paramAdapterView, int paramInt, View paramView)
          {
            this.mParentAdapterView = paramAdapterView;
            this.mPosition = paramInt;
            this.mlistItemButton = paramView;
          }
          
          public void onClick(View paramView)
          {
            int i = paramView.getId();
            Product localProduct = (Product)this.mParentAdapterView.getAdapter().getItem(this.mPosition);
            if (i == 2131493932)
            {
              Intent localIntent = new Intent();
              if (MyOrderListActivity.this.getString(2131166303).equals(((Button)this.mlistItemButton).getText()))
              {
                localIntent.putExtra("title", MyOrderListActivity.this.getString(2131166303));
                localIntent.setClass(MyOrderListActivity.this, CheckMyOrderDetail.class);
              }
              if (localProduct != null) {
                localIntent.putExtra("product", localProduct);
              }
              MyOrderListActivity.this.startActivityInFrame(localIntent);
            }
          }
        }
      };
      local1.setViewBinder(new SimpleSubViewBinder(new SimpleImageProcessor())
      {
        private void setGallery(Gallery paramAnonymousGallery, ArrayList<Product> paramAnonymousArrayList)
        {
          MySimpleAdapter localMySimpleAdapter = (MySimpleAdapter)paramAnonymousGallery.getAdapter();
          if (localMySimpleAdapter == null)
          {
            localMySimpleAdapter = new MySimpleAdapter(MyOrderListActivity.this, new LinkedList(), 2130903226, new String[] { "imageUrl" }, new int[] { 2131493333 });
            localMySimpleAdapter.setViewBinder(new SimpleSubViewBinder(new MyOrderListActivity.MySimpleImageProcessor(null)));
            localMySimpleAdapter.addAllBean(paramAnonymousArrayList);
            paramAnonymousGallery.setAdapter(localMySimpleAdapter);
          }
          for (;;)
          {
            localMySimpleAdapter.notifyDataSetChanged();
            paramAnonymousGallery.setSelection(1);
            return;
            localMySimpleAdapter.replaceAllBean(paramAnonymousArrayList);
          }
        }
        
        protected boolean subBind(SimpleBeanAdapter.SubViewHolder paramAnonymousSubViewHolder)
        {
          View localView = paramAnonymousSubViewHolder.getSubView();
          Object localObject = paramAnonymousSubViewHolder.getSubData();
          if (localView.getId() != 2131493938) {
            return false;
          }
          TextView localTextView = (TextView)localView.findViewById(2131493941);
          ImageView localImageView = (ImageView)localView.findViewById(2131493940);
          Gallery localGallery = (Gallery)localView.findViewById(2131493939);
          if (localObject == null) {
            return false;
          }
          ArrayList localArrayList = (ArrayList)localObject;
          if ((localArrayList != null) && (localArrayList.size() > 0))
          {
            if (localArrayList.size() <= 1) {
              break label118;
            }
            localTextView.setVisibility(8);
            localImageView.setVisibility(8);
            localGallery.setVisibility(0);
            setGallery(localGallery, localArrayList);
          }
          for (;;)
          {
            return true;
            label118:
            Product localProduct = (Product)localArrayList.get(0);
            localTextView.setVisibility(0);
            localImageView.setVisibility(0);
            localGallery.setVisibility(8);
            localTextView.setText(localProduct.getName());
            String str = localProduct.getImageUrl();
            GlobalImageCache.ImageState localImageState = GlobalImageCache.getImageState(new GlobalImageCache.BitmapDigest(str));
            SimpleBeanAdapter.SubViewHolder localSubViewHolder = new SimpleBeanAdapter.SubViewHolder(paramAnonymousSubViewHolder);
            localSubViewHolder.setSubViewId(localImageView.getId());
            localSubViewHolder.setSubData(str);
            localSubViewHolder.setSubView(localImageView);
            getSimpleImageProcessor().show(localSubViewHolder, localImageState);
          }
        }
      });
      return local1;
    }
    
    public void setSelection(int paramInt) {}
    
    protected void showError() {}
    
    protected ArrayList<?> toList(HttpGroup.HttpResponse paramHttpResponse)
    {
      JSONObjectProxy localJSONObjectProxy = paramHttpResponse.getJSONObject();
      ArrayList localArrayList = null;
      try
      {
        localArrayList = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("orderList"), 6);
        if (((localArrayList == null) || (localArrayList.size() == 0)) && (this.adapterView != null))
        {
          if (this.adapterView.getAdapter() != null)
          {
            MyOrderListActivity.this.isShowTextView = true;
            MyOrderListActivity.this.showVisibleCustomView();
            return localArrayList;
          }
          MyOrderListActivity.this.post(new Runnable()
          {
            public void run()
            {
              MyOrderListActivity.this.mNoOrderTextView.setVisibility(8);
            }
          });
          return localArrayList;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      return localArrayList;
    }
    
    public final class ViewHolder
    {
      public TextView mOrderId;
      public Gallery mOrderImageGallery;
      public Button mOrderItemCheckLogistics;
      public Button mOrderItemhandler;
      public TextView mOrderName;
      public TextView mOrderPrice;
      public TextView mOrderSubtime;
      public ImageView mProductImageView;
      public RelativeLayout mProductLayout;
      public TextView morderStatusTextView;
      
      public ViewHolder() {}
    }
  }
  
  private static class MySimpleImageProcessor
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
 * Qualified Name:     com.jingdong.app.mall.personel.MyOrderListActivity
 * JD-Core Version:    0.7.0.1
 */