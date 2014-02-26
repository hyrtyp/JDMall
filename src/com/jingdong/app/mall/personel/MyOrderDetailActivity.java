package com.jingdong.app.mall.personel;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.app.mall.utils.ui.DialogController;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.common.utils.pay.PayUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class MyOrderDetailActivity
  extends MyActivity
{
  private static final String FUNCTION = "function";
  private static final int REQUEST_CODE_DO_POST = 1;
  public static final int SURVEY_COMMENT = 1003;
  public static long mCancelTimestamp = 0L;
  private final String ORDER_FINISHED = "完成";
  private final String TAG = "MyOrderDetailActivity";
  private MySimpleAdapter adapter;
  private JSONObject adjustParam;
  ForegroundColorSpan blackColorSpan;
  Boolean cancleOrder = Boolean.valueOf(false);
  boolean flag_once = false;
  private String functionId;
  ForegroundColorSpan greyColorSpan;
  private LinearLayout info1;
  private LinearLayout info2;
  private LinearLayout info3;
  private LinearLayout info4;
  private LinearLayout info5;
  private Boolean isOnlinePay;
  int itemHeight = 0;
  private JSONObjectProxy jsonOrderDetail;
  private JSONArrayPoxy jsonOrderPriceDetail;
  AdapterView.OnItemClickListener listViewOnItemClickListener;
  private String mEntranceFunction = "";
  private Button mOrderCancelButton;
  private Button mOrderHandlerButton;
  private Product mProduct;
  private ListView mProductListView;
  ArrayList<Product> mProductlist;
  private JSONArrayPoxy mWareInfoList;
  private LinearLayout mainContent;
  private String orderId;
  private String orderStatus;
  private JSONObject params;
  Boolean postConfrimFlag = Boolean.valueOf(false);
  Boolean receiveConfrimFlag = Boolean.valueOf(false);
  private RelativeLayout satisfactionCommentLayout;
  private JSONObjectProxy satisfactionJson;
  LinearLayout.LayoutParams settelLeft = new LinearLayout.LayoutParams(-2, -2);
  LinearLayout.LayoutParams settelRight = new LinearLayout.LayoutParams(-1, -2);
  
  public MyOrderDetailActivity()
  {
    this.settelLeft.setMargins(DPIUtil.dip2px(10.0F), 0, 0, 0);
    this.settelRight.setMargins(0, 0, DPIUtil.dip2px(10.0F), 0);
    this.settelLeft.weight = 1.0F;
    this.settelRight.weight = 1.0F;
    this.listViewOnItemClickListener = new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        Product localProduct = (Product)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        StartActivityUtils.startProductDetailActivity(MyOrderDetailActivity.this, localProduct.getId(), null, new SourceEntity("oderMessage", null));
      }
    };
  }
  
  private void cancelOrder()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setPost(false);
    localHttpSetting.setFunctionId("cancleOrder");
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("orderId", this.orderId);
      localHttpSetting.setJsonParams(localJSONObject);
      final AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle(2131165922);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          if (paramAnonymousHttpResponse.getJSONObject() != null)
          {
            final String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("cancelInfo");
            if (!TextUtils.isEmpty(str)) {
              MyOrderDetailActivity.this.post(new Runnable()
              {
                public void run()
                {
                  this.val$alertDialogBuilder.setTitle(str);
                  this.val$alertDialogBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
                  {
                    public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                    {
                      try
                      {
                        if ((!TextUtils.isEmpty(this.val$message)) && (this.val$message.contains(MyOrderDetailActivity.this.getString(2131166149))))
                        {
                          MyOrderDetailActivity.this.mOrderCancelButton.setVisibility(8);
                          MyOrderDetailActivity.mCancelTimestamp = System.currentTimeMillis();
                          MyOrderDetailActivity.this.finish();
                        }
                        paramAnonymous3DialogInterface.dismiss();
                        return;
                      }
                      catch (Exception localException)
                      {
                        for (;;)
                        {
                          localException.printStackTrace();
                        }
                      }
                    }
                  });
                  this.val$alertDialogBuilder.show();
                }
              });
            }
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          MyOrderDetailActivity.this.post(new Runnable()
          {
            public void run()
            {
              this.val$alertDialogBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                {
                  paramAnonymous3DialogInterface.dismiss();
                }
              });
              this.val$alertDialogBuilder.setTitle(2131166147);
              this.val$alertDialogBuilder.show();
            }
          });
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
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
  
  private void changeSatisfactionState()
  {
    if (this.satisfactionCommentLayout != null) {
      this.satisfactionCommentLayout.setVisibility(8);
    }
    Toast.makeText(this, getString(2131166522), 0).show();
  }
  
  private void confrimGoods()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("confirm");
    localHttpSetting.putJsonParam("orderId", this.orderId);
    final AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131165866);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        Boolean localBoolean1 = localJSONObjectProxy.getBooleanOrNull("flag");
        final String str = localJSONObjectProxy.getStringOrNull("message");
        if (localBoolean1 == null) {
          if ((str == null) || (!str.contains(MyOrderDetailActivity.this.getString(2131166149)))) {
            break label78;
          }
        }
        label78:
        for (localBoolean1 = Boolean.valueOf(true);; localBoolean1 = Boolean.valueOf(false))
        {
          final Boolean localBoolean2 = localBoolean1;
          MyOrderDetailActivity.this.post(new Runnable()
          {
            public void run()
            {
              this.val$alertDialogBuilder.setMessage(str);
              this.val$alertDialogBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                {
                  Intent localIntent;
                  if (this.val$flagFinal.booleanValue())
                  {
                    MyOrderDetailActivity.this.mOrderHandlerButton.setVisibility(8);
                    MyOrderDetailActivity.this.finish();
                    if (!TextUtils.isEmpty(MyOrderDetailActivity.this.mEntranceFunction))
                    {
                      if (!"unfinishedOrder".equals(MyOrderDetailActivity.this.mEntranceFunction)) {
                        break label172;
                      }
                      localIntent = new Intent(MyOrderDetailActivity.this, MyOrderInfoListActivity.class);
                      localIntent.putExtra("title", MyOrderDetailActivity.this.getString(2131166319));
                      localIntent.putExtra("functionId", MyOrderDetailActivity.this.mEntranceFunction);
                      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
                      MyOrderDetailActivity.this.startActivityInFrame(localIntent);
                    }
                  }
                  for (;;)
                  {
                    paramAnonymous3DialogInterface.dismiss();
                    return;
                    label172:
                    localIntent = new Intent(MyOrderDetailActivity.this, MyOrderListActivity.class);
                    break;
                    MyOrderDetailActivity.this.mOrderHandlerButton.setClickable(true);
                  }
                }
              });
              this.val$alertDialogBuilder.show();
            }
          });
          return;
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        MyOrderDetailActivity.this.post(new Runnable()
        {
          public void run()
          {
            MyOrderDetailActivity.this.mOrderHandlerButton.setClickable(true);
            this.val$alertDialogBuilder.setMessage(2131165867);
            this.val$alertDialogBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
              {
                paramAnonymous3DialogInterface.dismiss();
              }
            });
            this.val$alertDialogBuilder.show();
          }
        });
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void doConfrimTakeGoods()
  {
    final DialogController local10 = new DialogController()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        }
        MyOrderDetailActivity.this.mOrderHandlerButton.setPressed(false);
        MyOrderDetailActivity.this.mOrderHandlerButton.setClickable(false);
        MyOrderDetailActivity.this.confrimGoods();
      }
    };
    local10.setTitle(getString(2131165609));
    local10.setMessage(getString(2131165868));
    local10.setPositiveButton(MyApplication.getInstance().getString(2131165517));
    local10.setNegativeButton(MyApplication.getInstance().getString(2131165601));
    local10.init(this);
    post(new Runnable()
    {
      public void run()
      {
        local10.show();
      }
    });
  }
  
  private void doOnlinePay()
  {
    PayUtils.doPay(MyApplication.getInstance().getCurrentMyActivity(), this.orderId);
  }
  
  private void doPostPayConfirm()
  {
    Intent localIntent = new Intent(getApplicationContext(), MyOrderPostPayConfirm.class);
    localIntent.putExtra("orderId", this.orderId);
    localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    putBooleanToPreference("post_order_confrim_flag", Boolean.valueOf(false));
    startActivityForResultNoException(localIntent, 1);
  }
  
  private View generatorSettleItem(ViewGroup.LayoutParams paramLayoutParams, String paramString, int paramInt)
  {
    String str = paramString.trim();
    TextView localTextView = new TextView(getBaseContext());
    localTextView.setText(str);
    localTextView.setLayoutParams(paramLayoutParams);
    localTextView.setGravity(paramInt);
    if (paramInt == 3) {
      localTextView.setTextColor(getResources().getColor(2131296285));
    }
    for (;;)
    {
      localTextView.setTextSize(12.0F);
      float f = localTextView.getPaint().measureText(str);
      if (f > paramLayoutParams.width) {
        paramLayoutParams.width = ((int)f);
      }
      return localTextView;
      localTextView.setTextColor(getResources().getColor(2131296283));
    }
  }
  
  private void getIntentInfo(Intent paramIntent)
  {
    this.params = new JSONObject();
    try
    {
      String str = getPreferences(0).getString("pin", "");
      this.mProduct = ((Product)paramIntent.getSerializableExtra("product"));
      if (this.mProduct != null) {}
      for (this.orderId = this.mProduct.getOrderId();; this.orderId = paramIntent.getStringExtra("orderId"))
      {
        this.params.put("pin", str);
        this.params.put("orderId", this.orderId);
        return;
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void getOrderInfo()
  {
    if (this.params.length() < 1) {
      return;
    }
    HttpGroup.OnAllListener local6 = new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        label611:
        for (;;)
        {
          try
          {
            MyOrderDetailActivity.this.jsonOrderDetail = localJSONObjectProxy.getJSONObjectOrNull("orderInfo");
            MyOrderDetailActivity.this.jsonOrderPriceDetail = localJSONObjectProxy.getJSONArrayOrNull("amountList");
            MyOrderDetailActivity.this.mWareInfoList = localJSONObjectProxy.getJSONArrayOrNull("wareInfoList");
            MyOrderDetailActivity.this.satisfactionJson = localJSONObjectProxy.getJSONObjectOrNull("publishMap");
          }
          catch (Exception localException1)
          {
            try
            {
              if ((MyOrderDetailActivity.this.mWareInfoList == null) || (MyOrderDetailActivity.this.mWareInfoList.length() < 1))
              {
                final AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(MyOrderDetailActivity.this);
                localBuilder1.setTitle(2131166110);
                localBuilder1.setMessage(2131166111);
                MyOrderDetailActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    localBuilder1.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
                    {
                      public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                      {
                        paramAnonymous3DialogInterface.dismiss();
                        MyOrderDetailActivity.this.finish();
                      }
                    });
                    localBuilder1.show();
                  }
                });
                return;
                localException1 = localException1;
                localException1.printStackTrace();
                continue;
              }
              if ((MyOrderDetailActivity.this.jsonOrderDetail == null) || (MyOrderDetailActivity.this.jsonOrderDetail.length() == 0))
              {
                final AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(MyOrderDetailActivity.this);
                localBuilder2.setTitle(2131165922);
                localBuilder2.setIcon(17301533);
                localBuilder2.setMessage(2131165863);
                localBuilder2.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    MyOrderDetailActivity.this.finish();
                  }
                });
                MyOrderDetailActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    localBuilder2.show();
                  }
                });
                return;
              }
            }
            catch (Exception localException2)
            {
              localException2.printStackTrace();
              return;
            }
            MyOrderDetailActivity.this.showOrderDetails();
            MyOrderDetailActivity.this.postConfrimFlag = MyOrderDetailActivity.this.jsonOrderDetail.getBooleanOrNull("confirmOrder");
            MyOrderDetailActivity.this.receiveConfrimFlag = MyOrderDetailActivity.this.jsonOrderDetail.getBooleanOrNull("confirmGoods");
            MyOrderDetailActivity.this.cancleOrder = MyOrderDetailActivity.this.jsonOrderDetail.getBooleanOrNull("cancleOrder");
            MyOrderDetailActivity.this.orderStatus = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("orderStatus");
            MyOrderDetailActivity.this.setOnlinePay(MyOrderDetailActivity.this.jsonOrderDetail.getBooleanOrNull("onlinePay"));
            if (MyOrderDetailActivity.this.satisfactionJson != null)
            {
              String str1 = MyOrderDetailActivity.this.satisfactionJson.getStringOrNull("isPublish");
              final String str2 = MyOrderDetailActivity.this.satisfactionJson.getStringOrNull("publishUrl");
              if ((!TextUtils.equals(str1, "0")) || (TextUtils.isEmpty(str2))) {
                break label495;
              }
              MyOrderDetailActivity.this.post(new Runnable()
              {
                public void run()
                {
                  MyOrderDetailActivity.this.satisfactionCommentLayout.setVisibility(0);
                }
              });
              MyOrderDetailActivity.this.satisfactionCommentLayout.setOnClickListener(new View.OnClickListener()
              {
                public void onClick(View paramAnonymous2View)
                {
                  URLParamMap localURLParamMap = new URLParamMap();
                  localURLParamMap.put("to", str2);
                  CommonUtil.queryBrowserUrl("to", localURLParamMap, new CommonBase.BrowserUrlListener()
                  {
                    public void onComplete(final String paramAnonymous3String)
                    {
                      MyOrderDetailActivity.this.post(new Runnable()
                      {
                        public void run()
                        {
                          Intent localIntent = new Intent(MyOrderDetailActivity.this, WebActivity.class);
                          localIntent.putExtra("url", paramAnonymous3String);
                          MyOrderDetailActivity.this.startActivityForResult(localIntent, 1003);
                        }
                      });
                    }
                  });
                }
              });
            }
          }
          if (MyOrderDetailActivity.this.isOnlinePay()) {
            MyOrderDetailActivity.this.post(new Runnable()
            {
              public void run()
              {
                MyOrderDetailActivity.this.mOrderHandlerButton.setVisibility(0);
                MyOrderDetailActivity.this.mOrderHandlerButton.setText(2131165651);
              }
            });
          }
          for (;;)
          {
            if ((MyOrderDetailActivity.this.cancleOrder == null) || (!MyOrderDetailActivity.this.cancleOrder.booleanValue())) {
              break label611;
            }
            MyOrderDetailActivity.this.post(new Runnable()
            {
              public void run()
              {
                MyOrderDetailActivity.this.mOrderCancelButton.setVisibility(0);
              }
            });
            return;
            label495:
            MyOrderDetailActivity.this.post(new Runnable()
            {
              public void run()
              {
                MyOrderDetailActivity.this.satisfactionCommentLayout.setVisibility(8);
              }
            });
            break;
            if ((MyOrderDetailActivity.this.postConfrimFlag != null) && (MyOrderDetailActivity.this.postConfrimFlag.booleanValue())) {
              MyOrderDetailActivity.this.post(new Runnable()
              {
                public void run()
                {
                  MyOrderDetailActivity.this.mOrderHandlerButton.setVisibility(0);
                  MyOrderDetailActivity.this.mOrderHandlerButton.setText(2131165871);
                }
              });
            } else if ((MyOrderDetailActivity.this.receiveConfrimFlag != null) && (MyOrderDetailActivity.this.receiveConfrimFlag.booleanValue())) {
              MyOrderDetailActivity.this.post(new Runnable()
              {
                public void run()
                {
                  MyOrderDetailActivity.this.mOrderHandlerButton.setVisibility(0);
                  MyOrderDetailActivity.this.mOrderHandlerButton.setText(2131165866);
                }
              });
            } else {
              MyOrderDetailActivity.this.post(new Runnable()
              {
                public void run()
                {
                  MyOrderDetailActivity.this.mOrderHandlerButton.setVisibility(8);
                }
              });
            }
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(this.functionId);
    try
    {
      if (this.params != null) {
        this.params.put("isPublish", true);
      }
      localHttpSetting.setJsonParams(this.params);
      localHttpSetting.setListener(local6);
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
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
  
  private void initComponent(Intent paramIntent)
  {
    EditTextUtils.setTextViewText((TextView)findViewById(2131492990), paramIntent, getString(2131165929));
    this.mainContent = ((LinearLayout)findViewById(2131493915));
    this.info1 = ((LinearLayout)findViewById(2131493918));
    this.info2 = ((LinearLayout)findViewById(2131493924));
    this.info3 = ((LinearLayout)findViewById(2131493926));
    this.info4 = ((LinearLayout)findViewById(2131493927));
    this.info5 = ((LinearLayout)findViewById(2131493928));
    this.satisfactionCommentLayout = ((RelativeLayout)findViewById(2131493920));
    this.mOrderHandlerButton = ((Button)findViewById(2131493965));
    this.mOrderCancelButton = ((Button)findViewById(2131494684));
    this.mOrderCancelButton.setText(2131165890);
    this.mOrderCancelButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        MyOrderDetailActivity.this.mOrderCancelButton.setClickable(false);
        MyOrderDetailActivity.this.mOrderCancelButton.postDelayed(new Runnable()
        {
          public void run()
          {
            MyOrderDetailActivity.this.mOrderCancelButton.setClickable(true);
          }
        }, 1000L);
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(MyOrderDetailActivity.this);
        localBuilder.setTitle(2131165890);
        localBuilder.setMessage(2131165764);
        localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface.dismiss();
            MyOrderDetailActivity.this.cancelOrder();
          }
        });
        localBuilder.setNegativeButton(2131165601, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localBuilder.show();
      }
    });
  }
  
  private void initSettleView(ViewGroup paramViewGroup, String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {
      paramString1 = "";
    }
    if (paramString2 == null) {
      paramString2 = "";
    }
    if (paramString3 == null) {
      paramString3 = "";
    }
    LinearLayout localLinearLayout = new LinearLayout(getBaseContext());
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    localLinearLayout.setPadding(5, 5, 5, 5);
    localLinearLayout.setOrientation(0);
    localLinearLayout.addView(generatorSettleItem(this.settelLeft, paramString1, 3));
    localLinearLayout.addView(generatorSettleItem(this.settelRight, paramString2 + getString(2131165822, new Object[] { paramString3 }), 5));
    paramViewGroup.addView(localLinearLayout);
  }
  
  private boolean isOnlinePay()
  {
    if (this.isOnlinePay == null) {
      return false;
    }
    return this.isOnlinePay.booleanValue();
  }
  
  private void setOnlinePay(Boolean paramBoolean)
  {
    this.isOnlinePay = paramBoolean;
  }
  
  private void setOrderDetailInfo()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (MyOrderDetailActivity.this.jsonOrderDetail != null) {}
        for (;;)
        {
          int i;
          TextView localTextView6;
          View localView1;
          TextView localTextView12;
          View localView2;
          try
          {
            MyOrderDetailActivity.this.mainContent.setVisibility(0);
            MyOrderDetailActivity.this.greyColorSpan = new ForegroundColorSpan(MyOrderDetailActivity.this.getResources().getColor(2131296297));
            MyOrderDetailActivity.this.blackColorSpan = new ForegroundColorSpan(MyOrderDetailActivity.this.getResources().getColor(17170444));
            String str1 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("shouldPay");
            String str2 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("customerName");
            String str3 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("mobile");
            if ((str3 != null) && (!"".equals(str3))) {
              str3 = str3.trim();
            }
            String str4 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("address");
            String str5 = MyOrderDetailActivity.this.getString(2131166310);
            String str6 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("paymentType");
            String str7 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("pickSiteAddress");
            String str8 = MyOrderDetailActivity.this.getString(2131166309);
            String str9 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("carrier");
            String str10 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("sendTime");
            String str11 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("sendTip");
            String str12 = MyOrderDetailActivity.this.getString(2131165957);
            String str13 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("invoiceType");
            ((TextView)MyOrderDetailActivity.this.info1.findViewById(2131493949)).setText(MyOrderDetailActivity.this.getString(2131165822, new Object[] { str1 }));
            if (MyOrderDetailActivity.this.jsonOrderPriceDetail != null)
            {
              i = 0;
              int j = MyOrderDetailActivity.this.jsonOrderPriceDetail.length();
              if (i < j) {}
            }
            else
            {
              TextView localTextView1 = (TextView)MyOrderDetailActivity.this.info2.findViewById(2131493888);
              TextView localTextView2 = (TextView)MyOrderDetailActivity.this.info2.findViewById(2131493889);
              TextView localTextView3 = (TextView)MyOrderDetailActivity.this.info2.findViewById(2131493891);
              localTextView1.setText(str2);
              localTextView2.setText(str3);
              localTextView3.setText(str4);
              TextView localTextView4 = (TextView)MyOrderDetailActivity.this.info3.findViewById(2131493888);
              TextView localTextView5 = (TextView)MyOrderDetailActivity.this.info3.findViewById(2131493889);
              localTextView6 = (TextView)MyOrderDetailActivity.this.info3.findViewById(2131493891);
              localView1 = MyOrderDetailActivity.this.info3.findViewById(2131493890);
              localTextView4.setText(str5);
              localTextView5.setText(str6);
              if (!MyOrderDetailActivity.this.getString(2131166317).equals(str6)) {
                break label949;
              }
              localTextView6.setText(MyOrderDetailActivity.this.getString(2131165939) + str7);
              TextView localTextView7 = (TextView)MyOrderDetailActivity.this.info4.findViewById(2131493888);
              TextView localTextView8 = (TextView)MyOrderDetailActivity.this.info4.findViewById(2131493889);
              TextView localTextView9 = (TextView)MyOrderDetailActivity.this.info4.findViewById(2131493891);
              localTextView7.setText(str8);
              localTextView8.setText(str9);
              localTextView9.setText(str10 + "\n" + str11);
              if (!TextUtils.equals(MyOrderDetailActivity.this.getString(2131166317), str6)) {
                break label966;
              }
              MyOrderDetailActivity.this.info4.setVisibility(8);
              TextView localTextView10 = (TextView)MyOrderDetailActivity.this.info5.findViewById(2131493888);
              TextView localTextView11 = (TextView)MyOrderDetailActivity.this.info5.findViewById(2131493889);
              localTextView12 = (TextView)MyOrderDetailActivity.this.info5.findViewById(2131493891);
              localView2 = MyOrderDetailActivity.this.info5.findViewById(2131493890);
              localTextView10.setText(str12);
              localTextView11.setText(str13);
              if (MyOrderDetailActivity.this.getString(2131166318).equals(str13)) {
                break label980;
              }
              String str17 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("invoiceContent");
              String str18 = MyOrderDetailActivity.this.jsonOrderDetail.getStringOrNull("invoiceTitle");
              StringBuffer localStringBuffer = new StringBuffer();
              localStringBuffer.append(MyOrderDetailActivity.this.getString(2131165959)).append(str18).append("\n").append(MyOrderDetailActivity.this.getString(2131165960)).append(str17);
              localTextView12.setText(localStringBuffer.toString());
              return;
            }
            JSONObjectProxy localJSONObjectProxy = MyOrderDetailActivity.this.jsonOrderPriceDetail.getJSONObjectOrNull(i);
            if (localJSONObjectProxy == null) {
              break label995;
            }
            String str14 = localJSONObjectProxy.getStringOrNull("label");
            if (TextUtils.isEmpty(str14)) {
              break label995;
            }
            String str15 = localJSONObjectProxy.getStringOrNull("value");
            if (TextUtils.isEmpty(str15)) {
              str15 = "";
            }
            String str16 = localJSONObjectProxy.getStringOrNull("operator");
            if (str16 == null) {
              str16 = "";
            }
            MyOrderDetailActivity.this.initSettleView(MyOrderDetailActivity.this.info1, str14, str16, str15);
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
          label949:
          localView1.setVisibility(8);
          localTextView6.setVisibility(8);
          continue;
          label966:
          MyOrderDetailActivity.this.info4.setVisibility(0);
          continue;
          label980:
          localView2.setVisibility(8);
          localTextView12.setVisibility(8);
          return;
          label995:
          i++;
        }
      }
    });
  }
  
  private void setOrderStatus()
  {
    TextView localTextView1 = (TextView)findViewById(2131493962);
    TextView localTextView2 = (TextView)findViewById(2131493964);
    localTextView1.setText(this.jsonOrderDetail.getStringOrNull("orderStatus"));
    localTextView2.setText(this.orderId);
    this.mOrderHandlerButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (MyOrderDetailActivity.this.getString(2131165651).equals(MyOrderDetailActivity.this.mOrderHandlerButton.getText()))
        {
          MyOrderDetailActivity.this.doOnlinePay();
          return;
        }
        if (MyOrderDetailActivity.this.getString(2131165871).equals(MyOrderDetailActivity.this.mOrderHandlerButton.getText()))
        {
          MyOrderDetailActivity.this.doPostPayConfirm();
          return;
        }
        MyOrderDetailActivity.this.doConfrimTakeGoods();
      }
    });
  }
  
  private void setProductList()
  {
    this.mProductListView = ((ListView)findViewById(2131493919));
    final ViewGroup.LayoutParams localLayoutParams = this.mProductListView.getLayoutParams();
    this.adapter = new MySimpleAdapter(this, this.mProductlist, 2130903225, new String[] { "imageUrl" }, new int[] { 2131493041 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        TextView localTextView1 = (TextView)localView.findViewById(2131493988);
        final Product localProduct = (Product)getItem(paramAnonymousInt);
        localTextView1.setText(localProduct.getName());
        TextView localTextView2 = (TextView)localView.findViewById(2131493989);
        MyOrderDetailActivity localMyOrderDetailActivity = MyOrderDetailActivity.this;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localProduct.getNum();
        localTextView2.setText(localMyOrderDetailActivity.getString(2131165861, arrayOfObject));
        if (TextUtils.equals(MyOrderDetailActivity.this.orderStatus, "完成"))
        {
          ((RelativeLayout)localView.findViewById(2131493292)).setVisibility(0);
          Button localButton1 = (Button)localView.findViewById(2131493294);
          Button localButton2 = (Button)localView.findViewById(2131493293);
          View.OnClickListener local1 = new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              Intent localIntent = new Intent();
              localIntent.putExtra("product", localProduct);
              MyOrderDetailActivity.this.adjustParam = MyOrderDetailActivity.this.params;
              try
              {
                MyOrderDetailActivity.this.adjustParam.put("wareId", String.valueOf(localProduct.getId()));
                MyOrderDetailActivity.this.adjustParam.put("orderId", MyOrderDetailActivity.this.orderId);
                switch (paramAnonymous2View.getId())
                {
                default: 
                  return;
                }
              }
              catch (JSONException localJSONException1)
              {
                for (;;)
                {
                  localJSONException1.printStackTrace();
                }
                try
                {
                  MyOrderDetailActivity.this.adjustParam.put("type", "1");
                  MyCommentDiscussActivity.adjustOrder(MyOrderDetailActivity.this, localIntent, 1, localProduct, MyOrderDetailActivity.this.adjustParam);
                  return;
                }
                catch (JSONException localJSONException3)
                {
                  for (;;)
                  {
                    localJSONException3.printStackTrace();
                  }
                }
              }
              try
              {
                MyOrderDetailActivity.this.adjustParam.put("type", "2");
                MyCommentDiscussActivity.adjustOrder(MyOrderDetailActivity.this, localIntent, 2, localProduct, MyOrderDetailActivity.this.adjustParam);
                return;
              }
              catch (JSONException localJSONException2)
              {
                for (;;)
                {
                  localJSONException2.printStackTrace();
                }
              }
            }
          };
          String str1 = localProduct.getHasComment();
          if (!TextUtils.isEmpty(str1))
          {
            localButton2.setText(str1);
            localButton2.setEnabled(false);
          }
          for (;;)
          {
            String str2 = localProduct.getHasDiscuss();
            if (TextUtils.isEmpty(str2)) {
              break;
            }
            localButton1.setText(str2);
            localButton1.setEnabled(false);
            return localView;
            localButton2.setOnClickListener(local1);
            localButton2.setEnabled(true);
            localButton2.setText(2131166058);
          }
          localButton1.setOnClickListener(local1);
          localButton1.setEnabled(true);
          localButton1.setText(2131166055);
          return localView;
        }
        ((RelativeLayout)localView.findViewById(2131493292)).setVisibility(8);
        return localView;
      }
    };
    this.mProductListView.setAdapter(this.adapter);
    this.mProductListView.setOnItemClickListener(this.listViewOnItemClickListener);
    post(new Runnable()
    {
      public void run()
      {
        if (MyOrderDetailActivity.this.mProductListView.getChildCount() > 0)
        {
          int i = MyOrderDetailActivity.this.mProductListView.getChildAt(0).getMeasuredHeight();
          int j = MyOrderDetailActivity.this.mProductListView.getDividerHeight();
          localLayoutParams.height = ((i + j) * MyOrderDetailActivity.this.mProductlist.size());
          MyOrderDetailActivity.this.mProductListView.invalidate();
        }
      }
    });
  }
  
  private void showOrderDetails()
  {
    setOrderDetailInfo();
    post(new Runnable()
    {
      public void run()
      {
        MyOrderDetailActivity.this.setOrderStatus();
      }
    });
    this.mProductlist = Product.toList(this.mWareInfoList, 6);
    post(new Runnable()
    {
      public void run()
      {
        MyOrderDetailActivity.this.setProductList();
      }
    });
  }
  
  public Map<String, String> getParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("orderId", this.orderId);
    return localHashMap;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 == -1)
      {
        getOrderInfo();
        continue;
        if (paramInt2 == -1)
        {
          getOrderInfo();
          continue;
          if (paramInt2 == -1) {
            changeSatisfactionState();
          }
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903214);
    Intent localIntent = getIntent();
    this.functionId = "newOrderInfo";
    this.adjustParam = new JSONObject();
    this.mEntranceFunction = localIntent.getStringExtra("function");
    getIntentInfo(localIntent);
    initComponent(localIntent);
    getOrderInfo();
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((this.adapter != null) && (this.mProductListView != null)) {
      this.mProductListView.setAdapter(this.adapter);
    }
  }
  
  public void onStart()
  {
    super.onStart();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyOrderDetailActivity
 * JD-Core Version:    0.7.0.1
 */