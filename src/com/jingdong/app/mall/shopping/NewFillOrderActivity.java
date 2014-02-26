package com.jingdong.app.mall.shopping;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver;
import com.jingdong.app.mall.ime.JDInputMethod;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ui.DialogController;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.controller.NewFillOrderController;
import com.jingdong.common.controller.NewFillOrderController.NewFillOrderListener;
import com.jingdong.common.entity.BigHouseholdappliancesInfo;
import com.jingdong.common.entity.CouponInfo;
import com.jingdong.common.entity.GiftCartInfo;
import com.jingdong.common.entity.InvoiceInfo;
import com.jingdong.common.entity.NewCurrentOrder;
import com.jingdong.common.entity.NewCurrentOrderPriceItem;
import com.jingdong.common.entity.PaymentInfo;
import com.jingdong.common.entity.SubmitOrderInfo;
import com.jingdong.common.entity.UsedBalance;
import com.jingdong.common.entity.UsedJdbean;
import com.jingdong.common.entity.UserInfo;
import com.jingdong.common.entity.YouHuiQuan;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.DialogUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.Md5Encrypt;
import com.jingdong.common.utils.ToastUtils;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.common.utils.pay.PayUtils;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONObject;

public class NewFillOrderActivity
  extends MyActivity
{
  public static final int ADD_ADDR_CODE = 2;
  public static final String EXTRA_NEW_CURRENT_ORDER = "ExtraNewCurrentOrder";
  public static final String INTENT_EXTRA_SELECTED_CART = "selectedCartResponseInfo";
  public static final int MODIFY_ADDR_CODE = 1;
  public static final int MODIFY_INVOINCE_CODE = 4;
  public static final int MODIFY_PAYMENT_CODE = 3;
  public static final int MODIFY_YOU_HUI_CODE = 5;
  public static final String TAG = NewFillOrderActivity.class.getSimpleName();
  public static CartResponseInfo cartResponseInfo;
  private final String RMB = "元";
  private Context context = null;
  private ArrayList<EditText> defrayEtArray = new ArrayList();
  private LinearLayout defray_passwork_input_layout = null;
  private ArrayList<JDInputMethod> inputmethodArray = new ArrayList();
  private boolean isCouponsGiftCompleted;
  private Button mButtonSubmit;
  private CheckBox mCheckboxBalance;
  private CheckBox mCheckboxJdbean;
  private NewFillOrderController mController;
  private EditText mEditTextMarkContent;
  private LinearLayout mLayoutBalance;
  private LinearLayout mLayoutCalcInfo;
  private RelativeLayout mLayoutCashDeliverPayInfo;
  private LinearLayout mLayoutDefaryPassword;
  private RelativeLayout mLayoutInvoiceEmpty;
  private RelativeLayout mLayoutInvoiceInfo;
  private LinearLayout mLayoutJdbean;
  private RelativeLayout mLayoutMark;
  private RelativeLayout mLayoutPaymentEmpty;
  private RelativeLayout mLayoutPaymentInfo;
  private RelativeLayout mLayoutPaymentPostInfo;
  private RelativeLayout mLayoutProductInventory;
  private RelativeLayout mLayoutReceiverEmpty;
  private RelativeLayout mLayoutReceiverInfo;
  private RelativeLayout mLayoutSelfInfo;
  private LinearLayout mLayoutSettleContent;
  private RelativeLayout mLayoutShipmentInfo;
  private RelativeLayout mLayoutSubmit;
  private RelativeLayout mLayoutYouhuiContent;
  private NewCurrentOrder mNewCurrentOrder = new NewCurrentOrder();
  private NewFillOrderController.NewFillOrderListener mNewFillOrderListener = new NewFillOrderController.NewFillOrderListener()
  {
    public void onFinish(NewCurrentOrder paramAnonymousNewCurrentOrder, int paramAnonymousInt, boolean paramAnonymousBoolean)
    {
      switch (paramAnonymousInt)
      {
      }
      do
      {
        do
        {
          return;
        } while ((!paramAnonymousBoolean) || (NewFillOrderActivity.this.mNewCurrentOrder == null));
        NewFillOrderActivity.this.post(new Runnable()
        {
          public void run()
          {
            NewFillOrderActivity.this.showAllPage();
          }
        });
        return;
        NewFillOrderActivity.this.isCouponsGiftCompleted = true;
        NewFillOrderActivity.this.showYouHuiView();
        return;
        if (paramAnonymousBoolean)
        {
          NewFillOrderActivity.this.messageAfterSubmit();
          return;
        }
      } while (TextUtils.isEmpty(NewFillOrderActivity.this.mNewCurrentOrder.getSubmitOrderInfo().getCaptchaUrl()));
      new CaptchaDialogController(NewFillOrderActivity.this.mNewCurrentOrder.getSubmitOrderInfo().getCaptchaUrl(), NewFillOrderActivity.this.mNewCurrentOrder.getSubmitOrderInfo().getMessage())
      {
        protected void submit(String paramAnonymous2String1, String paramAnonymous2String2)
        {
          NewFillOrderActivity.this.mNewCurrentOrder.getSubmitOrderInfo().setCaptchaCode(paramAnonymous2String1);
          NewFillOrderActivity.this.mNewCurrentOrder.getSubmitOrderInfo().setCaptchaKey(paramAnonymous2String2);
          NewFillOrderActivity.this.mController.submitOrder(NewFillOrderActivity.this.mNewFillOrderListener);
        }
      };
    }
  };
  private SelectPaymentTypeActivity.PromiseTime mPromiseTime;
  private ScrollView mScrollView;
  private TextView mTextViewBalance;
  private TextView mTextViewCashDeliveryPayTypeContent;
  private TextView mTextViewFinalPriceTv;
  private TextView mTextViewInvoiceContentNoBookDetail;
  private TextView mTextViewInvoiceContentWithBookDetail;
  private TextView mTextViewInvoiceTitle;
  private TextView mTextViewInvoiceTypeContent;
  private TextView mTextViewInvoincHeadTitleContent;
  private TextView mTextViewJdbean;
  private TextView mTextViewPaymentPostCustomerIdContent;
  private TextView mTextViewPaymentPostPayeeContnet;
  private TextView mTextViewPaymentTitle;
  private TextView mTextViewPaymentTypeContent;
  private TextView mTextViewPriceDifferentRemind;
  private TextView mTextViewReceiverAddressContent;
  private TextView mTextViewReceiverMobileContent;
  private TextView mTextViewReceiverNameContent;
  private TextView mTextViewReceiverTitle;
  private TextView mTextViewReturnCart;
  private TextView mTextViewSelectPayOnline;
  private TextView mTextViewSelfAddressContent;
  private TextView mTextViewSelfNameContent;
  private TextView mTextViewShipmentPhoneConfirm;
  private TextView mTextViewShipmentPhoneConfirmContent;
  private TextView mTextViewShipmentShipmentBit;
  private TextView mTextViewShipmentShipmentBitContent;
  private TextView mTextViewShipmentShiptime;
  private TextView mTextViewShipmentShiptimeContent;
  private TextView mTextViewShipmentTypeContent;
  private TextView mTextViewTitle;
  private TextView mTextViewYouhuiContent;
  private TextView mTextViewYouhuiTitle;
  private TextView payPasswordBtn;
  private TextView payPasswordView;
  private LinearLayout pay_password_open_find_layout = null;
  private String priceDifferentTips;
  private final LinearLayout.LayoutParams settelCommonParms = new LinearLayout.LayoutParams(-2, -2);
  private final LinearLayout.LayoutParams settelValueParms = new LinearLayout.LayoutParams(-2, -2);
  private final int settlePadding = DPIUtil.dip2px(5.0F);
  
  public NewFillOrderActivity()
  {
    int i = DPIUtil.getWidth();
    this.settelCommonParms.width = (i / 5);
    this.settelValueParms.leftMargin = (i / 10);
  }
  
  private void appendPromistTime()
  {
    if ((this.mPromiseTime != null) && (this.mPromiseTime.isVisibility())) {
      try
      {
        this.mNewCurrentOrder.setPromiseType(Integer.valueOf(this.mPromiseTime.promiseType));
        this.mNewCurrentOrder.setPromiseSendPay(this.mPromiseTime.promiseSendPay);
        if (this.mPromiseTime.localType == 311)
        {
          this.mNewCurrentOrder.setPromiseDate(this.mPromiseTime.promiseDate);
          this.mNewCurrentOrder.setPromiseTimeRange(this.mPromiseTime.promiseTimeRange);
        }
        for (;;)
        {
          this.mPromiseTime.isUploading = true;
          return;
          this.mNewCurrentOrder.setPromiseDate(null);
          this.mNewCurrentOrder.setPromiseTimeRange(null);
        }
        this.mNewCurrentOrder.setPromiseType(null);
      }
      catch (Exception localException)
      {
        this.mPromiseTime.isUploading = false;
        return;
      }
    }
    this.mNewCurrentOrder.setPromiseSendPay(null);
    this.mNewCurrentOrder.setPromiseDate(null);
    this.mNewCurrentOrder.setPromiseTimeRange(null);
  }
  
  private void findViews()
  {
    this.mScrollView = ((ScrollView)findViewById(2131493339));
    this.mTextViewTitle = ((TextView)findViewById(2131492990));
    this.mTextViewTitle.setText(2131165969);
    this.mTextViewReceiverTitle = ((TextView)findViewById(2131493820));
    this.mTextViewReceiverNameContent = ((TextView)findViewById(2131493825));
    this.mTextViewReceiverMobileContent = ((TextView)findViewById(2131493828));
    this.mTextViewReceiverAddressContent = ((TextView)findViewById(2131493830));
    this.mTextViewPaymentTitle = ((TextView)findViewById(2131493831));
    this.mTextViewPaymentTypeContent = ((TextView)findViewById(2131493836));
    this.mTextViewSelfNameContent = ((TextView)findViewById(2131493839));
    this.mTextViewSelfAddressContent = ((TextView)findViewById(2131493841));
    this.mTextViewShipmentTypeContent = ((TextView)findViewById(2131493844));
    this.mTextViewShipmentShiptime = ((TextView)findViewById(2131493845));
    this.mTextViewShipmentShiptimeContent = ((TextView)findViewById(2131493846));
    this.mTextViewShipmentShipmentBit = ((TextView)findViewById(2131493847));
    this.mTextViewShipmentShipmentBitContent = ((TextView)findViewById(2131493848));
    this.mTextViewShipmentPhoneConfirm = ((TextView)findViewById(2131493849));
    this.mTextViewShipmentPhoneConfirmContent = ((TextView)findViewById(2131493850));
    this.mTextViewCashDeliveryPayTypeContent = ((TextView)findViewById(2131493853));
    this.mTextViewPaymentPostCustomerIdContent = ((TextView)findViewById(2131493858));
    this.mTextViewPaymentPostPayeeContnet = ((TextView)findViewById(2131493860));
    this.mTextViewInvoiceTitle = ((TextView)findViewById(2131493861));
    this.mTextViewInvoiceTypeContent = ((TextView)findViewById(2131493865));
    this.mTextViewInvoincHeadTitleContent = ((TextView)findViewById(2131493867));
    this.mTextViewInvoiceContentWithBookDetail = ((TextView)findViewById(2131493870));
    this.mTextViewInvoiceContentNoBookDetail = ((TextView)findViewById(2131493872));
    this.mTextViewYouhuiTitle = ((TextView)findViewById(2131493873));
    this.mTextViewYouhuiContent = ((TextView)findViewById(2131493875));
    this.mTextViewBalance = ((TextView)findViewById(2131493877));
    this.mCheckboxBalance = ((CheckBox)findViewById(2131493401));
    this.mTextViewJdbean = ((TextView)findViewById(2131493878));
    this.mCheckboxJdbean = ((CheckBox)findViewById(2131493404));
    this.mEditTextMarkContent = ((EditText)findViewById(2131493880));
    this.mTextViewSelectPayOnline = ((TextView)findViewById(2131493414));
    this.mTextViewFinalPriceTv = ((TextView)findViewById(2131493426));
    this.mTextViewPriceDifferentRemind = ((TextView)findViewById(2131493819));
    this.mTextViewReturnCart = ((TextView)findViewById(2131493881));
    this.mLayoutReceiverEmpty = ((RelativeLayout)findViewById(2131493821));
    this.mLayoutReceiverInfo = ((RelativeLayout)findViewById(2131493823));
    this.mLayoutPaymentEmpty = ((RelativeLayout)findViewById(2131493832));
    this.mLayoutPaymentInfo = ((RelativeLayout)findViewById(2131493834));
    this.mLayoutPaymentPostInfo = ((RelativeLayout)findViewById(2131493854));
    this.mLayoutInvoiceEmpty = ((RelativeLayout)findViewById(2131493862));
    this.mLayoutInvoiceInfo = ((RelativeLayout)findViewById(2131493863));
    this.mLayoutYouhuiContent = ((RelativeLayout)findViewById(2131493874));
    this.mLayoutBalance = ((LinearLayout)findViewById(2131493400));
    this.mLayoutJdbean = ((LinearLayout)findViewById(2131493402));
    this.mLayoutMark = ((RelativeLayout)findViewById(2131493879));
    this.mLayoutProductInventory = ((RelativeLayout)findViewById(2131493882));
    this.mLayoutCalcInfo = ((LinearLayout)findViewById(2131493884));
    this.mLayoutCashDeliverPayInfo = ((RelativeLayout)findViewById(2131493851));
    this.mLayoutShipmentInfo = ((RelativeLayout)findViewById(2131493842));
    this.mLayoutSelfInfo = ((RelativeLayout)findViewById(2131493837));
    this.mLayoutSettleContent = ((LinearLayout)findViewById(2131493357));
    this.mLayoutSubmit = ((RelativeLayout)findViewById(2131493425));
    this.mButtonSubmit = ((Button)findViewById(2131493358));
    this.mLayoutDefaryPassword = ((LinearLayout)findViewById(2131493883));
    this.defray_passwork_input_layout = ((LinearLayout)findViewById(2131493409));
    this.pay_password_open_find_layout = ((LinearLayout)findViewById(2131493410));
    this.payPasswordView = ((TextView)findViewById(2131493411));
    this.payPasswordBtn = ((TextView)findViewById(2131493412));
  }
  
  private View generatorSettleItem(LinearLayout.LayoutParams paramLayoutParams, String paramString, int paramInt)
  {
    String str = paramString.trim();
    TextView localTextView = new TextView(getBaseContext());
    localTextView.setText(str);
    localTextView.setLayoutParams(paramLayoutParams);
    localTextView.setGravity(paramInt);
    localTextView.setTextColor(-12303292);
    float f = localTextView.getPaint().measureText(str);
    if (f > paramLayoutParams.width) {
      paramLayoutParams.width = ((int)f);
    }
    return localTextView;
  }
  
  private void handleClickEvent()
  {
    View.OnClickListener local5 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        com.jingdong.common.entity.LastOrderInfo.mUserInfo = NewFillOrderActivity.this.mNewCurrentOrder.toOldModelForUserInfo();
        Intent localIntent = new Intent(NewFillOrderActivity.this, EditOrderAddressListActivity.class);
        NewFillOrderActivity.this.startActivityForResult(localIntent, 1);
      }
    };
    this.mLayoutReceiverInfo.setOnClickListener(local5);
    this.mLayoutReceiverEmpty.setOnClickListener(local5);
    View.OnClickListener local6 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(NewFillOrderActivity.this, SelectPaymentTypeActivity.class);
        com.jingdong.common.entity.LastOrderInfo.mUserInfo = NewFillOrderActivity.this.mNewCurrentOrder.toOldModelForUserInfo();
        com.jingdong.common.entity.LastOrderInfo.mPaymentInfo = NewFillOrderActivity.this.mNewCurrentOrder.toOldModelForPaymentInfo();
        BigHouseholdappliancesInfo localBigHouseholdappliancesInfo = new BigHouseholdappliancesInfo();
        localBigHouseholdappliancesInfo.setName(NewFillOrderActivity.this.mNewCurrentOrder.getBigItemCodDateName());
        localBigHouseholdappliancesInfo.setValue(NewFillOrderActivity.this.mNewCurrentOrder.getBigItemCodDateValue());
        localIntent.putExtra("selectBigitem", localBigHouseholdappliancesInfo);
        localIntent.putExtra("pin", NewFillOrderActivity.this.mNewCurrentOrder.getPin());
        localIntent.putExtra("PromiseTime", NewFillOrderActivity.this.mPromiseTime);
        if (NewFillOrderActivity.this.mNewCurrentOrder.getIdPickSite() != null) {
          localIntent.putExtra("IdPickSite", NewFillOrderActivity.this.mNewCurrentOrder.getIdPickSite());
        }
        NewFillOrderActivity.this.startActivityForResult(localIntent, 3);
      }
    };
    this.mLayoutPaymentInfo.setOnClickListener(local6);
    this.mLayoutPaymentEmpty.setOnClickListener(local6);
    View.OnClickListener local7 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(NewFillOrderActivity.this, ReceiptInfoEditNewActivity.class);
        localIntent.putExtra("ExtraNewCurrentOrder", NewFillOrderActivity.this.mNewCurrentOrder);
        NewFillOrderActivity.this.startActivityForResult(localIntent, 4);
      }
    };
    this.mLayoutInvoiceInfo.setOnClickListener(local7);
    this.mLayoutInvoiceEmpty.setOnClickListener(local7);
    this.mLayoutYouhuiContent.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (!NewFillOrderActivity.this.isCouponsGiftCompleted)
        {
          NewFillOrderActivity.this.mLayoutYouhuiContent.setClickable(false);
          ToastUtils.showToast(NewFillOrderActivity.this, NewFillOrderActivity.this.getString(2131166446));
          new Timer().schedule(new TimerTask()
          {
            public void run()
            {
              NewFillOrderActivity.this.mLayoutYouhuiContent.setClickable(true);
            }
          }, 2000L);
          return;
        }
        NewFillOrderActivity.this.toPageEditYouHuiLipinActivity();
      }
    });
    this.mTextViewReturnCart.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        NewFillOrderActivity.this.finish();
      }
    });
    this.mLayoutProductInventory.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(NewFillOrderActivity.this.context, OrderCommodityActivity.class);
        NewFillOrderActivity.this.startActivity(localIntent);
      }
    });
    this.mButtonSubmit.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        NewFillOrderActivity.this.hideInputKey();
        int i = 0;
        if (i >= NewFillOrderActivity.this.defrayEtArray.size()) {}
        for (int j = 0;; j++)
        {
          if (j >= NewFillOrderActivity.this.defrayEtArray.size())
          {
            NewFillOrderActivity.this.mButtonSubmit.setClickable(false);
            new Thread()
            {
              public void run()
              {
                try
                {
                  Thread.sleep(3000L);
                  NewFillOrderActivity.this.mButtonSubmit.setClickable(true);
                  return;
                }
                catch (InterruptedException localInterruptedException) {}
              }
            }.start();
            if (NewFillOrderActivity.this.mEditTextMarkContent.getVisibility() == 0) {
              NewFillOrderActivity.this.mNewCurrentOrder.setRemark(NewFillOrderActivity.this.mEditTextMarkContent.getText().toString());
            }
            NewFillOrderActivity.this.submitOrder();
            return;
            EditText localEditText1 = (EditText)NewFillOrderActivity.this.defrayEtArray.get(i);
            if (localEditText1.getText().toString().trim().length() <= 0)
            {
              localEditText1.startAnimation(AnimationUtils.loadAnimation(NewFillOrderActivity.this.context, 2130968592));
              localEditText1.requestFocus();
              return;
            }
            i++;
            break;
          }
          EditText localEditText2 = (EditText)NewFillOrderActivity.this.defrayEtArray.get(j);
          String str1 = localEditText2.getTag().toString();
          String str2 = localEditText2.getText().toString().trim();
          if ((str1 != null) && (str2 != null) && (str1.length() > 0) && (str2.length() > 0))
          {
            NewFillOrderActivity.this.mNewCurrentOrder.setPayPasswordKey(str1);
            NewFillOrderActivity.this.mNewCurrentOrder.setPayPasswordValue(Md5Encrypt.md5(str2));
          }
        }
      }
    });
  }
  
  private void hideInputKey()
  {
    for (int i = 0;; i++)
    {
      if (i >= this.inputmethodArray.size()) {
        return;
      }
      JDInputMethod localJDInputMethod = (JDInputMethod)this.inputmethodArray.get(i);
      if (localJDInputMethod.isPopupwindowShowing()) {
        localJDInputMethod.dismissPopupwindow();
      }
    }
  }
  
  private void hidePasswordEdit()
  {
    post(new Runnable()
    {
      public void run()
      {
        NewFillOrderActivity.this.defray_passwork_input_layout.removeAllViews();
        NewFillOrderActivity.this.mLayoutDefaryPassword.setVisibility(8);
        NewFillOrderActivity.this.defrayEtArray.clear();
        NewFillOrderActivity.this.hideInputKey();
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
    localLinearLayout.setPadding(this.settlePadding, this.settlePadding, this.settlePadding, this.settlePadding);
    localLinearLayout.addView(generatorSettleItem(this.settelCommonParms, paramString1, 5));
    localLinearLayout.addView(generatorSettleItem(this.settelCommonParms, paramString2, 5));
    localLinearLayout.addView(generatorSettleItem(this.settelValueParms, paramString3 + "元", 5));
    paramViewGroup.addView(localLinearLayout);
  }
  
  private void messageAfterSubmit()
  {
    runOnUiThread(new Runnable()
    {
      String sOrderNo;
      String sPayWay;
      String sTotalMoney;
      
      private void clearCart()
      {
        try
        {
          DBHelperUtil localDBHelperUtil = new DBHelperUtil(NewFillOrderActivity.this);
          localDBHelperUtil.delAllCart();
          localDBHelperUtil.delAllPacksCart();
          Constants.hasNewTocart = true;
          return;
        }
        finally
        {
          localObject = finally;
          throw localObject;
        }
      }
      
      private void doOnlinePay()
      {
        PayUtils.doPay(NewFillOrderActivity.this, this.sOrderNo);
      }
      
      private void gotoEdidtCurrentAndNewAddress()
      {
        com.jingdong.common.entity.LastOrderInfo.mUserInfo = NewFillOrderActivity.this.mNewCurrentOrder.toOldModelForUserInfo();
        Intent localIntent = new Intent(NewFillOrderActivity.this, EditOrderAddressActivity.class);
        localIntent.putExtra("PageType", 5);
        NewFillOrderActivity.this.startActivityForResult(localIntent, 1);
      }
      
      private boolean isOnlinePay(Boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean == null) {
          return "在线支付".equals(this.sPayWay);
        }
        return paramAnonymousBoolean.booleanValue();
      }
      
      private void resetCoupon()
      {
        Constants.dongSel = new JSONObject();
        Constants.jinSelArray = new JSONArray();
        Constants.liSelArray = new JSONArray();
        Constants.nSelectDongQuanId = "";
        Constants.nselectJingQuanIDs = null;
        Constants.nSelectLipinIDs = null;
        Constants.jSelected = false;
        Constants.dSelected = false;
        Constants.liSelected = false;
        Constants.skusOfSuites = null;
        Constants.skusOfSuites = new JSONArrayPoxy();
      }
      
      public void run()
      {
        SubmitOrderInfo localSubmitOrderInfo = NewFillOrderActivity.this.mNewCurrentOrder.getSubmitOrderInfo();
        if (NewFillOrderActivity.this.mNewCurrentOrder.getIdPaymentType().intValue() == 1)
        {
          this.sPayWay = "货到付款";
          this.sOrderNo = localSubmitOrderInfo.getOrderId();
          if ((TextUtils.isEmpty(this.sOrderNo)) || ("0".equals(this.sOrderNo))) {
            break label410;
          }
          localBoolean2 = localSubmitOrderInfo.getIsOnlinePay();
          if (localSubmitOrderInfo.getPrice() != null) {
            this.sTotalMoney = localSubmitOrderInfo.getPrice();
          }
          if ((NewFillOrderActivity.this.mNewCurrentOrder.getIdPaymentType().intValue() != 4) || (!isOnlinePay(localBoolean2)) || (TextUtils.isEmpty(this.sTotalMoney)) || (TextUtils.equals(this.sTotalMoney, "0"))) {
            break label242;
          }
          doOnlinePay();
          resetCoupon();
        }
        label242:
        while (localSubmitOrderInfo == null)
        {
          Boolean localBoolean2;
          return;
          if (NewFillOrderActivity.this.mNewCurrentOrder.getIdPaymentType().intValue() == 2)
          {
            this.sPayWay = "邮局汇款";
            break;
          }
          if (NewFillOrderActivity.this.mNewCurrentOrder.getIdPaymentType().intValue() == 3)
          {
            this.sPayWay = "京东自提";
            break;
          }
          if (NewFillOrderActivity.this.mNewCurrentOrder.getIdPaymentType().intValue() == 4)
          {
            this.sPayWay = "在线支付";
            break;
          }
          this.sPayWay = "公司转账";
          break;
          clearCart();
          Intent localIntent = new Intent(NewFillOrderActivity.this, CompleteOrderActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putString("order_no", this.sOrderNo);
          localBundle.putString("order_money", this.sTotalMoney);
          localBundle.putString("order_way", this.sPayWay);
          localBundle.putBoolean("is_Easy_Buy", false);
          if (!TextUtils.isEmpty(localSubmitOrderInfo.getFeedBackMsg())) {
            localBundle.putString("order_msg", localSubmitOrderInfo.getFeedBackMsg());
          }
          for (;;)
          {
            localIntent.putExtras(localBundle);
            com.jingdong.common.entity.LastOrderInfo.mUserInfo = new UserInfo();
            com.jingdong.common.entity.LastOrderInfo.mPaymentInfo = new PaymentInfo();
            com.jingdong.common.entity.LastOrderInfo.mInvoiceInfo = new InvoiceInfo();
            com.jingdong.common.entity.LastOrderInfo.mYouhuiQuan = new YouHuiQuan();
            CommonUtil.getInstance().startActivityInFrame(NewFillOrderActivity.this, localIntent);
            resetCoupon();
            return;
            localBundle.putString("order_msg", " ");
          }
        }
        label410:
        String str = localSubmitOrderInfo.getMessage();
        Boolean localBoolean1 = localSubmitOrderInfo.getIsIdTown();
        if ((localBoolean1 == null) || (!localBoolean1.booleanValue()))
        {
          if ((str == null) || ("null".equals(str))) {
            str = "订单提交失败，请重试。";
          }
          Constants.ShowMsg(str, NewFillOrderActivity.this);
          return;
        }
        NewFillOrderActivity localNewFillOrderActivity = NewFillOrderActivity.this;
        if ((str == null) || ("null".equals(str))) {
          str = NewFillOrderActivity.this.getString(2131166464);
        }
        DialogUtils.showDailog(localNewFillOrderActivity, str, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            NewFillOrderActivity.17.this.gotoEdidtCurrentAndNewAddress();
          }
        });
      }
    });
  }
  
  private void showAllEmptyView()
  {
    this.mTextViewReceiverTitle.setVisibility(8);
    this.mLayoutReceiverInfo.setVisibility(8);
    this.mLayoutReceiverEmpty.setVisibility(0);
    this.mTextViewPaymentTitle.setVisibility(8);
    this.mLayoutPaymentInfo.setVisibility(8);
    this.mLayoutPaymentEmpty.setVisibility(0);
    this.mTextViewInvoiceTitle.setVisibility(8);
    this.mLayoutInvoiceInfo.setVisibility(8);
    this.mLayoutInvoiceEmpty.setVisibility(0);
  }
  
  private void showAllPage()
  {
    if (this.mNewCurrentOrder == null) {}
    label114:
    label119:
    for (;;)
    {
      return;
      this.priceDifferentTips = this.mNewCurrentOrder.getChangeAreaMessage();
      if (!TextUtils.isEmpty(this.mNewCurrentOrder.getName()))
      {
        showReceiverView();
        showPaymentView();
        showInvoiceView();
        showBalanceView();
        showJdbeanView();
        showMoneyInfoView();
        showRemarkView();
        showPayOnlineTips();
        if (!this.mNewCurrentOrder.getIsUsedVirtualPay().booleanValue()) {
          break label114;
        }
        showPasswordEdit();
      }
      for (;;)
      {
        if (TextUtils.isEmpty(this.mNewCurrentOrder.getOtherMessage())) {
          break label119;
        }
        post(new Runnable()
        {
          public void run()
          {
            Toast.makeText(NewFillOrderActivity.this, NewFillOrderActivity.this.mNewCurrentOrder.getOtherMessage(), 0).show();
          }
        });
        return;
        showAllEmptyView();
        break;
        hidePasswordEdit();
      }
    }
  }
  
  private void showBalanceView()
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          UsedBalance localUsedBalance = NewFillOrderActivity.this.mNewCurrentOrder.getCurrBalance();
          if ((localUsedBalance == null) || (!localUsedBalance.isShowBanance()))
          {
            NewFillOrderActivity.this.mLayoutBalance.setVisibility(8);
            NewFillOrderActivity.this.mNewCurrentOrder.setIsUseBalance(Boolean.valueOf(false));
            return;
          }
          NewFillOrderActivity.this.mLayoutBalance.setVisibility(0);
          if (!NewFillOrderActivity.this.mNewCurrentOrder.getIsOpenPaymentPassword().booleanValue()) {
            NewFillOrderActivity.this.mNewCurrentOrder.setIsUseBalance(Boolean.valueOf(false));
          }
          NewFillOrderActivity.this.mCheckboxBalance.setChecked(NewFillOrderActivity.this.mNewCurrentOrder.getIsUseBalance().booleanValue());
          NewFillOrderActivity.this.mTextViewBalance.setText(localUsedBalance.getBalanceName());
          NewFillOrderActivity.this.mCheckboxBalance.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
          {
            public void onCheckedChanged(CompoundButton paramAnonymous2CompoundButton, boolean paramAnonymous2Boolean)
            {
              if ((paramAnonymous2Boolean) && (!NewFillOrderActivity.this.mNewCurrentOrder.getIsOpenPaymentPassword().booleanValue()))
              {
                NewFillOrderActivity.this.mCheckboxBalance.setChecked(false);
                String str = NewFillOrderActivity.this.mNewCurrentOrder.getOpenPasswordTip();
                if (TextUtils.isEmpty(str)) {
                  str = NewFillOrderActivity.this.getString(2131166245);
                }
                DialogUtils.showDailog(NewFillOrderActivity.this, str, null);
                return;
              }
              NewFillOrderActivity.this.mNewCurrentOrder.setIsUseBalance(Boolean.valueOf(paramAnonymous2Boolean));
              NewFillOrderActivity.this.mController.setBalanceChangeFlag(true);
              NewFillOrderActivity.this.mController.syncFillOrder(NewFillOrderActivity.this.mNewFillOrderListener);
            }
          });
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  private void showExplainPayPasswordDialog(Boolean paramBoolean)
  {
    if (paramBoolean != null)
    {
      DialogController local15 = new DialogController()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          default: 
            return;
          }
          paramAnonymousDialogInterface.dismiss();
        }
      };
      local15.setTitle(getString(2131166050));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(getString(2131166051));
      local15.setMessage(localStringBuilder);
      local15.setNeutralButton(getString(2131166054));
      local15.init(this);
      local15.show();
    }
  }
  
  private void showInvoiceView()
  {
    this.mTextViewInvoiceTitle.setVisibility(0);
    this.mLayoutInvoiceInfo.setVisibility(0);
    this.mLayoutInvoiceEmpty.setVisibility(8);
    this.mTextViewInvoiceTypeContent.setText(this.mNewCurrentOrder.getInvoiceTypeName());
    if (TextUtils.equals(this.mNewCurrentOrder.getInvoiceTitle(), "单位")) {
      this.mTextViewInvoincHeadTitleContent.setText("单位(" + this.mNewCurrentOrder.getCompanyName() + ")");
    }
    for (;;)
    {
      this.mTextViewInvoiceContentWithBookDetail.setText(this.mNewCurrentOrder.getInvoiceContentTypeBookName());
      this.mTextViewInvoiceContentNoBookDetail.setText(this.mNewCurrentOrder.getInvoiceContentsTypeName());
      return;
      this.mTextViewInvoincHeadTitleContent.setText(this.mNewCurrentOrder.getInvoiceTitle());
    }
  }
  
  private void showJdbeanView()
  {
    post(new Runnable()
    {
      public void run()
      {
        UsedJdbean localUsedJdbean;
        try
        {
          localUsedJdbean = NewFillOrderActivity.this.mNewCurrentOrder.getCurrJdbean();
          if (localUsedJdbean == null) {
            return;
          }
          if ((localUsedJdbean == null) || (!localUsedJdbean.getIsShowJdbean().booleanValue()))
          {
            NewFillOrderActivity.this.mLayoutJdbean.setVisibility(8);
            NewFillOrderActivity.this.mNewCurrentOrder.setIsUseJdBean(Boolean.valueOf(false));
            return;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        NewFillOrderActivity.this.mLayoutJdbean.setVisibility(0);
        if (!NewFillOrderActivity.this.mNewCurrentOrder.getIsOpenPaymentPassword().booleanValue()) {
          NewFillOrderActivity.this.mNewCurrentOrder.setIsUseJdBean(Boolean.valueOf(false));
        }
        NewFillOrderActivity.this.mCheckboxJdbean.setChecked(NewFillOrderActivity.this.mNewCurrentOrder.getIsUseJdBean().booleanValue());
        NewFillOrderActivity.this.mTextViewJdbean.setText(localUsedJdbean.getJdbeanName());
        NewFillOrderActivity.this.mCheckboxJdbean.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
        {
          public void onCheckedChanged(CompoundButton paramAnonymous2CompoundButton, boolean paramAnonymous2Boolean)
          {
            if ((paramAnonymous2Boolean) && (!NewFillOrderActivity.this.mNewCurrentOrder.getIsOpenPaymentPassword().booleanValue()))
            {
              NewFillOrderActivity.this.mCheckboxJdbean.setChecked(false);
              String str = NewFillOrderActivity.this.mNewCurrentOrder.getOpenPasswordTip();
              if (TextUtils.isEmpty(str)) {
                str = NewFillOrderActivity.this.getString(2131166246);
              }
              DialogUtils.showDailog(NewFillOrderActivity.this, str, null);
              return;
            }
            NewFillOrderActivity.this.mNewCurrentOrder.setIsUseJdBean(Boolean.valueOf(paramAnonymous2Boolean));
            NewFillOrderActivity.this.mController.setJdBeanChangeFlag(true);
            NewFillOrderActivity.this.mController.syncFillOrder(NewFillOrderActivity.this.mNewFillOrderListener);
          }
        });
      }
    });
  }
  
  private void showMoneyInfoView()
  {
    ArrayList localArrayList = this.mNewCurrentOrder.getPriceItemList();
    if ((localArrayList == null) || (this.mLayoutSettleContent == null)) {
      return;
    }
    this.mLayoutSettleContent.removeAllViews();
    int i = 0;
    label29:
    NewCurrentOrderPriceItem localNewCurrentOrderPriceItem;
    if (i < localArrayList.size())
    {
      localNewCurrentOrderPriceItem = (NewCurrentOrderPriceItem)localArrayList.get(i);
      if (localNewCurrentOrderPriceItem != null) {
        break label56;
      }
    }
    for (;;)
    {
      i++;
      break label29;
      break;
      label56:
      String str1 = localNewCurrentOrderPriceItem.getLabel();
      if (!TextUtils.isEmpty(str1))
      {
        String str2 = localNewCurrentOrderPriceItem.getValue();
        if (TextUtils.isEmpty(str2)) {
          str2 = "";
        }
        String str3 = localNewCurrentOrderPriceItem.getOperator();
        if (str3 == null) {
          str3 = "";
        }
        initSettleView(this.mLayoutSettleContent, str1, str3, str2);
        if (str1.contains("商品金额"))
        {
          showPriceDifferentRemind(str2);
          Constants.dYTotalPrice = str2;
        }
        else if (str1.contains("应付总额"))
        {
          TextView localTextView = this.mTextViewFinalPriceTv;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = (str2 + "元");
          localTextView.setText(Html.fromHtml(getString(2131166445, arrayOfObject)));
          this.mLayoutSubmit.setVisibility(0);
          this.mNewCurrentOrder.setTotalPrice(str2);
        }
      }
    }
  }
  
  private void showPasswordEdit()
  {
    post(new Runnable()
    {
      public void run()
      {
        Object localObject;
        SpannableStringBuilder localSpannableStringBuilder;
        for (;;)
        {
          try
          {
            NewFillOrderActivity.this.defray_passwork_input_layout.removeAllViews();
            NewFillOrderActivity.this.defrayEtArray.clear();
            NewFillOrderActivity.this.hideInputKey();
            Resources localResources = NewFillOrderActivity.this.context.getResources();
            if (NewFillOrderActivity.this.mNewCurrentOrder == null) {
              return;
            }
            final Boolean localBoolean = NewFillOrderActivity.this.mNewCurrentOrder.getIsOpenPaymentPassword();
            final String str1 = NewFillOrderActivity.this.mNewCurrentOrder.getShowSecurityUrl();
            final String str2 = NewFillOrderActivity.this.mNewCurrentOrder.getShowSecurityFunctionId();
            localObject = NewFillOrderActivity.this.mNewCurrentOrder.getShowSecurityMessage();
            if ((localBoolean != null) && (!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
            {
              NewFillOrderActivity.this.pay_password_open_find_layout.setVisibility(0);
              localSpannableStringBuilder = new SpannableStringBuilder();
              if (!localBoolean.booleanValue()) {
                break;
              }
              localSpannableStringBuilder.append(NewFillOrderActivity.this.getString(2131166049));
              TextView localTextView4 = NewFillOrderActivity.this.payPasswordView;
              if (!TextUtils.isEmpty((CharSequence)localObject))
              {
                localTextView4.setText((CharSequence)localObject);
                NewFillOrderActivity.this.payPasswordBtn.setText(localSpannableStringBuilder);
                TextView localTextView3 = NewFillOrderActivity.this.payPasswordBtn;
                View.OnClickListener local1 = new View.OnClickListener()
                {
                  public void onClick(View paramAnonymous2View)
                  {
                    URLParamMap localURLParamMap = new URLParamMap();
                    localURLParamMap.put("to", str1);
                    CommonUtil.queryBrowserUrl(str2, localURLParamMap, new CommonBase.BrowserUrlListener()
                    {
                      public void onComplete(final String paramAnonymous3String)
                      {
                        NewFillOrderActivity.this.post(new Runnable()
                        {
                          public void run()
                          {
                            Intent localIntent = new Intent(NewFillOrderActivity.this, WebActivity.class);
                            localIntent.putExtra("url", paramAnonymous3String);
                            NewFillOrderActivity.this.startActivity(localIntent);
                          }
                        });
                      }
                    });
                  }
                };
                localTextView3.setOnClickListener(local1);
              }
            }
            else
            {
              String str3 = NewFillOrderActivity.this.mNewCurrentOrder.getShowSecurityTitle();
              String str4 = NewFillOrderActivity.this.mNewCurrentOrder.getShowSecuritySubmitKey();
              LinearLayout localLinearLayout = new LinearLayout(NewFillOrderActivity.this.context);
              RelativeLayout localRelativeLayout = new RelativeLayout(NewFillOrderActivity.this.context);
              localLinearLayout.setOrientation(1);
              TextView localTextView1 = new TextView(NewFillOrderActivity.this.context);
              localTextView1.setPadding((int)localResources.getDimension(2131427362), 0, 0, 0);
              localTextView1.setText(str3);
              localTextView1.setTextColor(-65536);
              final EditText localEditText = new EditText(NewFillOrderActivity.this.context);
              JDInputMethod localJDInputMethod = new JDInputMethod((Activity)NewFillOrderActivity.this.context, localEditText, NewFillOrderActivity.this.findViewById(2131493395));
              localJDInputMethod.initIME();
              NewFillOrderActivity.this.inputmethodArray.add(localJDInputMethod);
              localEditText.setTag(str4);
              localEditText.setBackgroundResource(2130837551);
              localEditText.setScrollContainer(false);
              localEditText.setSingleLine();
              localEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
              localEditText.postInvalidate();
              localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
              RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(DPIUtil.dip2px(252.0F), -2);
              localLayoutParams1.setMargins((int)localResources.getDimension(2131427362), (int)localResources.getDimension(2131427364), (int)localResources.getDimension(2131427363), 0);
              localLayoutParams1.addRule(9);
              localLayoutParams1.addRule(15);
              localEditText.setLayoutParams(localLayoutParams1);
              localTextView1.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
              ImageView localImageView = new ImageView(NewFillOrderActivity.this.context);
              localImageView.setAdjustViewBounds(true);
              localImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
              localImageView.setBackgroundResource(2130838052);
              RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(DPIUtil.dip2px(32.0F), DPIUtil.dip2px(32.0F));
              localLayoutParams2.setMargins(0, 0, (int)localResources.getDimension(2131427363), 0);
              localLayoutParams2.addRule(11);
              localLayoutParams2.addRule(15);
              localImageView.setLayoutParams(localLayoutParams2);
              View.OnClickListener local2 = new View.OnClickListener()
              {
                public void onClick(View paramAnonymous2View)
                {
                  NewFillOrderActivity.this.showExplainPayPasswordDialog(localBoolean);
                }
              };
              localImageView.setOnClickListener(local2);
              localRelativeLayout.addView(localEditText);
              if ((localBoolean != null) && (!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
                localRelativeLayout.addView(localImageView);
              }
              localLinearLayout.addView(localTextView1);
              localLinearLayout.addView(localRelativeLayout);
              NewFillOrderActivity.this.defrayEtArray.add(localEditText);
              NewFillOrderActivity.this.defray_passwork_input_layout.addView(localLinearLayout);
              NewFillOrderActivity localNewFillOrderActivity = NewFillOrderActivity.this;
              Runnable local3 = new Runnable()
              {
                public void run()
                {
                  localEditText.clearFocus();
                }
              };
              localNewFillOrderActivity.post(local3);
              NewFillOrderActivity.this.mLayoutDefaryPassword.setVisibility(0);
              return;
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
          localObject = NewFillOrderActivity.this.getString(2131166048);
        }
        localSpannableStringBuilder.append(NewFillOrderActivity.this.getString(2131166046));
        TextView localTextView2 = NewFillOrderActivity.this.payPasswordView;
        if (!TextUtils.isEmpty((CharSequence)localObject)) {}
        for (;;)
        {
          localTextView2.setText((CharSequence)localObject);
          NewFillOrderActivity.this.payPasswordBtn.setText(localSpannableStringBuilder);
          break;
          String str5 = NewFillOrderActivity.this.getString(2131166047);
          localObject = str5;
        }
      }
    });
  }
  
  private void showPayOnlineTips()
  {
    if (!TextUtils.isEmpty(this.mNewCurrentOrder.getPayOnlineMessage()))
    {
      this.mTextViewSelectPayOnline.setText(this.mNewCurrentOrder.getPayOnlineMessage());
      this.mTextViewSelectPayOnline.setVisibility(0);
      return;
    }
    this.mTextViewSelectPayOnline.setVisibility(8);
  }
  
  private void showPaymentView()
  {
    this.mTextViewPaymentTitle.setVisibility(0);
    this.mLayoutPaymentInfo.setVisibility(0);
    this.mLayoutPaymentEmpty.setVisibility(8);
    this.mLayoutPaymentPostInfo.setVisibility(8);
    this.mLayoutSelfInfo.setVisibility(8);
    this.mLayoutCashDeliverPayInfo.setVisibility(8);
    this.mLayoutShipmentInfo.setVisibility(0);
    this.mTextViewPaymentTypeContent.setText(this.mNewCurrentOrder.getPaymentType());
    if (this.mNewCurrentOrder.getIdPaymentType().intValue() == 3)
    {
      this.mLayoutSelfInfo.setVisibility(0);
      this.mLayoutShipmentInfo.setVisibility(8);
      this.mTextViewSelfNameContent.setText(this.mNewCurrentOrder.getPickSiteName());
      this.mTextViewSelfAddressContent.setText(this.mNewCurrentOrder.getPickSiteAddress());
      return;
    }
    this.mTextViewShipmentTypeContent.setText(this.mNewCurrentOrder.getShipmentTypeName());
    this.mTextViewShipmentShipmentBit.setVisibility(8);
    this.mTextViewShipmentShipmentBitContent.setVisibility(8);
    this.mTextViewShipmentShiptime.setVisibility(8);
    this.mTextViewShipmentShiptimeContent.setVisibility(8);
    if (!TextUtils.isEmpty(this.mNewCurrentOrder.getBigItemCodDateName()))
    {
      this.mTextViewShipmentShipmentBit.setVisibility(0);
      this.mTextViewShipmentShipmentBitContent.setVisibility(0);
      this.mTextViewShipmentShipmentBitContent.setText(this.mNewCurrentOrder.getBigItemCodDateName());
    }
    label270:
    String str;
    if (!TextUtils.isEmpty(this.mNewCurrentOrder.getShow411Text()))
    {
      this.mTextViewShipmentShiptime.setVisibility(0);
      this.mTextViewShipmentShiptimeContent.setVisibility(0);
      this.mTextViewShipmentShiptimeContent.setText(this.mNewCurrentOrder.getShow411Text());
      if (this.mNewCurrentOrder.getIsCodInform() == null) {
        break label491;
      }
      this.mTextViewShipmentPhoneConfirm.setVisibility(0);
      this.mTextViewShipmentPhoneConfirmContent.setVisibility(0);
      if (!this.mNewCurrentOrder.getIsCodInform().booleanValue()) {
        break label480;
      }
      str = getString(2131165603);
      label317:
      this.mTextViewShipmentPhoneConfirmContent.setText(str);
    }
    for (;;)
    {
      switch (this.mNewCurrentOrder.getIdPaymentType().intValue())
      {
      case 4: 
      case 3: 
      default: 
        return;
      case 1: 
        if (!TextUtils.isEmpty(this.mNewCurrentOrder.getPaymentWayName())) {
          break label549;
        }
        this.mLayoutCashDeliverPayInfo.setVisibility(8);
        return;
        if (!TextUtils.isEmpty(this.mNewCurrentOrder.getShow311Text()))
        {
          this.mTextViewShipmentShiptime.setVisibility(0);
          this.mTextViewShipmentShiptimeContent.setVisibility(0);
          this.mTextViewShipmentShiptimeContent.setText(this.mNewCurrentOrder.getShow311Text());
          break label270;
        }
        if (TextUtils.isEmpty(this.mNewCurrentOrder.getCodTimeName())) {
          break label270;
        }
        this.mTextViewShipmentShiptime.setVisibility(0);
        this.mTextViewShipmentShiptimeContent.setVisibility(0);
        this.mTextViewShipmentShiptimeContent.setText(this.mNewCurrentOrder.getCodTimeName());
        break label270;
        label480:
        str = getString(2131165604);
        break label317;
        label491:
        this.mTextViewShipmentPhoneConfirm.setVisibility(8);
        this.mTextViewShipmentPhoneConfirmContent.setVisibility(8);
      }
    }
    this.mLayoutPaymentPostInfo.setVisibility(0);
    this.mTextViewPaymentPostCustomerIdContent.setText(this.mNewCurrentOrder.getPostCustomerId());
    this.mTextViewPaymentPostPayeeContnet.setText(this.mNewCurrentOrder.getPostPayee());
    return;
    label549:
    this.mLayoutCashDeliverPayInfo.setVisibility(0);
    this.mTextViewCashDeliveryPayTypeContent.setText(this.mNewCurrentOrder.getPaymentWayName());
  }
  
  private void showPriceDifferentRemind(String paramString)
  {
    if ((this.mTextViewPriceDifferentRemind == null) || (TextUtils.isEmpty(this.priceDifferentTips))) {
      return;
    }
    if ((!TextUtils.isEmpty(Constants.dYTotalPrice)) && (!TextUtils.equals(Constants.dYTotalPrice, "0"))) {
      try
      {
        double d = Double.parseDouble(Constants.dYTotalPrice);
        if (Double.parseDouble(paramString) > d)
        {
          this.mTextViewPriceDifferentRemind.setVisibility(0);
          this.mTextViewPriceDifferentRemind.setText(this.priceDifferentTips);
          return;
        }
      }
      catch (Exception localException) {}
    }
    this.mTextViewPriceDifferentRemind.setVisibility(8);
  }
  
  private void showReceiverView()
  {
    this.mTextViewReceiverTitle.setVisibility(0);
    this.mLayoutReceiverInfo.setVisibility(0);
    this.mLayoutReceiverEmpty.setVisibility(8);
    this.mTextViewReceiverNameContent.setText(this.mNewCurrentOrder.getName());
    this.mTextViewReceiverMobileContent.setText(this.mNewCurrentOrder.getMobile());
    this.mTextViewReceiverAddressContent.setText(this.mNewCurrentOrder.getWhere());
  }
  
  private void showRemarkView()
  {
    if (this.mNewCurrentOrder.getNeedRemark().booleanValue())
    {
      this.mLayoutMark.setVisibility(0);
      return;
    }
    this.mLayoutMark.setVisibility(8);
    this.mEditTextMarkContent.setText("");
  }
  
  private void showYouHuiView()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (TextUtils.isEmpty(NewFillOrderActivity.this.mNewCurrentOrder.getName()))
        {
          NewFillOrderActivity.this.mTextViewYouhuiTitle.setVisibility(8);
          NewFillOrderActivity.this.mTextViewYouhuiContent.setText(2131166025);
          return;
        }
        if ((CouponInfo.lookupSelectedForList(NewFillOrderActivity.this.mNewCurrentOrder.getCouponInfo()).size() > 0) || (GiftCartInfo.lookupSelectedForList(NewFillOrderActivity.this.mNewCurrentOrder.getGiftInfo()).size() > 0))
        {
          NewFillOrderActivity.this.mTextViewYouhuiTitle.setVisibility(0);
          NewFillOrderActivity.this.mTextViewYouhuiContent.setText(NewFillOrderActivity.this.mNewCurrentOrder.getDisplayCouponGiftContent());
          return;
        }
        NewFillOrderActivity.this.mTextViewYouhuiContent.setText(2131166025);
        NewFillOrderActivity.this.mTextViewYouhuiTitle.setVisibility(8);
      }
    });
  }
  
  private void submitOrder()
  {
    if (InterfaceBroadcastReceiver.usid != null) {
      this.mNewCurrentOrder.setUsid(InterfaceBroadcastReceiver.usid);
    }
    do
    {
      this.mController.submitOrder(this.mNewFillOrderListener);
      return;
      InterfaceBroadcastReceiver.unionId = Configuration.getProperty("unionId");
      InterfaceBroadcastReceiver.subunionId = Configuration.getProperty("subunionId");
    } while (InterfaceBroadcastReceiver.unionId == null);
    InterfaceBroadcastReceiver.cps(new Runnable()
    {
      public void run()
      {
        NewFillOrderActivity.this.submitOrder();
      }
    });
  }
  
  private void toPageEditYouHuiLipinActivity()
  {
    Intent localIntent = new Intent(this, EditYouHuiLipinActivity.class);
    localIntent.putExtra("bCard", this.mNewCurrentOrder.getIsOpenPaymentPassword());
    localIntent.putExtra("bJingCoupon", this.mNewCurrentOrder.getIsOpenPaymentPassword());
    localIntent.putExtra("bDongCoupon", this.mNewCurrentOrder.getIsOpenPaymentPassword());
    localIntent.putExtra("bCardtip", this.mNewCurrentOrder.getOpenPasswordTip());
    localIntent.putExtra("bJingCoupontip", this.mNewCurrentOrder.getOpenPasswordTip());
    localIntent.putExtra("bDongCoupontip", this.mNewCurrentOrder.getOpenPasswordTip());
    localIntent.putExtra("ExtraNewCurrentOrder", this.mNewCurrentOrder);
    startActivityForResult(localIntent, 5);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt2)
    {
    case 2: 
    default: 
    case 1: 
      do
      {
        return;
        this.mNewCurrentOrder.parseOldModelForUserInfo(Constants.mModifiedUserInfo);
        this.mController.modifyReceiver(this.mNewFillOrderListener);
      } while (this.mScrollView == null);
      this.mScrollView.smoothScrollTo(0, 0);
      return;
    case 3: 
      this.mPromiseTime = ((SelectPaymentTypeActivity.PromiseTime)paramIntent.getParcelableExtra("PromiseTime"));
      appendPromistTime();
      this.mNewCurrentOrder.parseOldModelForPaymentInfo(paramIntent);
      this.mController.modifyPayment(this.mNewFillOrderListener);
      return;
    case 4: 
      NewCurrentOrder localNewCurrentOrder2 = (NewCurrentOrder)paramIntent.getSerializableExtra("ExtraNewCurrentOrder");
      this.mNewCurrentOrder.parseNewModelForInvoicePage(localNewCurrentOrder2);
      this.mController.modifyInvoice(this.mNewFillOrderListener);
      return;
    }
    NewCurrentOrder localNewCurrentOrder1 = (NewCurrentOrder)paramIntent.getSerializableExtra("ExtraNewCurrentOrder");
    this.mNewCurrentOrder.parseNewModelForYouHuiLipinPage(localNewCurrentOrder1);
    showYouHuiView();
    this.mController.syncFillOrder(this.mNewFillOrderListener);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.context = this;
    setContentView(2130903209);
    Constants.dYTotalPrice = "0";
    findViews();
    handleClickEvent();
    Intent localIntent = getIntent();
    if (localIntent.getExtras() != null)
    {
      cartResponseInfo = (CartResponseInfo)localIntent.getExtras().get("selectedCartResponseInfo");
      FillOrderActivity.cartResponseInfo = cartResponseInfo;
    }
    try
    {
      this.mController = new NewFillOrderController(getHttpGroupaAsynPool(), cartResponseInfo, this.mNewCurrentOrder);
      label86:
      this.mController.syncFillOrder(this.mNewFillOrderListener);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      break label86;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      int i = 0;
      for (int j = 0;; j++)
      {
        if (j >= this.inputmethodArray.size())
        {
          if (i == 0) {
            break;
          }
          return true;
        }
        JDInputMethod localJDInputMethod = (JDInputMethod)this.inputmethodArray.get(j);
        if (localJDInputMethod.isPopupwindowShowing())
        {
          localJDInputMethod.dismissPopupwindow();
          i = 1;
        }
      }
      Constants.dongSel = new JSONObject();
      Constants.jinSelArray = new JSONArray();
      Constants.liSelArray = new JSONArray();
      Constants.nSelectDongQuanId = "";
      Constants.nselectJingQuanIDs = null;
      Constants.nSelectLipinIDs = null;
      Constants.jSelected = false;
      Constants.dSelected = false;
      Constants.liSelected = false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.NewFillOrderActivity
 * JD-Core Version:    0.7.0.1
 */