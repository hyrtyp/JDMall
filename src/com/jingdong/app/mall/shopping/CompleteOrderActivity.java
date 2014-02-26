package com.jingdong.app.mall.shopping;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.personel.CheckMyOrderDetail;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.Product;
import com.jingdong.common.utils.pay.PayUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class CompleteOrderActivity
  extends MyActivity
{
  private Boolean allowOnlinePay;
  private String amount;
  private boolean isEasyBuy;
  private boolean isNoRegisterOrder = false;
  Button mCompleted;
  TextView mNoRegisterTipsTv;
  TextView mOrderNo;
  TextView mPayMoney;
  TextView mPayMsg;
  TextView mPayWay;
  TextView mTitle;
  private String message;
  private String noRegisterOrderMobileNumber;
  private String orderId;
  private String way;
  
  private void doOnlinePay()
  {
    PayUtils.doPay(MyApplication.getInstance().getCurrentMyActivity(), this.orderId);
  }
  
  private void handleClickEvent()
  {
    this.mCompleted.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if ((CompleteOrderActivity.this.isOnlinePay()) && (CompleteOrderActivity.this.isShowPay()))
        {
          CompleteOrderActivity.this.doOnlinePay();
          return;
        }
        if (Constants.bEasyBuy)
        {
          Intent localIntent = new Intent(CompleteOrderActivity.this, CheckMyOrderDetail.class);
          Product localProduct = new Product();
          try
          {
            localProduct.setOrderId(String.valueOf(Constants.jbOrderNum.get("orderId")));
            localIntent.putExtra("orderId", localProduct.getOrderId());
            CompleteOrderActivity.this.startActivityInFrame(localIntent);
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
        CommonUtil.getInstance().backToHomePage(CompleteOrderActivity.this.getBaseContext());
      }
    });
  }
  
  private void initComponent()
  {
    this.mOrderNo = ((TextView)findViewById(2131493279));
    this.mPayMoney = ((TextView)findViewById(2131493281));
    this.mPayWay = ((TextView)findViewById(2131493283));
    this.mPayMsg = ((TextView)findViewById(2131493286));
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mNoRegisterTipsTv = ((TextView)findViewById(2131493284));
    if (!this.isNoRegisterOrder)
    {
      this.mNoRegisterTipsTv.setText("您的手机号" + this.noRegisterOrderMobileNumber.replace(this.noRegisterOrderMobileNumber.substring(5, 8), "***") + "已注册为京东账号，短信密码即为您的登录密码");
      this.mNoRegisterTipsTv.setVisibility(0);
    }
    this.mCompleted = ((Button)findViewById(2131493288));
    if (Constants.bEasyBuy)
    {
      this.mCompleted.setText(2131165891);
      this.mTitle.setText(2131165892);
      return;
    }
    this.mTitle.setText(2131165969);
  }
  
  private void initData()
  {
    Bundle localBundle = getIntent().getExtras();
    this.way = localBundle.getString("order_way");
    this.orderId = localBundle.getString("order_no");
    this.amount = localBundle.getString("order_money");
    this.message = localBundle.getString("order_msg");
    this.isNoRegisterOrder = localBundle.getBoolean("isNoRegisterOrder", true);
    if (!this.isNoRegisterOrder) {
      this.noRegisterOrderMobileNumber = localBundle.getString("MobileNumber");
    }
    this.isEasyBuy = localBundle.getBoolean("is_Easy_Buy");
    if (localBundle.containsKey("allowOnlinePay")) {
      this.allowOnlinePay = Boolean.valueOf(localBundle.getBoolean("allowOnlinePay"));
    }
    if (!this.isEasyBuy) {
      ShoppingController.syncCartNoResponse(this);
    }
  }
  
  private boolean isOnlinePay()
  {
    if (this.allowOnlinePay == null) {
      return "在线支付".equals(this.way);
    }
    return this.allowOnlinePay.booleanValue();
  }
  
  private boolean isShowPay()
  {
    return (!TextUtils.isEmpty(this.amount)) && (!TextUtils.equals(this.amount, "0"));
  }
  
  public Map<String, String> getParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("orderId", this.orderId);
    return localHashMap;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903105);
    noShowAgain();
    initData();
    initComponent();
    if (this.orderId != null) {
      this.mOrderNo.setText(this.orderId);
    }
    if (this.amount != null) {
      this.mPayMoney.setText(this.amount + "元");
    }
    if (this.way != null) {
      this.mPayWay.setText(this.way);
    }
    if (this.message != null) {
      this.mPayMsg.setText(this.message);
    }
    if ((isOnlinePay()) && (isShowPay())) {
      this.mCompleted.setText(2131165651);
    }
    Constants.skusOfSuites = null;
    handleClickEvent();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      CommonUtil.getInstance().backToHomePage(getBaseContext());
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.CompleteOrderActivity
 * JD-Core Version:    0.7.0.1
 */