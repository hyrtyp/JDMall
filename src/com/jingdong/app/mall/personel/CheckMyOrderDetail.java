package com.jingdong.app.mall.personel;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.app.mall.gis.GisUrlUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.Product;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class CheckMyOrderDetail
  extends MyActivity
{
  private final String TAG = CheckMyOrderDetail.class.getSimpleName();
  Boolean cancleOrder = Boolean.valueOf(false);
  ImageView imageViewLess;
  private JSONArrayPoxy jsonOrderInfo;
  private JSONArrayPoxy jsonOrderMessageList;
  TextView mAllTraceInfo;
  TextView mOrderIdNum;
  TextView mOrderStatus;
  TextView mOrderTime;
  private TextView mOrderTransportPerson;
  private TextView mOrderTransportStyle;
  private Product mProduct;
  ArrayList<Product> mProductlist;
  Button mTitleRightButton;
  TextView mTotalPrice;
  ViewGroup mTraceView;
  String orderId;
  View orderInfoLayout;
  View orderProductGalleryLayout;
  private JSONObject params;
  View positionLine;
  Boolean postConfrimFlag = Boolean.valueOf(false);
  Boolean receiveConfrimFlag = Boolean.valueOf(false);
  ViewGroup traceListOther;
  
  private void getTraceInfo()
  {
    if (this.params.length() < 1) {
      return;
    }
    HttpGroup.OnAllListener local3 = new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy1 = paramAnonymousHttpResponse.getJSONObject();
        try
        {
          CheckMyOrderDetail.this.jsonOrderMessageList = localJSONObjectProxy1.getJSONArray("orderMessageList");
          CheckMyOrderDetail.this.jsonOrderInfo = localJSONObjectProxy1.getJSONArray("orderInfo");
          if ((CheckMyOrderDetail.this.jsonOrderInfo != null) && (CheckMyOrderDetail.this.jsonOrderInfo.length() != 0))
          {
            JSONObjectProxy localJSONObjectProxy2 = CheckMyOrderDetail.this.jsonOrderInfo.getJSONObjectOrNull(0);
            if (localJSONObjectProxy2 != null)
            {
              String str = localJSONObjectProxy2.getStringOrNull("ukey");
              if (str != null) {
                CheckMyOrderDetail.this.queryShowGis(str, CheckMyOrderDetail.this.orderId);
              }
              CheckMyOrderDetail.this.setTraceInfo();
            }
          }
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("newOrderMessage");
    localHttpSetting.setJsonParams(this.params);
    localHttpSetting.setListener(local3);
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void initComponent(Intent paramIntent)
  {
    EditTextUtils.setTextViewText((TextView)findViewById(2131492990), paramIntent, getString(2131166303));
    this.mTitleRightButton = ((Button)findViewById(2131494684));
    this.mOrderTransportStyle = ((TextView)findViewById(2131493899));
    this.mOrderTransportPerson = ((TextView)findViewById(2131493901));
    this.mOrderIdNum = ((TextView)findViewById(2131493903));
    this.mTotalPrice = ((TextView)findViewById(2131493911));
    this.mOrderTime = ((TextView)findViewById(2131493912));
    ClickListener localClickListener = new ClickListener(null);
    this.mTraceView = ((RelativeLayout)findViewById(2131493907));
    this.mTraceView.setOnClickListener(localClickListener);
    this.mOrderIdNum.setText(this.orderId);
    this.orderInfoLayout = findViewById(2131493909);
    this.orderInfoLayout.setOnClickListener(localClickListener);
    this.orderProductGalleryLayout = findViewById(2131493914);
  }
  
  private void queryShowGis(final String paramString1, final String paramString2)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("showGis");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        Boolean localBoolean = paramAnonymousHttpResponse.getJSONObject().getBooleanOrNull("showGis");
        if (localBoolean == null) {
          localBoolean = Boolean.valueOf(false);
        }
        if (localBoolean.booleanValue()) {
          CheckMyOrderDetail.this.post(new Runnable()
          {
            public void run()
            {
              new GisUrlUtil(CheckMyOrderDetail.this, this.val$orderId, this.val$ukey);
            }
          });
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("ukey", paramString1);
        paramAnonymousHttpSettingParams.putJsonParam("orderId", paramString2);
      }
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void setTraceInfo()
  {
    post(new Runnable()
    {
      public void run()
      {
        CheckMyOrderDetail.this.mTraceView = ((ViewGroup)CheckMyOrderDetail.this.findViewById(2131493908));
        String str1;
        Object localObject;
        if ((CheckMyOrderDetail.this.jsonOrderInfo != null) && (CheckMyOrderDetail.this.jsonOrderInfo.length() != 0))
        {
          str1 = "";
          localObject = "";
        }
        try
        {
          JSONObjectProxy localJSONObjectProxy2 = CheckMyOrderDetail.this.jsonOrderInfo.getJSONObjectOrNull(0);
          str1 = localJSONObjectProxy2.getStringOrNull("carrier");
          String str2 = localJSONObjectProxy2.getStringOrNull("paymentType");
          localObject = str2;
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            localException2.printStackTrace();
          }
          localView = ImageUtil.inflate(2130903203, null);
        }
        CheckMyOrderDetail.this.mOrderTransportStyle.setText((CharSequence)localObject);
        CheckMyOrderDetail.this.mOrderTransportPerson.setText(str1);
        int i;
        int j;
        if ((CheckMyOrderDetail.this.jsonOrderMessageList != null) && (CheckMyOrderDetail.this.jsonOrderMessageList.length() != 0))
        {
          i = CheckMyOrderDetail.this.jsonOrderMessageList.length();
          j = 0;
        }
        for (;;)
        {
          if (j >= i) {
            return;
          }
          try
          {
            View localView;
            JSONObjectProxy localJSONObjectProxy1 = CheckMyOrderDetail.this.jsonOrderMessageList.getJSONObject(j);
            CheckMyOrderDetail.this.setTraceViewItem(localView, localJSONObjectProxy1);
            label193:
            CheckMyOrderDetail.this.mTraceView.addView(localView, j);
            if (j == i - 1) {
              localView.findViewById(2131493794).setVisibility(8);
            }
            j++;
            continue;
            TextView localTextView = new TextView(CheckMyOrderDetail.this.getBaseContext());
            localTextView.setPadding(20, 10, 10, 10);
            localTextView.setText(2131165862);
            localTextView.setTextColor(-16777216);
            CheckMyOrderDetail.this.mTraceView.addView(localTextView);
            CheckMyOrderDetail.this.mTraceView.setClickable(false);
            return;
          }
          catch (Exception localException1)
          {
            break label193;
          }
        }
      }
    });
  }
  
  private void setTraceViewItem(View paramView, JSONObject paramJSONObject)
    throws JSONException
  {
    TextView localTextView1 = (TextView)paramView.findViewById(2131493791);
    TextView localTextView2 = (TextView)paramView.findViewById(2131493792);
    localTextView1.setText(paramJSONObject.getString("crateTime"));
    localTextView2.setText(paramJSONObject.getString("message"));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    this.mProduct = ((Product)localIntent.getSerializableExtra("product"));
    if (this.mProduct != null) {
      this.orderId = this.mProduct.getOrderId();
    }
    for (;;)
    {
      this.params = new JSONObject();
      try
      {
        this.params.put("pin", LoginUserBase.getLoginUserName());
        this.params.put("orderId", this.orderId);
        setContentView(2130903213);
        initComponent(localIntent);
        getTraceInfo();
        return;
        this.orderId = localIntent.getStringExtra("orderId");
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((this.postConfrimFlag.booleanValue()) && (getBooleanFromPreference("post_order_confrim_flag"))) {
      this.mTitleRightButton.setVisibility(8);
    }
    WebView.enablePlatformNotifications();
  }
  
  protected void onStop()
  {
    super.onStop();
    try
    {
      WebView.enablePlatformNotifications();
      return;
    }
    catch (Exception localException) {}
  }
  
  private class ClickListener
    implements View.OnClickListener
  {
    private ClickListener() {}
    
    public void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      case 2131493907: 
      case 2131493908: 
      default: 
        return;
      }
      Intent localIntent = new Intent(CheckMyOrderDetail.this, MyOrderDetailActivity.class);
      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
      Bundle localBundle = new Bundle();
      try
      {
        localBundle.putString("orderId", CheckMyOrderDetail.this.params.getString("orderId"));
        localBundle.putString("pin", CheckMyOrderDetail.this.params.getString("pin"));
        localBundle.putSerializable("productList", CheckMyOrderDetail.this.mProductlist);
        localIntent.putExtras(localBundle);
        CheckMyOrderDetail.this.startActivityInFrame(localIntent);
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
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.CheckMyOrderDetail
 * JD-Core Version:    0.7.0.1
 */