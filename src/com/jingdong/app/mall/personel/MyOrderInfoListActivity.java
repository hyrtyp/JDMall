package com.jingdong.app.mall.personel;

import android.content.Intent;
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
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.JdOrderStat;
import com.jingdong.common.entity.PaymentInfo;
import com.jingdong.common.entity.Product;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.URLParamMap;
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

public class MyOrderInfoListActivity
  extends MyActivity
{
  public static final String ORDER_FUNCTIONID = "functionId";
  public static final String PAGE_TYPE_ALL_ORDER = "allOrdersFunctionList";
  private final String TAG = "MyOrderInfoListActivity";
  private ListView listView;
  private View loadView;
  private ListView mAllOrderListView;
  private int mCurrentPos;
  private long mFirstStartTimestamp;
  private String mFunctionId;
  private TextView mNoOrderTextView;
  private JSONArrayPoxy mOrderListJSONArrayPoxy;
  private MyOrderController personalController;
  
  private void getAllInfoList(List<JdOrderStat> paramList)
  {
    getAllInfoList(paramList, false);
  }
  
  private void getAllInfoList(List<JdOrderStat> paramList, boolean paramBoolean)
  {
    this.mAllOrderListView.setVisibility(0);
    this.listView.setVisibility(8);
    MySimpleAdapter localMySimpleAdapter = new MySimpleAdapter(this, paramList, 2130903072, new String[] { "icon", "name" }, new int[] { 2131493123, 2131493124 });
    this.mAllOrderListView.setAdapter(localMySimpleAdapter);
    this.mAllOrderListView.setBackgroundResource(2130837725);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(DPIUtil.dip2px(7.0F), DPIUtil.dip2px(10.0F), DPIUtil.dip2px(7.0F), DPIUtil.dip2px(10.0F));
    this.mAllOrderListView.setLayoutParams(localLayoutParams);
    if ((!paramBoolean) && (this.mAllOrderListView.getFooterViewsCount() > 0)) {
      this.mAllOrderListView.removeFooterView(this.loadView);
    }
    this.mAllOrderListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        try
        {
          JdOrderStat localJdOrderStat = (JdOrderStat)paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
          String str = localJdOrderStat.getUrl();
          if (TextUtils.isEmpty(str))
          {
            Intent localIntent = new Intent(MyOrderInfoListActivity.this, MyOrderListActivity.class);
            localIntent.putExtra("title", localJdOrderStat.getName());
            localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
            MyOrderInfoListActivity.this.startActivityInFrame(localIntent);
            return;
          }
          URLParamMap localURLParamMap = new URLParamMap();
          localURLParamMap.put("to", str);
          CommonUtil.queryBrowserUrl(localJdOrderStat.getFunctionId(), localURLParamMap, new CommonBase.BrowserUrlListener()
          {
            public void onComplete(final String paramAnonymous2String)
            {
              MyOrderInfoListActivity.this.post(new Runnable()
              {
                public void run()
                {
                  Intent localIntent = new Intent(MyOrderInfoListActivity.this, WebActivity.class);
                  localIntent.putExtra("url", paramAnonymous2String);
                  localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
                  MyOrderInfoListActivity.this.startActivityInFrame(localIntent);
                }
              });
            }
          });
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private void getOrderList(String paramString)
  {
    LinearLayout localLinearLayout = (LinearLayout)ImageUtil.inflate(2130903175, null);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", LoginUserBase.getLoginUserName());
      this.mAllOrderListView.setVisibility(8);
      this.listView.setVisibility(0);
      new MyNextPageLoader(this, this.listView, localLinearLayout, paramString, localJSONObject, getString(2131165856)).showPageOne(true);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void handlerOrderDetail(Product paramProduct)
  {
    Intent localIntent = new Intent(this, MyOrderDetailActivity.class);
    if (paramProduct != null)
    {
      localIntent.putExtra("product", paramProduct);
      localIntent.putExtra("function", this.mFunctionId);
      localIntent.putExtra("title", getString(2131165929));
      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    }
    startActivityInFrame(localIntent);
  }
  
  private void onLoadList(final String paramString)
  {
    JdOrderStat localJdOrderStat = new JdOrderStat();
    localJdOrderStat.setFunctionId("oneMonthOrder");
    localJdOrderStat.setIcon("http://img30.360buyimg.com/mobilecms/g9/M03/07/0C/rBEHaVBb2Y0IAAAAAAADL-JMiecAABcNAMwt_AAAANH809.png");
    localJdOrderStat.setName("实物订单");
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localJdOrderStat);
    getAllInfoList(localArrayList, true);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(paramString);
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(1800000L);
    localHttpSetting.setEffect(0);
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          final ArrayList localArrayList = JdOrderStat.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull(paramString));
          if (localArrayList == null) {
            return;
          }
          MyOrderInfoListActivity.this.post(new Runnable()
          {
            public void run()
            {
              MyOrderInfoListActivity.this.getAllInfoList(localArrayList);
            }
          });
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903200);
    this.loadView = ImageUtil.inflate(2130903175, null);
    this.listView = ((ListView)findViewById(2131493770));
    this.mAllOrderListView = ((ListView)findViewById(2131493769));
    this.mNoOrderTextView = ((TextView)findViewById(2131493771));
    EditTextUtils.setTextViewText((TextView)findViewById(2131492990), getIntent(), getString(2131166343));
    this.mFunctionId = getIntent().getStringExtra("functionId");
    this.mFirstStartTimestamp = System.currentTimeMillis();
    this.personalController = new MyOrderController(getHttpGroupaAsynPool());
    if (!TextUtils.isEmpty(this.mFunctionId))
    {
      if (!this.mFunctionId.equals("allOrdersFunctionList")) {
        break label185;
      }
      onLoadList(this.mFunctionId);
    }
    for (;;)
    {
      if ("pay".equals(getIntent().getStringExtra("from"))) {
        post(new Runnable()
        {
          public void run()
          {
            ((MainFrameActivity)MyOrderInfoListActivity.this.getParent()).removeRecordSecond();
          }
        });
      }
      return;
      label185:
      getOrderList(this.mFunctionId);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    this.mCurrentPos = this.listView.getFirstVisiblePosition();
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((this.listView != null) && (this.listView.getVisibility() == 0)) {
      this.listView.setSelection(this.mCurrentPos);
    }
    for (;;)
    {
      if (this.mFirstStartTimestamp < MyOrderDetailActivity.mCancelTimestamp)
      {
        MyOrderDetailActivity.mCancelTimestamp = 0L;
        getOrderList(this.mFunctionId);
      }
      return;
      if ((this.mAllOrderListView != null) && (this.mAllOrderListView.getVisibility() == 0)) {
        this.mAllOrderListView.requestLayout();
      }
    }
  }
  
  public class MyNextPageLoader
    extends NextPageLoader
  {
    private String mFunctionId;
    
    public MyNextPageLoader(MyActivity paramMyActivity, AbsListView paramAbsListView, View paramView, String paramString1, JSONObject paramJSONObject, String paramString2)
    {
      super(paramAbsListView, paramView, paramString1, paramJSONObject, paramString2);
      this.mFunctionId = paramString1;
      setPageSize(50);
    }
    
    protected MySimpleAdapter createAdapter(IMyActivity paramIMyActivity, final AdapterView paramAdapterView, ArrayList<?> paramArrayList)
    {
      MySimpleAdapter local1 = new MySimpleAdapter(paramIMyActivity, paramArrayList, 2130903215, new String[] { "productList" }, new int[] { 2131493938 })
      {
        public View getView(final int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
        {
          Product localProduct = (Product)getItem(paramAnonymousInt);
          View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
          TextView localTextView1 = (TextView)localView.findViewById(2131493931);
          TextView localTextView2 = (TextView)localView.findViewById(2131493934);
          TextView localTextView3 = (TextView)localView.findViewById(2131493936);
          TextView localTextView4 = (TextView)localView.findViewById(2131493945);
          ((Gallery)localView.findViewById(2131493939)).setOnItemClickListener(new AdapterView.OnItemClickListener()
          {
            public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
            {
              Product localProduct = (Product)this.val$tmView.getAdapter().getItem(paramAnonymousInt);
              MyOrderInfoListActivity.this.handlerOrderDetail(localProduct);
            }
          });
          Boolean localBoolean = localProduct.getSubOrderFlag();
          if (localBoolean == null) {
            localBoolean = Boolean.valueOf(false);
          }
          label195:
          String str;
          if (localBoolean.booleanValue())
          {
            localTextView1.setText(localProduct.getOrderId() + MyOrderInfoListActivity.this.getString(2131165864));
            if ((localProduct.getOrderStatus() == null) || (!localProduct.getOrderStatus().contains(MyOrderInfoListActivity.this.getString(2131166028)))) {
              break label377;
            }
            localTextView4.setTextColor(-16777216);
            localTextView2.setText(Constants.REN_MIN_BI + localProduct.getOrderPrice());
            localTextView3.setText(localProduct.getOrderSubtime());
            localTextView4.setText(localProduct.getOrderStatus());
            if (!"waite4Payment".equals(MyOrderInfoListActivity.MyNextPageLoader.this.mFunctionId)) {
              break label406;
            }
            Button localButton2 = (Button)localView.findViewById(2131493946);
            localButton2.setVisibility(0);
            if (!"2".equals(localProduct.getmPaymentType())) {
              break label387;
            }
            str = MyOrderInfoListActivity.this.getString(2131165871);
            label304:
            localButton2.setText(str);
            localButton2.setOnClickListener(new checkLogisticsButtonListener(MyOrderInfoListActivity.this.listView, paramAnonymousInt, localButton2));
          }
          for (;;)
          {
            localView.setOnClickListener(new ListviewItemListener(MyOrderInfoListActivity.this.listView, paramAnonymousInt));
            return localView;
            localTextView1.setText(localProduct.getOrderId());
            break;
            label377:
            localTextView4.setTextColor(-65536);
            break label195;
            label387:
            str = PaymentInfo.getPaymentName(Integer.valueOf(localProduct.getmPaymentType()).intValue());
            break label304;
            label406:
            Button localButton1 = (Button)localView.findViewById(2131493932);
            localButton1.setVisibility(0);
            localButton1.setOnClickListener(new checkLogisticsButtonListener(MyOrderInfoListActivity.this.listView, paramAnonymousInt, localButton1));
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
            MyOrderInfoListActivity.this.handlerOrderDetail(localProduct);
          }
        }
        
        class checkLogisticsButtonListener
          implements View.OnClickListener
        {
          private AdapterView mParentAdapterView;
          private int mPosition;
          private Button mlistItemButton;
          
          public checkLogisticsButtonListener(AdapterView paramAdapterView, int paramInt, Button paramButton)
          {
            this.mParentAdapterView = paramAdapterView;
            this.mPosition = paramInt;
            this.mlistItemButton = paramButton;
          }
          
          public void onClick(View paramView)
          {
            int i = paramView.getId();
            Product localProduct = (Product)this.mParentAdapterView.getAdapter().getItem(this.mPosition);
            if (i == 2131493946) {
              if (MyOrderInfoListActivity.this.getString(2131165651).equals(this.mlistItemButton.getText())) {
                new MyOrderPaymentUtils(MyOrderInfoListActivity.this, localProduct).doOnlinePay();
              }
            }
            while ((i != 2131493932) || (!MyOrderInfoListActivity.this.getString(2131166303).equals(this.mlistItemButton.getText())))
            {
              do
              {
                return;
              } while (!MyOrderInfoListActivity.this.getString(2131165871).equals(this.mlistItemButton.getText()));
              new MyOrderPaymentUtils(MyOrderInfoListActivity.this, localProduct).doPostPayConfirm();
              return;
            }
            new MyOrderPaymentUtils(MyOrderInfoListActivity.this, localProduct).doCheckLogistics();
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
            localMySimpleAdapter = new MySimpleAdapter(MyOrderInfoListActivity.this, new LinkedList(), 2130903226, new String[] { "imageUrl" }, new int[] { 2131493333 });
            localMySimpleAdapter.setViewBinder(new SimpleSubViewBinder(new MyOrderInfoListActivity.MySimpleImageProcessor(null)));
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
      MyOrderInfoListActivity.this.mOrderListJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("orderList");
      ArrayList localArrayList = Product.toList(MyOrderInfoListActivity.this.mOrderListJSONArrayPoxy, 6);
      if (((localArrayList == null) || (localArrayList.size() == 0)) && (this.adapterView != null) && (this.adapterView.getAdapter() != null)) {
        MyOrderInfoListActivity.this.post(new Runnable()
        {
          public void run()
          {
            MyOrderInfoListActivity.this.listView.setVisibility(8);
            MyOrderInfoListActivity.this.mNoOrderTextView.setVisibility(0);
            MyOrderInfoListActivity.this.mNoOrderTextView.setText(MyOrderInfoListActivity.this.getString(2131165856));
            MyOrderInfoListActivity.this.mNoOrderTextView.setTextSize(17.0F);
            MyOrderInfoListActivity.this.mNoOrderTextView.setPadding(0, 20, 0, 20);
          }
        });
      }
      return localArrayList;
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
 * Qualified Name:     com.jingdong.app.mall.personel.MyOrderInfoListActivity
 * JD-Core Version:    0.7.0.1
 */