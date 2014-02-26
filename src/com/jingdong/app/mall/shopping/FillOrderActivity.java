package com.jingdong.app.mall.shopping;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver;
import com.jingdong.app.mall.ime.JDInputMethod;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.register.QuickRegisterListener;
import com.jingdong.app.mall.register.QuickRegisterListener.QuickRegisterStatusListener;
import com.jingdong.app.mall.register.QuickRegisterLoginListener;
import com.jingdong.app.mall.register.QuickRegisterLoginListener.QuickRegisterLoginStatusListener;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ui.CountdownDrawable;
import com.jingdong.app.mall.utils.ui.DialogController;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.BigHouseholdappliancesInfo;
import com.jingdong.common.entity.DefaultEasyTempOrderInfo;
import com.jingdong.common.entity.InvoiceInfo;
import com.jingdong.common.entity.LastOrderInfo;
import com.jingdong.common.entity.PaymentInfo;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.entity.UsedBalance;
import com.jingdong.common.entity.UsedJdbean;
import com.jingdong.common.entity.UserInfo;
import com.jingdong.common.entity.VirtualPayAvailable;
import com.jingdong.common.entity.YouHuiQuan;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.DialogUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.Md5Encrypt;
import com.jingdong.common.utils.StatisticsReportUtil;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.common.utils.pay.PayUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FillOrderActivity
  extends MyActivity
{
  public static final int ADD_ADDR_CODE = 2;
  public static final int ADD_LINPIN = 17;
  public static final int ADD_YOUHUI = 16;
  public static final int CALC_ORDER = 13;
  public static final int EASY_BUY_ADD_TEMP = 18;
  public static final int EASY_BUY_MODIFY = 22;
  public static final int EASY_BUY_PAYMENT_INFO = 20;
  public static final int EASY_BUY_SUBMIT = 21;
  public static final int EASY_BUY_SUBMIT_ORDER = 19;
  public static final int GET_AREAS = 12;
  public static final int GET_BALANCE = 15;
  public static final int GET_BY_SELF_INFO = 5;
  public static final int GET_CITYS = 11;
  public static final int GET_INVOINCE_BOOK = 9;
  public static final int GET_INVOINCE_GENERAL = 10;
  public static final int GET_INVOINCE_TITLE = 8;
  public static final int GET_INVOINCE_TYPES = 7;
  public static final int GET_LAST_ORDER_INFO = 1;
  public static final int GET_PAYMMENT_TYPE = 3;
  public static final int GET_PEI_SONG_INFO = 4;
  public static final int GET_POST_INFO = 6;
  public static final int GET_PROVINCE = 2;
  public static final String INTENT_EXTRA_SELECTED_CART = "selectedCartResponseInfo";
  public static final int MODIFY_ADDR_CODE = 1;
  public static final int MODIFY_INVOINCE_CODE = 4;
  public static final int MODIFY_PAYMENT_CODE = 3;
  public static final int MODIFY_YOU_HUI_CODE = 5;
  public static final int SUBMIT_ORDER = 14;
  static boolean bUseBalance = true;
  static boolean bUseJdbean = true;
  public static CartResponseInfo cartResponseInfo;
  static UsedBalance currBalance;
  static UsedJdbean currJdbean;
  public static boolean isChangeJingOrDongQuan = false;
  static JSONObject jbBody;
  static JSONObject jbCartStr;
  static JSONObject jbOrderStr;
  static JSONObject jbSourceStr;
  private static JSONObjectProxy jsonOrderInfoContainer;
  public static InvoiceInfo mNewInvoiceInfo;
  public static PaymentInfo mNewPaymentInfo;
  public static UserInfo mNewUserInfo;
  public static YouHuiQuan mNewYouhuiQuan;
  static String sInfoType;
  final String RMB = "元";
  private String TAG = "FillOrderActivity";
  Bundle bundle;
  private Context context = null;
  private ArrayList<EditText> defrayEtArray = new ArrayList();
  private LinearLayout defray_passwork_input_layout = null;
  private LinearLayout defray_passwork_layout = null;
  SourceEntity easyBuySource = null;
  Button getMobiblePasswordBut = null;
  TextView getMobiblePasswordText = null;
  Handler handler = new Handler();
  private ArrayList<JDInputMethod> inputmethodArray = new ArrayList();
  private ListView invoinceInfoList;
  boolean isEasyBuy = false;
  boolean isMS = false;
  private HttpGroup.OnAllListener isNeedPasswordListener;
  private boolean isNeedRemark = true;
  boolean isNoRegisterOrder = false;
  boolean isUpdatePayment = false;
  String[] items = null;
  JSONObject jbDongQuan;
  JSONObject jbJingQuan;
  JSONObject jbLipin;
  JSONArrayPoxy jbYunFeeList;
  JSONObjectProxy jdIsPutPassword = null;
  private VirtualPayAvailable jdSecurity;
  private HttpGroup.OnAllListener loadvirtualPayAvailableLinstener;
  private String lsPin;
  BigHouseholdappliancesInfo mBigInfo = new BigHouseholdappliancesInfo();
  private CheckBox mCheckboxBalance;
  private CheckBox mCheckboxJdbean;
  private TextView mFinalPriceTv = null;
  private LinearLayout mLayoutBalance;
  private LinearLayout mLayoutJdbean;
  SelectPaymentTypeActivity.PromiseTime mPromiseTime;
  EditText mRemark;
  private RelativeLayout mRemarkLayout = null;
  Button mSubmit;
  private View mSubmitLayout = null;
  private EditText mTempName;
  private TextView mTextViewBalance;
  private TextView mTextViewJdbean;
  TextView mTitle;
  EditText mobilePasswordEt = null;
  SimpleAdapter myAdapter;
  boolean newWay = false;
  boolean noBook = false;
  Button noRegisterSubmitBut = null;
  boolean onlyBook = false;
  private FrameLayout orderLoginTipsLayout = null;
  private TextView payPasswordBtn;
  private TextView payPasswordView;
  private LinearLayout pay_password_open_find_layout = null;
  private ListView paymentInfoList;
  String preferentialMessage;
  private TextView priceDifferentRemindTextView;
  private String priceDifferentTips;
  private ListView receiverInfoList;
  String sOrderNo;
  String sPayWay;
  String sRemark;
  String sTotalMoney;
  private ScrollView scrollView;
  private TextView selectPayOnline = null;
  EditText sendMobileEt = null;
  TextView sendtips = null;
  final LinearLayout.LayoutParams settelCommonParms = new LinearLayout.LayoutParams(-2, -2);
  final LinearLayout.LayoutParams settelValueParms = new LinearLayout.LayoutParams(-2, -2);
  private ViewGroup settleContent;
  final int settlePadding = DPIUtil.dip2px(5.0F);
  boolean submit = false;
  int timerI = 0;
  boolean update_by_addr = false;
  boolean update_by_invoince = false;
  boolean update_by_payment = false;
  RelativeLayout use_Balance_Layout = null;
  List<Map<String, String>> value;
  boolean verificationPass = false;
  private View viewGap6 = null;
  VerificationSMSPassword vsp = null;
  private ListView youhuiInfoList;
  
  public FillOrderActivity()
  {
    int i = DPIUtil.getWidth();
    this.settelCommonParms.width = (i / 5);
    this.settelValueParms.leftMargin = (i / 10);
    this.loadvirtualPayAvailableLinstener = new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        FillOrderActivity.this.jdSecurity = new VirtualPayAvailable(paramAnonymousHttpResponse.getJSONObject(), 0);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        FillOrderActivity.this.hidePasswordEdit();
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    this.isNeedPasswordListener = new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        FillOrderActivity.this.jdIsPutPassword = paramAnonymousHttpResponse.getJSONObject();
        try
        {
          boolean bool2 = FillOrderActivity.this.jdIsPutPassword.getBoolean("showSecurityPayBlock");
          bool1 = bool2;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
            boolean bool1 = false;
          }
          FillOrderActivity.this.hidePasswordEdit();
        }
        if (bool1)
        {
          FillOrderActivity.this.showPasswordEdit();
          return;
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        FillOrderActivity.this.hidePasswordEdit();
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    this.mPromiseTime = null;
  }
  
  private void LoadSecurityEnable()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("virtualPayAvailable");
    localHttpSetting.setJsonParams(resetJBBody());
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(this.loadvirtualPayAvailableLinstener);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void ShowMsg(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        Toast.makeText(FillOrderActivity.this, paramString, 0).show();
      }
    });
  }
  
  private void addEasyBuyTemp(String paramString)
  {
    for (;;)
    {
      try
      {
        jbBody = null;
        jbBody = new JSONObject();
        if ((!jbOrderStr.toString().contains("IdInvoiceContentTypeBook")) || (jbOrderStr.getInt("IdInvoiceContentTypeBook") == -1)) {
          continue;
        }
        jbOrderStr.put("IsPutBookInvoice", true);
        jbBody.put("OrderStr", jbOrderStr);
        jbBody.put("templateName", paramString);
      }
      catch (JSONException localJSONException)
      {
        HttpGroup.HttpSetting localHttpSetting;
        localJSONException.printStackTrace();
        continue;
      }
      finally {}
      localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setPost(true);
      localHttpSetting.setFunctionId("easyBuyAddOrderTemp");
      localHttpSetting.setJsonParams(jbBody);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          FillOrderActivity.this.getOrderInfoFromSer(paramAnonymousHttpResponse, "easyBuyAddOrderTemp");
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      jbOrderStr.put("IsPutBookInvoice", false);
    }
  }
  
  private void appendPromistTime(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject;
    if (paramJSONObject != null)
    {
      localJSONObject = paramJSONObject.optJSONObject("OrderStr");
      if (localJSONObject != null)
      {
        localJSONObject.remove("promiseType");
        localJSONObject.remove("promiseSendPay");
        localJSONObject.remove("promiseDate");
        localJSONObject.remove("promiseTimeRange");
        if ((this.mPromiseTime == null) || (!this.mPromiseTime.isVisibility())) {}
      }
    }
    try
    {
      localJSONObject.put("promiseType", this.mPromiseTime.promiseType);
      localJSONObject.put("promiseSendPay", new JSONObject(this.mPromiseTime.promiseSendPay));
      if (this.mPromiseTime.localType == 311)
      {
        localJSONObject.put("promiseDate", this.mPromiseTime.promiseDate);
        localJSONObject.put("promiseTimeRange", this.mPromiseTime.promiseTimeRange);
      }
      this.mPromiseTime.isUploading = true;
      return;
    }
    catch (Exception localException)
    {
      if (localJSONObject != null)
      {
        localJSONObject.remove("promiseType");
        localJSONObject.remove("promiseSendPay");
        localJSONObject.remove("promiseDate");
        localJSONObject.remove("promiseTimeRange");
      }
      this.mPromiseTime.isUploading = false;
    }
  }
  
  private void calculateOrder()
  {
    try
    {
      JSONObject localJSONObject2 = resetJBBody();
      localJSONObject1 = localJSONObject2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        JSONObject localJSONObject1 = null;
      }
    }
    finally {}
    if (localJSONObject1 == null) {
      comositeBody();
    }
    appendPromistTime(localJSONObject1);
    setUpConnAndGetData("calcOrder", localJSONObject1, "yunfeeList");
  }
  
  private void checkHasIdTown() {}
  
  private void clearCart()
  {
    try
    {
      DBHelperUtil localDBHelperUtil = new DBHelperUtil(this);
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
  
  private void compositeDefaultOrderStr()
  {
    jbOrderStr = new JSONObject();
    try
    {
      if (LoginUserBase.hasLogin())
      {
        jbOrderStr.put("pin", LoginUserBase.getLoginUserName());
        jbOrderStr.put("Name", LoginUserBase.getLoginUserName());
        jbOrderStr.put("InvoiceTitle", "个人");
        jbOrderStr.put("IdInvoiceType", 1);
        jbOrderStr.put("IdInvoiceHeaderType", 4);
        jbOrderStr.put("IsUseBalance", true);
        jbOrderStr.put("IdInvoiceContentTypeBook", -1);
        jbOrderStr.put("IdInvoiceContentsType", 1);
        jbOrderStr.put("IdPaymentType", 1);
        jbOrderStr.put("IdShipmentType", 70);
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  /* Error */
  private void compositeEasyBuyCartStr()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 614	org/json/JSONObject
    //   5: dup
    //   6: invokespecial 615	org/json/JSONObject:<init>	()V
    //   9: putstatic 763	com/jingdong/app/mall/shopping/FillOrderActivity:jbCartStr	Lorg/json/JSONObject;
    //   12: new 765	org/json/JSONArray
    //   15: dup
    //   16: invokespecial 766	org/json/JSONArray:<init>	()V
    //   19: astore_2
    //   20: new 614	org/json/JSONObject
    //   23: dup
    //   24: invokespecial 615	org/json/JSONObject:<init>	()V
    //   27: astore_3
    //   28: aload_3
    //   29: ldc_w 768
    //   32: getstatic 772	com/jingdong/common/constant/Constants:easyBuyProdId	J
    //   35: invokestatic 776	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   38: invokevirtual 643	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   41: pop
    //   42: aload_3
    //   43: ldc_w 778
    //   46: iconst_1
    //   47: invokestatic 781	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   50: invokevirtual 643	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   53: pop
    //   54: aload_2
    //   55: aload_3
    //   56: invokevirtual 784	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   59: pop
    //   60: getstatic 763	com/jingdong/app/mall/shopping/FillOrderActivity:jbCartStr	Lorg/json/JSONObject;
    //   63: ldc_w 786
    //   66: aload_2
    //   67: invokevirtual 643	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   70: pop
    //   71: aload_0
    //   72: monitorexit
    //   73: return
    //   74: astore 4
    //   76: aload 4
    //   78: invokevirtual 656	org/json/JSONException:printStackTrace	()V
    //   81: goto -10 -> 71
    //   84: astore_1
    //   85: aload_0
    //   86: monitorexit
    //   87: aload_1
    //   88: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	this	FillOrderActivity
    //   84	4	1	localObject	Object
    //   19	48	2	localJSONArray	JSONArray
    //   27	29	3	localJSONObject	JSONObject
    //   74	3	4	localJSONException	JSONException
    // Exception table:
    //   from	to	target	type
    //   28	71	74	org/json/JSONException
    //   2	28	84	finally
    //   28	71	84	finally
    //   76	81	84	finally
  }
  
  private void compositeOrderStr()
  {
    jbOrderStr = new JSONObject();
    for (;;)
    {
      try
      {
        if (!LoginUserBase.hasLogin()) {
          break;
        }
        jbOrderStr.put("pin", LoginUserBase.getLoginUserName());
        if (isLastOrderInfoContainField("Name", jsonOrderInfoContainer)) {
          jbOrderStr.put("Name", LastOrderInfo.mUserInfo.getUserName());
        }
        if (isLastOrderInfoContainField("Mobile", jsonOrderInfoContainer)) {
          jbOrderStr.put("Mobile", LastOrderInfo.mUserInfo.getUserMobile());
        }
        if (isLastOrderInfoContainField("Phone", jsonOrderInfoContainer)) {
          jbOrderStr.put("Phone", LastOrderInfo.mUserInfo.getUserPhone());
        }
        if (isLastOrderInfoContainField("Zip", jsonOrderInfoContainer)) {
          jbOrderStr.put("Zip", LastOrderInfo.mUserInfo.getUserZip());
        }
        if (isLastOrderInfoContainField("IdProvince", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdProvince", LastOrderInfo.mUserInfo.getUserAddr().get("IdProvince"));
        }
        if (isLastOrderInfoContainField("IdCity", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdCity", LastOrderInfo.mUserInfo.getUserAddr().get("IdCity"));
        }
        if (isLastOrderInfoContainField("IdArea", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdArea", LastOrderInfo.mUserInfo.getUserAddr().get("IdArea"));
        }
        if (isLastOrderInfoContainField("IdTown", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdTown", LastOrderInfo.mUserInfo.getUserAddr().get("IdTown"));
        }
        if (isLastOrderInfoContainField("Where", jsonOrderInfoContainer)) {
          jbOrderStr.put("Where", LastOrderInfo.mUserInfo.getUserAddr().get("Where"));
        }
        if (isLastOrderInfoContainField("Email", jsonOrderInfoContainer)) {
          jbOrderStr.put("Email", LastOrderInfo.mUserInfo.getUserAddr().get("Email"));
        }
        if (isLastOrderInfoContainField("UserLevel", jsonOrderInfoContainer)) {
          jbOrderStr.put("UserLevel", LastOrderInfo.mUserInfo.getUserAddr().get("UserLevel"));
        }
        if (isLastOrderInfoContainField("CompanyName", jsonOrderInfoContainer)) {
          jbOrderStr.put("CompanyName", jsonOrderInfoContainer.get("CompanyName"));
        }
        if (isLastOrderInfoContainField("InvoiceTitle", jsonOrderInfoContainer)) {
          jbOrderStr.put("InvoiceTitle", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("InvoiceTitle"));
        }
        if (isLastOrderInfoContainField("IdInvoiceType", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdInvoiceType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceType"));
        }
        if (isLastOrderInfoContainField("IdInvoiceHeaderType", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdInvoiceHeaderType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceHeaderType"));
        }
        if (isLastOrderInfoContainField("IdInvoiceContentTypeBook", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdInvoiceContentTypeBook", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentTypeBook"));
        }
        if (isLastOrderInfoContainField("IdCompanyBranch", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdCompanyBranch", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdCompanyBranch"));
        }
        if (isLastOrderInfoContainField("IdInvoiceContentsType", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdInvoiceContentsType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentsType"));
        }
        if ((isLastOrderInfoContainField("IsPutBookInvoice", jsonOrderInfoContainer)) && (jsonOrderInfoContainer.getBooleanOrNull("IsPutBookInvoice") != null))
        {
          if (!jsonOrderInfoContainer.getBooleanOrNull("IsPutBookInvoice").booleanValue())
          {
            jbOrderStr.put("IdInvoiceContentTypeBook", -1);
            jbOrderStr.put("IsPutBookInvoice", jsonOrderInfoContainer.getBooleanOrNull("IsPutBookInvoice"));
            if (isLastOrderInfoContainField("IdPaymentType", jsonOrderInfoContainer)) {
              jbOrderStr.put("IdPaymentType", LastOrderInfo.mPaymentInfo.type);
            }
            if (isLastOrderInfoContainField("PaymentWay", jsonOrderInfoContainer)) {
              jbOrderStr.put("PaymentWay", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("PaymentWay"));
            }
            if (isLastOrderInfoContainField("IdShipmentType", jsonOrderInfoContainer)) {
              jbOrderStr.put("IdShipmentType", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("IdShipmentType"));
            }
            if (isLastOrderInfoContainField("CODTime", jsonOrderInfoContainer)) {
              jbOrderStr.put("CODTime", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("CODTime"));
            }
            if (isLastOrderInfoContainField("CodDate", jsonOrderInfoContainer)) {
              jbOrderStr.put("CodDate", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("CodDate"));
            }
            if (isLastOrderInfoContainField("ShipTime", jsonOrderInfoContainer)) {
              jbOrderStr.put("ShipTime", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("ShipTime"));
            }
            if (isLastOrderInfoContainField("ShipTime", jsonOrderInfoContainer)) {
              jbOrderStr.put("ShipTime", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("ShipTime"));
            }
            if (isLastOrderInfoContainField("IdPickSite", jsonOrderInfoContainer)) {
              jbOrderStr.put("IdPickSite", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("IdPickSite"));
            }
            if (!isLastOrderInfoContainField("IsCodInform", jsonOrderInfoContainer)) {
              break label1273;
            }
            jbOrderStr.put("IsCodInform", jsonOrderInfoContainer.get("IsCodInform"));
            if (!isLastOrderInfoContainField("IsUseBalance", jsonOrderInfoContainer)) {
              break label1287;
            }
            jbOrderStr.put("IsUseBalance", jsonOrderInfoContainer.get("IsUseBalance"));
            if (isLastOrderInfoContainField("PromotionPrice", jsonOrderInfoContainer)) {
              jbOrderStr.put("PromotionPrice", LastOrderInfo.dPromotionPrice);
            }
            if (isLastOrderInfoContainField("Price", jsonOrderInfoContainer)) {
              jbOrderStr.put("Price", LastOrderInfo.dPrice);
            }
            if (isLastOrderInfoContainField("IsUseJdBean", jsonOrderInfoContainer))
            {
              bUseJdbean = jsonOrderInfoContainer.getBoolean("IsUseJdBean");
              jbOrderStr.put("isUseJdBean", bUseJdbean);
            }
            if (jsonOrderInfoContainer.isNull("usedJdBeanMap")) {
              return;
            }
            currJdbean = new UsedJdbean(jsonOrderInfoContainer, 0);
            jbOrderStr.put("canUseJdBeanCount", currJdbean.getCanUseJdBeanCount());
            jbOrderStr.put("totalJdBeanCount", currJdbean.getTotalJdBeanCount());
            return;
          }
          jbOrderStr.put("IsPutBookInvoice", jsonOrderInfoContainer.getBooleanOrNull("IsPutBookInvoice"));
          continue;
        }
        jbOrderStr.put("IdInvoiceContentTypeBook", -1);
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
      continue;
      label1273:
      jbOrderStr.put("IsCodInform", false);
      continue;
      label1287:
      jbOrderStr.put("IsUseBalance", true);
    }
    jbOrderStr.put("pin", this.lsPin);
    if (isLastOrderInfoContainField("Name", jsonOrderInfoContainer)) {
      jbOrderStr.put("Name", LastOrderInfo.mUserInfo.getUserName());
    }
    if (isLastOrderInfoContainField("Mobile", jsonOrderInfoContainer)) {
      jbOrderStr.put("Mobile", LastOrderInfo.mUserInfo.getUserMobile());
    }
    if (isLastOrderInfoContainField("Phone", jsonOrderInfoContainer)) {
      jbOrderStr.put("Phone", LastOrderInfo.mUserInfo.getUserPhone());
    }
    if (isLastOrderInfoContainField("Zip", jsonOrderInfoContainer)) {
      jbOrderStr.put("Zip", LastOrderInfo.mUserInfo.getUserZip());
    }
    if (isLastOrderInfoContainField("IdProvince", jsonOrderInfoContainer)) {
      jbOrderStr.put("IdProvince", LastOrderInfo.mUserInfo.getUserAddr().get("IdProvince"));
    }
    if (isLastOrderInfoContainField("IdCity", jsonOrderInfoContainer)) {
      jbOrderStr.put("IdCity", LastOrderInfo.mUserInfo.getUserAddr().get("IdCity"));
    }
    if (isLastOrderInfoContainField("IdArea", jsonOrderInfoContainer)) {
      jbOrderStr.put("IdArea", LastOrderInfo.mUserInfo.getUserAddr().get("IdArea"));
    }
    if (isLastOrderInfoContainField("Where", jsonOrderInfoContainer)) {
      jbOrderStr.put("Where", LastOrderInfo.mUserInfo.getUserAddr().get("Where"));
    }
    if (isLastOrderInfoContainField("Email", jsonOrderInfoContainer)) {
      jbOrderStr.put("Email", LastOrderInfo.mUserInfo.getUserAddr().get("Email"));
    }
    if (isLastOrderInfoContainField("UserLevel", jsonOrderInfoContainer)) {
      jbOrderStr.put("UserLevel", LastOrderInfo.mUserInfo.getUserAddr().get("UserLevel"));
    }
    if (isLastOrderInfoContainField("CompanyName", jsonOrderInfoContainer)) {
      jbOrderStr.put("CompanyName", jsonOrderInfoContainer.get("CompanyName"));
    }
    if (isLastOrderInfoContainField("InvoiceTitle", jsonOrderInfoContainer)) {
      jbOrderStr.put("InvoiceTitle", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("InvoiceTitle"));
    }
    if (isLastOrderInfoContainField("IdInvoiceType", jsonOrderInfoContainer)) {
      jbOrderStr.put("IdInvoiceType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceType"));
    }
    if (isLastOrderInfoContainField("IdInvoiceHeaderType", jsonOrderInfoContainer)) {
      jbOrderStr.put("IdInvoiceHeaderType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceHeaderType"));
    }
    if (isLastOrderInfoContainField("IdInvoiceContentTypeBook", jsonOrderInfoContainer)) {
      jbOrderStr.put("IdInvoiceContentTypeBook", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentTypeBook"));
    }
    if (isLastOrderInfoContainField("IdCompanyBranch", jsonOrderInfoContainer)) {
      jbOrderStr.put("IdCompanyBranch", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdCompanyBranch"));
    }
    if (isLastOrderInfoContainField("IdInvoiceContentsType", jsonOrderInfoContainer)) {
      jbOrderStr.put("IdInvoiceContentsType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentsType"));
    }
    if ((isLastOrderInfoContainField("IsPutBookInvoice", jsonOrderInfoContainer)) && (jsonOrderInfoContainer.getBooleanOrNull("IsPutBookInvoice") != null)) {
      if (!jsonOrderInfoContainer.getBooleanOrNull("IsPutBookInvoice").booleanValue())
      {
        jbOrderStr.put("IdInvoiceContentTypeBook", -1);
        jbOrderStr.put("IsPutBookInvoice", jsonOrderInfoContainer.getBooleanOrNull("IsPutBookInvoice"));
        if (isLastOrderInfoContainField("IdPaymentType", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdPaymentType", LastOrderInfo.mPaymentInfo.type);
        }
        if (isLastOrderInfoContainField("PaymentWay", jsonOrderInfoContainer)) {
          jbOrderStr.put("PaymentWay", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("PaymentWay"));
        }
        if (isLastOrderInfoContainField("IdShipmentType", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdShipmentType", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("IdShipmentType"));
        }
        if (isLastOrderInfoContainField("CODTime", jsonOrderInfoContainer))
        {
          JSONArrayPoxy localJSONArrayPoxy = jsonOrderInfoContainer.getJSONArrayOrNull("SupCodTime");
          if (localJSONArrayPoxy == null) {
            break label2432;
          }
          jbOrderStr.put("CODTime", localJSONArrayPoxy.getJSONObjectOrNull(0).getIntOrNull("Id"));
        }
        label2115:
        if (isLastOrderInfoContainField("CodDate", jsonOrderInfoContainer)) {
          jbOrderStr.put("CodDate", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("CodDate"));
        }
        if (isLastOrderInfoContainField("ShipTime", jsonOrderInfoContainer)) {
          jbOrderStr.put("ShipTime", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("ShipTime"));
        }
        if (isLastOrderInfoContainField("ShipTime", jsonOrderInfoContainer)) {
          jbOrderStr.put("ShipTime", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("ShipTime"));
        }
        if (isLastOrderInfoContainField("IdPickSite", jsonOrderInfoContainer)) {
          jbOrderStr.put("IdPickSite", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("IdPickSite"));
        }
        if (!isLastOrderInfoContainField("IsCodInform", jsonOrderInfoContainer)) {
          break label2463;
        }
        jbOrderStr.put("IsCodInform", jsonOrderInfoContainer.get("IsCodInform"));
        label2311:
        if (!isLastOrderInfoContainField("IsUseBalance", jsonOrderInfoContainer)) {
          break label2477;
        }
        jbOrderStr.put("IsUseBalance", jsonOrderInfoContainer.get("IsUseBalance"));
      }
    }
    for (;;)
    {
      if (isLastOrderInfoContainField("PromotionPrice", jsonOrderInfoContainer)) {
        jbOrderStr.put("PromotionPrice", LastOrderInfo.dPromotionPrice);
      }
      if (!isLastOrderInfoContainField("Price", jsonOrderInfoContainer)) {
        return;
      }
      jbOrderStr.put("Price", LastOrderInfo.dPrice);
      return;
      jbOrderStr.put("IsPutBookInvoice", jsonOrderInfoContainer.getBooleanOrNull("IsPutBookInvoice"));
      break;
      jbOrderStr.put("IdInvoiceContentTypeBook", -1);
      break;
      label2432:
      jbOrderStr.put("CODTime", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("CODTime"));
      break label2115;
      label2463:
      jbOrderStr.put("IsCodInform", false);
      break label2311;
      label2477:
      jbOrderStr.put("IsUseBalance", true);
    }
  }
  
  private void compositeOrderStr(JSONObjectProxy paramJSONObjectProxy)
  {
    jbOrderStr = new JSONObject();
    for (;;)
    {
      try
      {
        if (!LoginUserBase.hasLogin()) {
          return;
        }
        jbOrderStr.put("pin", LoginUserBase.getLoginUserName());
        if (isLastOrderInfoContainField("Name", paramJSONObjectProxy)) {
          jbOrderStr.put("Name", paramJSONObjectProxy.getStringOrNull("Name"));
        }
        if (isLastOrderInfoContainField("Mobile", paramJSONObjectProxy)) {
          jbOrderStr.put("Mobile", paramJSONObjectProxy.getStringOrNull("Mobile"));
        }
        if (isLastOrderInfoContainField("Phone", paramJSONObjectProxy)) {
          jbOrderStr.put("Phone", paramJSONObjectProxy.getStringOrNull("Phone"));
        }
        if (isLastOrderInfoContainField("Zip", paramJSONObjectProxy)) {
          jbOrderStr.put("Zip", paramJSONObjectProxy.get("Zip"));
        }
        if (isLastOrderInfoContainField("IdProvince", paramJSONObjectProxy)) {
          jbOrderStr.put("IdProvince", paramJSONObjectProxy.get("IdProvince"));
        }
        if (isLastOrderInfoContainField("IdCity", paramJSONObjectProxy)) {
          jbOrderStr.put("IdCity", paramJSONObjectProxy.get("IdCity"));
        }
        if (isLastOrderInfoContainField("IdArea", paramJSONObjectProxy)) {
          jbOrderStr.put("IdArea", paramJSONObjectProxy.get("IdArea"));
        }
        if (isLastOrderInfoContainField("Where", paramJSONObjectProxy)) {
          jbOrderStr.put("Where", paramJSONObjectProxy.get("Where"));
        }
        if (isLastOrderInfoContainField("Email", paramJSONObjectProxy)) {
          jbOrderStr.put("Email", paramJSONObjectProxy.get("Email"));
        }
        if (isLastOrderInfoContainField("UserLevel", paramJSONObjectProxy)) {
          jbOrderStr.put("UserLevel", paramJSONObjectProxy.get("UserLevel"));
        }
        if (isLastOrderInfoContainField("CompanyName", paramJSONObjectProxy)) {
          jbOrderStr.put("CompanyName", paramJSONObjectProxy.get("CompanyName"));
        }
        if (isLastOrderInfoContainField("InvoiceTitle", paramJSONObjectProxy)) {
          jbOrderStr.put("InvoiceTitle", paramJSONObjectProxy.get("InvoiceTitle"));
        }
        if (isLastOrderInfoContainField("IdInvoiceType", paramJSONObjectProxy)) {
          jbOrderStr.put("IdInvoiceType", paramJSONObjectProxy.get("IdInvoiceType"));
        }
        if (isLastOrderInfoContainField("IdInvoiceHeaderType", paramJSONObjectProxy)) {
          jbOrderStr.put("IdInvoiceHeaderType", paramJSONObjectProxy.get("IdInvoiceHeaderType"));
        }
        if (isLastOrderInfoContainField("IdInvoiceContentTypeBook", paramJSONObjectProxy)) {
          jbOrderStr.put("IdInvoiceContentTypeBook", paramJSONObjectProxy.get("IdInvoiceContentTypeBook"));
        }
        if (isLastOrderInfoContainField("IdCompanyBranch", paramJSONObjectProxy)) {
          jbOrderStr.put("IdCompanyBranch", paramJSONObjectProxy.get("IdCompanyBranch"));
        }
        if (isLastOrderInfoContainField("IdInvoiceContentsType", paramJSONObjectProxy)) {
          jbOrderStr.put("IdInvoiceContentsType", paramJSONObjectProxy.get("IdInvoiceContentsType"));
        }
        if ((isLastOrderInfoContainField("IsPutBookInvoice", paramJSONObjectProxy)) && (paramJSONObjectProxy.getBooleanOrNull("IsPutBookInvoice") != null))
        {
          if (!paramJSONObjectProxy.getBooleanOrNull("IsPutBookInvoice").booleanValue())
          {
            jbOrderStr.put("IdInvoiceContentTypeBook", -1);
            jbOrderStr.put("IsPutBookInvoice", paramJSONObjectProxy.getBooleanOrNull("IsPutBookInvoice"));
            if (isLastOrderInfoContainField("IdPaymentType", paramJSONObjectProxy)) {
              jbOrderStr.put("IdPaymentType", paramJSONObjectProxy.get("IdPaymentType"));
            }
            if (isLastOrderInfoContainField("PaymentWay", paramJSONObjectProxy)) {
              jbOrderStr.put("PaymentWay", paramJSONObjectProxy.get("PaymentWay"));
            }
            if (isLastOrderInfoContainField("IdShipmentType", paramJSONObjectProxy)) {
              jbOrderStr.put("IdShipmentType", paramJSONObjectProxy.get("IdShipmentType"));
            }
            if (isLastOrderInfoContainField("CODTime", paramJSONObjectProxy)) {
              jbOrderStr.put("CODTime", paramJSONObjectProxy.get("CODTime"));
            }
            if (isLastOrderInfoContainField("CodDate", paramJSONObjectProxy)) {
              jbOrderStr.put("CodDate", paramJSONObjectProxy.get("CodDate"));
            }
            if (isLastOrderInfoContainField("ShipTime", paramJSONObjectProxy)) {
              jbOrderStr.put("ShipTime", paramJSONObjectProxy.get("ShipTime"));
            }
            if (isLastOrderInfoContainField("ShipTime", paramJSONObjectProxy)) {
              jbOrderStr.put("ShipTime", paramJSONObjectProxy.get("ShipTime"));
            }
            if (isLastOrderInfoContainField("IdPickSite", paramJSONObjectProxy)) {
              jbOrderStr.put("IdPickSite", paramJSONObjectProxy.get("IdPickSite"));
            }
            if (!isLastOrderInfoContainField("IsCodInform", paramJSONObjectProxy)) {
              break label944;
            }
            jbOrderStr.put("IsCodInform", paramJSONObjectProxy.get("IsCodInform"));
            if (isLastOrderInfoContainField("PromotionPrice", paramJSONObjectProxy)) {
              jbOrderStr.put("PromotionPrice", paramJSONObjectProxy.get("PromotionPrice"));
            }
            if (isLastOrderInfoContainField("Price", paramJSONObjectProxy)) {
              jbOrderStr.put("Price", paramJSONObjectProxy.get("Price"));
            }
            if (!isLastOrderInfoContainField("IsUseBalance", paramJSONObjectProxy)) {
              break;
            }
            jbOrderStr.put("IsUseBalance", paramJSONObjectProxy.get("IsUseBalance"));
            return;
          }
          jbOrderStr.put("IsPutBookInvoice", paramJSONObjectProxy.getBooleanOrNull("IsPutBookInvoice"));
          continue;
        }
        jbOrderStr.put("IdInvoiceContentTypeBook", -1);
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
      continue;
      label944:
      jbOrderStr.put("IsCodInform", false);
    }
    jbOrderStr.put("IsUseBalance", true);
  }
  
  private void createOrderInfoDetail(HttpGroup.HttpResponse paramHttpResponse, String paramString)
  {
    try
    {
      jsonOrderInfoContainer = new JSONObjectProxy((JSONObject)paramHttpResponse.getJSONObject().get(paramString));
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void doOnlinePay()
  {
    PayUtils.doPay(this, this.sOrderNo);
  }
  
  private void fininshAddEasyTemp()
  {
    post(new Runnable()
    {
      public void run()
      {
        Constants.addNewTemplate = true;
        try
        {
          FillOrderActivity.this.finish();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  private void forwardLoginPage()
  {
    post(new Runnable()
    {
      public void run()
      {
        ShoppingCartNewActivity.isGoFillOrder = true;
        LoginUserBase.setUserStateOff(false);
        Intent localIntent = new Intent(FillOrderActivity.this, LoginActivity.class);
        localIntent.putExtra("com.360buy:singleInstanceFlag", true);
        FillOrderActivity.this.startActivity(localIntent);
      }
    });
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
  
  private void getArea(int paramInt)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", this.lsPin);
      localJSONObject.put("action", "GetAreas");
      localJSONObject.put("IdCity", String.valueOf(paramInt));
      if ((Constants.bModifyEasyBuy) || (Constants.bAddEasyBuy) || (Constants.bEasyBuy))
      {
        setUpConnAndGetData("easyBuyOrderAddress", localJSONObject, "GetAreas");
        return;
      }
      if ((jbCartStr.has("TheSkus")) && (jbCartStr.getJSONArray("TheSkus") != null)) {
        localJSONObject.put("TheSkus", jbCartStr.getJSONArray("TheSkus"));
      }
      if ((jbCartStr.has("ThePacks")) && (jbCartStr.getJSONArray("ThePacks") != null)) {
        localJSONObject.put("ThePacks", jbCartStr.getJSONArray("ThePacks"));
      }
      setUpConnAndGetData("orderAddress", localJSONObject, "GetAreas");
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void getBalance()
  {
    try
    {
      resetJBBody();
      setUpConnAndGetData("usedBalance", jbBody, "usedBalanceMap");
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
  
  private void getCartItemInfo()
  {
    if (this.isEasyBuy)
    {
      localJSONObject1 = new JSONObject();
      localJSONObject2 = new JSONObject();
      localJSONArray1 = new JSONArray();
      localJSONArray2 = new JSONArray();
    }
    while (cartResponseInfo == null) {
      try
      {
        JSONObject localJSONObject1;
        JSONObject localJSONObject2;
        JSONArray localJSONArray1;
        JSONArray localJSONArray2;
        localJSONObject1.put("Id", String.valueOf(Constants.easyBuyProdId));
        localJSONObject1.put("num", String.valueOf(1));
        localJSONArray1.put(localJSONObject1);
        localJSONObject2.put("Id", String.valueOf(Constants.easyBuyProdId));
        localJSONObject2.put("source_type", this.easyBuySource.getSourceType());
        localJSONObject2.put("source_value", this.easyBuySource.getSourceValue());
        localJSONArray2.put(localJSONObject2);
        jbCartStr = new JSONObject();
        jbCartStr.put("TheSkus", localJSONArray1);
        jbSourceStr = new JSONObject();
        jbSourceStr.put("TheSkus", localJSONArray2);
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    }
    jbCartStr = cartResponseInfo.toCheckedCartStr();
    jbSourceStr = cartResponseInfo.toCheckedStatisticsStr();
  }
  
  private void getCity(int paramInt)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", this.lsPin);
      localJSONObject.put("action", "GetCitys");
      localJSONObject.put("IdProvince", String.valueOf(paramInt));
      if ((Constants.bModifyEasyBuy) || (Constants.bAddEasyBuy) || (Constants.bEasyBuy))
      {
        setUpConnAndGetData("easyBuyOrderAddress", localJSONObject, "GetCitys");
        return;
      }
      if ((jbCartStr.has("TheSkus")) && (jbCartStr.getJSONArray("TheSkus") != null)) {
        localJSONObject.put("TheSkus", jbCartStr.getJSONArray("TheSkus"));
      }
      if ((jbCartStr.has("ThePacks")) && (jbCartStr.getJSONArray("ThePacks") != null)) {
        localJSONObject.put("ThePacks", jbCartStr.getJSONArray("ThePacks"));
      }
      setUpConnAndGetData("orderAddress", localJSONObject, "GetCitys");
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void getEasyBuyInfo()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", LoginUser.getLoginUserInfo().getString("pin"));
      setUpConnAndGetData("easyBuyGetDefaultTemp", localJSONObject, "lastOderInfo");
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
  
  private void getInvoiceContentsBook()
  {
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy) || (Constants.bEasyBuy) || (this.isEasyBuy)) {
      jbBody = new JSONObject();
    }
    for (String str = "invoiceContentsBook";; str = "invoiceContentsBook") {
      try
      {
        jbBody.put("OrderStr", jbOrderStr);
        if (jbBody == null) {
          resetJBBody();
        }
        setUpConnAndGetData(str, jbBody, "invoiceContentsBook");
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
  
  private void getInvoiceContentsGeneral()
  {
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy) || (Constants.bEasyBuy) || (this.isEasyBuy)) {
      jbBody = new JSONObject();
    }
    for (String str = "easyBuyInvoiceContentsGeneral";; str = "invoiceContentsGeneral") {
      try
      {
        jbBody.put("OrderStr", jbOrderStr);
        if (jbBody == null) {
          resetJBBody();
        }
        setUpConnAndGetData(str, jbBody, "invoiceContentsGeneral");
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
  
  private void getInvoiceHeaderTypes()
  {
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy) || (Constants.bEasyBuy) || (this.isEasyBuy)) {
      jbBody = new JSONObject();
    }
    for (String str = "easyBuyInvoiceHeaderTypes";; str = "invoiceHeaderTypes") {
      try
      {
        jbBody.put("OrderStr", jbOrderStr);
        if (jbBody == null) {
          resetJBBody();
        }
        setUpConnAndGetData(str, jbBody, "invoiceHeaderTypeInfo");
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
  
  private void getInvoiceTypes()
  {
    for (;;)
    {
      try
      {
        if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy) || (Constants.bEasyBuy) || (this.isEasyBuy))
        {
          jbBody = new JSONObject();
          str = "easyBuyInvoiceTypes";
          try
          {
            jbBody.put("OrderStr", jbOrderStr);
            if (jbBody == null) {
              resetJBBody();
            }
            setUpConnAndGetData(str, jbBody, "invoiceTypesInfo");
            return;
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
            continue;
          }
        }
        String str = "invoiceTypes";
      }
      finally {}
    }
  }
  
  private void getLarstOrderInfo()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (this.isNoRegisterOrder)
      {
        if (!LoginUserBase.hasLogin())
        {
          finish();
          return;
        }
        localJSONObject.put("pin", this.lsPin);
        localJSONObject.put("CartStr", jbCartStr);
        localJSONObject.put("SupportJdBean", true);
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
    setUpConnAndGetData("lastOrder", localJSONObject, "lastOderInfo");
  }
  
  private void getOrderInfoFromSer(HttpGroup.HttpResponse paramHttpResponse, String paramString)
  {
    try
    {
      int i5 = paramHttpResponse.getJSONObject().getInt("code");
      i = i5;
    }
    catch (JSONException localJSONException1)
    {
      do
      {
        for (;;)
        {
          localJSONException1.printStackTrace();
          int i = 0;
        }
      } while (getType(paramString) <= 0);
      switch (getType(paramString))
      {
      case 16: 
      case 20: 
      case 17: 
      case 21: 
      default: 
        return;
      }
    }
    if (i == 3) {
      forwardLoginPage();
    }
    label1842:
    do
    {
      do
      {
        for (;;)
        {
          return;
          if (!this.isEasyBuy)
          {
            createOrderInfoDetail(paramHttpResponse, paramString);
            initPromiseTime();
          }
          for (;;)
          {
            initLastOrderInfo(jsonOrderInfoContainer);
            checkHasIdTown();
            getProvices();
            return;
            jsonOrderInfoContainer = new JSONObjectProxy(paramHttpResponse.getJSONObject().getJSONObjectOrNull("orderTemplate").getJSONArrayOrNull("Orders").getJSONObjectOrNull(0).getJSONObjectOrNull("Info"));
            try
            {
              jbBody.put("templateName", paramHttpResponse.getJSONObject().getJSONObjectOrNull("orderTemplate").getJSONArrayOrNull("Orders").getJSONObjectOrNull(0).getString("Name"));
            }
            catch (JSONException localJSONException14)
            {
              localJSONException14.printStackTrace();
            }
          }
          try
          {
            JSONObjectProxy localJSONObjectProxy6 = paramHttpResponse.getJSONObject().getJSONObject("provinceInfo");
            if (LastOrderInfo.mUserInfo.getUserAddr() == null) {
              continue;
            }
            if (!this.isNoRegisterOrder)
            {
              int i4 = localJSONObjectProxy6.getJSONArray("Areas").getJSONObject(0).getInt("Id");
              LastOrderInfo.mUserInfo.getUserAddr().put("IdProvince", i4);
            }
            getCity(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdProvince"));
            return;
          }
          catch (JSONException localJSONException13)
          {
            localJSONException13.printStackTrace();
            return;
          }
          try
          {
            JSONObjectProxy localJSONObjectProxy5 = paramHttpResponse.getJSONObject().getJSONObject("provinceInfo");
            if (!this.isNoRegisterOrder)
            {
              int i3 = localJSONObjectProxy5.getJSONArray("Areas").getJSONObject(0).getInt("Id");
              LastOrderInfo.mUserInfo.getUserAddr().put("IdCity", i3);
            }
            getArea(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdCity"));
            return;
          }
          catch (JSONException localJSONException12)
          {
            localJSONException12.printStackTrace();
            return;
          }
          try
          {
            JSONObjectProxy localJSONObjectProxy4 = paramHttpResponse.getJSONObject().getJSONObject("provinceInfo");
            if (!this.isNoRegisterOrder) {
              LastOrderInfo.mUserInfo.getUserAddr().put("IdArea", localJSONObjectProxy4.getJSONArray("Areas").getJSONObject(0).getInt("Id"));
            }
            if ((Constants.bModifyEasyBuy) || (Constants.bEasyBuy) || (Constants.bAddEasyBuy))
            {
              updatePaymentTypesByAddEasyBuy();
              return;
            }
          }
          catch (JSONException localJSONException11)
          {
            for (;;)
            {
              localJSONException11.printStackTrace();
            }
            getPaymentTypes();
            return;
          }
          if (Constants.bAddEasyBuy) {
            for (;;)
            {
              try
              {
                mNewPaymentInfo.setPaymentTypes(paramHttpResponse.getJSONObject().getJSONArray("paymentInfo"));
                setReceiverInfoArea();
                if (!this.update_by_payment)
                {
                  LastOrderInfo.mPaymentInfo = new PaymentInfo();
                  LastOrderInfo.mPaymentInfo.nSelected = paramHttpResponse.getJSONObject().getJSONArray("paymentInfo").getJSONObject(0).getInt("Id");
                  initDefalutPaymentType();
                  getPaymentDetatilInformation(LastOrderInfo.mPaymentInfo.nSelected);
                  if (!this.update_by_invoince) {
                    break;
                  }
                  getInvoiceTypes();
                  this.update_by_invoince = false;
                  return;
                }
              }
              catch (JSONException localJSONException10)
              {
                localJSONException10.printStackTrace();
                return;
              }
              this.update_by_payment = false;
            }
          }
          if (Constants.bEasyBuy) {
            try
            {
              mNewPaymentInfo.setPaymentTypes(paramHttpResponse.getJSONObject().getJSONArray("paymentInfo"));
              setReceiverInfoArea();
              initDefalutPaymentType();
              getPaymentDetatilInformation(LastOrderInfo.mPaymentInfo.nSelected);
              getInvoiceTypes();
              return;
            }
            catch (JSONException localJSONException9)
            {
              localJSONException9.printStackTrace();
              return;
            }
          }
          if (Constants.bModifyEasyBuy) {
            try
            {
              mNewPaymentInfo.setPaymentTypes(paramHttpResponse.getJSONObject().getJSONArray("paymentInfo"));
              setReceiverInfoArea();
              initDefalutPaymentType();
              getPaymentDetatilInformation(LastOrderInfo.mPaymentInfo.nSelected);
              getInvoiceTypes();
              return;
            }
            catch (JSONException localJSONException8)
            {
              localJSONException8.printStackTrace();
              return;
            }
          }
          try
          {
            mNewPaymentInfo.setPaymentTypes(paramHttpResponse.getJSONObject().getJSONArray("paymentInfo"));
            initDefalutPaymentType();
            setPaymentInfo();
            getInvoiceTypes();
            return;
          }
          catch (JSONException localJSONException7)
          {
            for (;;)
            {
              localJSONException7.printStackTrace();
            }
          }
          createOrderInfoDetail(paramHttpResponse, paramString);
          setPeiSongInfo(jsonOrderInfoContainer, paramString);
          int i2 = LastOrderInfo.mPaymentInfo.nSelected;
          updateCODTime(i2, jsonOrderInfoContainer);
          if ((i2 == 1) || (i2 == 4))
          {
            setPaymentInfoAreaWithItem(i2);
            return;
          }
          getPostAddr();
          return;
          createOrderInfoDetail(paramHttpResponse, paramString);
          setGetBySelfInfo(jsonOrderInfoContainer, paramString);
          try
          {
            if ((this.update_by_addr) || (!hasIt(jsonOrderInfoContainer.getJSONArray("PickSites"), LastOrderInfo.mPaymentInfo.getPayMentType(3).getInt("IdPickSite"))))
            {
              updatePayWayInfoSelf();
              this.update_by_addr = false;
            }
          }
          catch (JSONException localJSONException6)
          {
            for (;;)
            {
              localJSONException6.printStackTrace();
            }
          }
          setPaymentInfoAreaWithItem(3);
          return;
          try
          {
            mNewPaymentInfo.setPostArray(paramHttpResponse.getJSONObject().getJSONArray("postInfo"));
            if (this.update_by_addr)
            {
              updatePayWayInfoPost();
              this.update_by_addr = false;
            }
            setPaymentInfoAreaWithItem(2);
            if ((!Constants.bAddEasyBuy) && (!Constants.bModifyEasyBuy))
            {
              calculateOrder();
              return;
            }
          }
          catch (JSONException localJSONException5)
          {
            for (;;)
            {
              localJSONException5.printStackTrace();
            }
          }
        }
        try
        {
          mNewInvoiceInfo.setInvoinceTypes(paramHttpResponse.getJSONObject());
          getInvoiceHeaderTypes();
          return;
        }
        catch (Exception localException8)
        {
          for (;;)
          {
            localException8.printStackTrace();
          }
        }
        try
        {
          mNewInvoiceInfo.setInvoinceHeaders(paramHttpResponse.getJSONObject());
          if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy) || (Constants.bEasyBuy))
          {
            getInvoiceContentsGeneral();
            return;
          }
        }
        catch (Exception localException7)
        {
          for (;;)
          {
            localException7.printStackTrace();
          }
          getInvoiceContentsBook();
          return;
        }
        try
        {
          mNewInvoiceInfo.setInvoinceBooks(paramHttpResponse.getJSONObject());
          if (!mNewInvoiceInfo.getInvoinceBooks().toString().contains("不开发票"))
          {
            JSONObject localJSONObject2 = new JSONObject();
            localJSONObject2.put("Name", "不开发票");
            localJSONObject2.put("Id", "-1");
            mNewInvoiceInfo.getInvoinceBooks().getJSONObject("InvoiceContents").getJSONArray("InvoiceContents").put(localJSONObject2);
          }
          getInvoiceContentsGeneral();
          return;
        }
        catch (Exception localException6)
        {
          for (;;)
          {
            localException6.printStackTrace();
          }
        }
        if ((this.mPromiseTime != null) && (this.mPromiseTime.isVisibility()) && (this.mPromiseTime.isUploading))
        {
          this.mPromiseTime.isUploading = false;
          this.mPromiseTime.isManual = 0;
        }
        for (;;)
        {
          try
          {
            Boolean localBoolean = paramHttpResponse.getJSONObject().getBooleanOrNull("miaoSha");
            if (localBoolean == null) {
              continue;
            }
            bool = localBoolean.booleanValue();
            this.isMS = bool;
            this.preferentialMessage = paramHttpResponse.getJSONObject().getStringOrNull("message");
            String str = paramHttpResponse.getJSONObject().getStringOrNull("message2");
            this.priceDifferentTips = paramHttpResponse.getJSONObject().getStringOrNull("Rpmessage");
            this.jbYunFeeList = paramHttpResponse.getJSONObject().getJSONArray("yunfeeList");
            JSONObjectProxy localJSONObjectProxy3 = paramHttpResponse.getJSONObject().getJSONObjectOrNull("OrderStr");
            if (localJSONObjectProxy3 != null)
            {
              if (!localJSONObjectProxy3.isNull("IsUseJdBean"))
              {
                bUseJdbean = localJSONObjectProxy3.getBoolean("IsUseJdBean");
                jbOrderStr.put("isUseJdBean", bUseJdbean);
              }
              UsedJdbean localUsedJdbean = new UsedJdbean(localJSONObjectProxy3, 0);
              currJdbean = localUsedJdbean;
              jbOrderStr.put("canUseJdBeanCount", currJdbean.getCanUseJdBeanCount());
              jbOrderStr.put("totalJdBeanCount", currJdbean.getTotalJdBeanCount());
            }
            setPayOnlineTips(str);
          }
          catch (Exception localException4)
          {
            boolean bool;
            Runnable local23;
            JSONObject localJSONObject1;
            localException4.printStackTrace();
            continue;
            CommonUtil.setCityIDToSharedPreferences(null);
            continue;
            CommonUtil.setDistrictIdToSharedPreferences(null);
            continue;
            CommonUtil.setTownIdToSharedPreferences(null);
            continue;
            if ((Constants.bEasyBuy) || (Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy) || (!this.submit)) {
              continue;
            }
            submitOrder();
            this.submit = false;
            continue;
          }
          showJdbeanView();
          isChangeJingOrDongQuan = false;
          setMoneyInfo(this.jbYunFeeList);
          if (!TextUtils.isEmpty(this.preferentialMessage))
          {
            local23 = new Runnable()
            {
              public void run()
              {
                Toast.makeText(FillOrderActivity.this, FillOrderActivity.this.preferentialMessage, 0).show();
              }
            };
            post(local23);
          }
          localJSONObject1 = LastOrderInfo.mUserInfo.getUserAddr();
          if (localJSONObject1 != null) {}
          try
          {
            if ((localJSONObject1.has("IdProvince")) && (!TextUtils.equals(localJSONObject1.getString("IdProvince"), "0")))
            {
              CommonUtil.setProvinceIDToSharedPreferences(localJSONObject1.getString("IdProvince"));
              if (!localJSONObject1.has("IdCity")) {
                continue;
              }
              CommonUtil.setCityIDToSharedPreferences(localJSONObject1.getString("IdCity"));
              if (!localJSONObject1.has("IdArea")) {
                continue;
              }
              CommonUtil.setDistrictIdToSharedPreferences(localJSONObject1.getString("IdArea"));
              if (!localJSONObject1.has("IdTown")) {
                continue;
              }
              CommonUtil.setTownIdToSharedPreferences(localJSONObject1.getString("IdTown"));
            }
          }
          catch (Exception localException5)
          {
            for (;;)
            {
              JSONArray localJSONArray;
              int j;
              int k;
              int n;
              Thread local24;
              JSONObjectProxy localJSONObjectProxy2;
              JSONObjectProxy localJSONObjectProxy1;
              continue;
              k++;
            }
          }
          if ((!Constants.bEasyBuy) || (!this.submit)) {
            continue;
          }
          this.submit = false;
          submitEasyBuyOrder();
          if (!this.isUpdatePayment) {
            break;
          }
          isNeedInputPassword();
          return;
          bool = false;
        }
        messageAfterSubmit(paramHttpResponse.getJSONObject());
        return;
        if ((this.mPromiseTime != null) && (this.mPromiseTime.isVisibility()) && (this.mPromiseTime.isUploading))
        {
          this.mPromiseTime.isUploading = false;
          this.mPromiseTime.isManual = 0;
        }
        try
        {
          messageAfterSubmit(paramHttpResponse.getJSONObject());
          return;
        }
        catch (Exception localException3)
        {
          localException3.printStackTrace();
          return;
        }
        for (;;)
        {
          try
          {
            mNewInvoiceInfo.setInvoinceGenerals(paramHttpResponse.getJSONObject());
            if (!mNewInvoiceInfo.getInvoinceGenerals().toString().contains("InvoiceContents")) {
              this.onlyBook = true;
            }
            if (mNewInvoiceInfo.getInvoinceGenerals().toString().contains("InvoiceContentsBook")) {
              break label1959;
            }
            this.noBook = true;
            localJSONArray = mNewInvoiceInfo.getInvoinceGenerals().getJSONObject("InvoiceContents").getJSONArray("InvoiceContents");
            j = -1;
          }
          catch (Exception localException2)
          {
            int i1;
            int m;
            localException2.printStackTrace();
            continue;
          }
          try
          {
            i1 = LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getInt("IdInvoiceContentsType");
            j = i1;
          }
          catch (JSONException localJSONException4)
          {
            localJSONException4.printStackTrace();
          }
        }
        k = 0;
        m = localJSONArray.length();
        n = 0;
        if (k >= m) {
          if (n == 0)
          {
            LastOrderInfo.mInvoiceInfo.getInvoiceInfo().put("IdInvoiceContentsType", localJSONArray.getJSONObject(0).getInt("Id"));
            jbOrderStr.put("IdInvoiceContentsType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentsType"));
          }
        }
        for (;;)
        {
          setInvoinceInfoArea();
          if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
            break;
          }
          getBalance();
          return;
          if (localJSONArray.getJSONObject(k).getInt("Id") != j) {
            break label2297;
          }
          n = 1;
          break label1842;
          mNewInvoiceInfo.setInvoinceBooks(paramHttpResponse.getJSONObject().getJSONObject("InvoiceContentsBook"));
        }
        try
        {
          currBalance = new UsedBalance(paramHttpResponse.getJSONObject(), 0);
          setBalanceView();
          this.isUpdatePayment = true;
          local24 = new Thread()
          {
            public void run()
            {
              setName("FillOrderActivity_getOrderInfoFromSer");
              super.run();
              try
              {
                Thread.sleep(50L);
                FillOrderActivity.this.calculateOrder();
                return;
              }
              catch (InterruptedException localInterruptedException)
              {
                for (;;)
                {
                  localInterruptedException.printStackTrace();
                }
              }
            }
          };
          local24.start();
          return;
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            localException1.printStackTrace();
          }
        }
        try
        {
          localJSONObjectProxy2 = paramHttpResponse.getJSONObject().getJSONObjectOrNull("createTemp");
          if ((localJSONObjectProxy2 != null) && (localJSONObjectProxy2.get("Flag") != null) && (localJSONObjectProxy2.getBoolean("Flag")))
          {
            ShowMsg(getResources().getString(2131165999));
            fininshAddEasyTemp();
            return;
          }
        }
        catch (JSONException localJSONException3)
        {
          localJSONException3.printStackTrace();
          return;
        }
      } while ((localJSONObjectProxy2 == null) || (localJSONObjectProxy2.get("Flag") == null) || (localJSONObjectProxy2.getBoolean("Flag")));
      if (!localJSONObjectProxy2.isNull("Message"))
      {
        ShowMsg(localJSONObjectProxy2.getString("Message"));
        return;
      }
      ShowMsg(getResources().getString(2131166000));
      return;
      try
      {
        localJSONObjectProxy1 = paramHttpResponse.getJSONObject().getJSONObjectOrNull("createTemp");
        if ((localJSONObjectProxy1 != null) && (localJSONObjectProxy1.get("Flag") != null) && (localJSONObjectProxy1.getBoolean("Flag")))
        {
          ShowMsg(getResources().getString(2131166001));
          fininshAddEasyTemp();
          return;
        }
      }
      catch (JSONException localJSONException2)
      {
        localJSONException2.printStackTrace();
        return;
      }
    } while ((localJSONObjectProxy1 == null) || (localJSONObjectProxy1.get("Flag") == null) || (localJSONObjectProxy1.getBoolean("Flag")));
    label1959:
    if (!localJSONObjectProxy1.isNull("Message"))
    {
      ShowMsg(localJSONObjectProxy1.getString("Message"));
      return;
    }
    ShowMsg(getResources().getString(2131166002));
  }
  
  private void getPaymentDetatilInformation(int paramInt)
  {
    String str1 = null;
    String str2;
    if ((paramInt == 1) || (paramInt == 4) || (paramInt == 2)) {
      str2 = "shipmentTypesInfo";
    }
    for (;;)
    {
      try
      {
        jbOrderStr.put("IdPaymentType", paramInt);
        boolean bool1 = Constants.bAddEasyBuy;
        str1 = null;
        if (!bool1)
        {
          boolean bool2 = Constants.bModifyEasyBuy;
          str1 = null;
          if (!bool2)
          {
            boolean bool3 = Constants.bEasyBuy;
            str1 = null;
            if ((!bool3) && (!this.isEasyBuy)) {
              continue;
            }
          }
        }
        str1 = "easyBuyShipmentTypes";
        jbBody.put("OrderStr", jbOrderStr);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      setUpConnAndGetData(str1, jbBody, str2);
      if (paramInt == 4) {}
      try
      {
        jbOrderStr.put("IdPaymentType", 4);
        return;
      }
      catch (JSONException localJSONException1)
      {
        localJSONException1.printStackTrace();
      }
      str1 = "shipmentTypes";
      resetJBBody();
      continue;
      str1 = null;
      str2 = null;
      if (paramInt == 3)
      {
        str2 = "pickSitesInfo";
        try
        {
          jbOrderStr.put("IdPaymentType", paramInt);
          boolean bool4 = Constants.bAddEasyBuy;
          str1 = null;
          if (!bool4)
          {
            boolean bool5 = Constants.bModifyEasyBuy;
            str1 = null;
            if (!bool5)
            {
              boolean bool6 = Constants.bEasyBuy;
              str1 = null;
              if ((!bool6) && (!this.isEasyBuy)) {
                break label237;
              }
            }
          }
          str1 = "easyBuyPickSites";
          jbBody.put("OrderStr", jbOrderStr);
        }
        catch (JSONException localJSONException2)
        {
          localJSONException2.printStackTrace();
        }
        continue;
        label237:
        str1 = "pickSites";
        resetJBBody();
      }
    }
  }
  
  private void getPaymentTypes()
  {
    comositeBody();
    if (this.isEasyBuy) {}
    for (String str = "easyBuyPaymentType";; str = "paymentType")
    {
      setUpConnAndGetData(str, jbBody, "paymentInfo");
      return;
    }
  }
  
  private void getPostAddr()
  {
    try
    {
      jbOrderStr.put("IdPaymentType", 2);
      resetJBBody();
      setUpConnAndGetData("postAddress", jbBody, "postInfo");
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
  
  private void getProvices()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", this.lsPin);
      localJSONObject.put("action", "GetProvinces");
      if ((Constants.bModifyEasyBuy) || (Constants.bAddEasyBuy) || (Constants.bEasyBuy))
      {
        setUpConnAndGetData("easyBuyOrderAddress", localJSONObject, "GetProvinces");
        return;
      }
      if ((jbCartStr.has("TheSkus")) && (jbCartStr.getJSONArray("TheSkus") != null)) {
        localJSONObject.put("TheSkus", jbCartStr.getJSONArray("TheSkus"));
      }
      if ((jbCartStr.has("ThePacks")) && (jbCartStr.getJSONArray("ThePacks") != null)) {
        localJSONObject.put("ThePacks", jbCartStr.getJSONArray("ThePacks"));
      }
      setUpConnAndGetData("orderAddress", localJSONObject, "GetProvinces");
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void getRemark()
  {
    this.sRemark = this.mRemark.getText().toString();
    if ((this.sRemark != null) && (this.sRemark != " ") && (this.sRemark.length() > 0)) {}
    try
    {
      jbOrderStr.put("Remark", this.sRemark);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private int getType(String paramString)
  {
    if (paramString.compareTo("lastOderInfo") == 0) {
      return 1;
    }
    if (paramString.compareTo("GetProvinces") == 0) {
      return 2;
    }
    if (paramString.compareTo("GetCitys") == 0) {
      return 11;
    }
    if (paramString.compareTo("GetAreas") == 0) {
      return 12;
    }
    if (paramString.compareTo("paymentInfo") == 0) {
      return 3;
    }
    if (paramString.compareTo("shipmentTypesInfo") == 0) {
      return 4;
    }
    if (paramString.compareTo("pickSitesInfo") == 0) {
      return 5;
    }
    if (paramString.compareTo("postInfo") == 0) {
      return 6;
    }
    if (paramString.compareTo("invoiceTypesInfo") == 0) {
      return 7;
    }
    if (paramString.compareTo("invoiceHeaderTypeInfo") == 0) {
      return 8;
    }
    if (paramString.compareTo("invoiceContentsBook") == 0) {
      return 9;
    }
    if (paramString.compareTo("invoiceContentsGeneral") == 0) {
      return 10;
    }
    if (paramString.compareTo("yunfeeList") == 0) {
      return 13;
    }
    if (paramString.compareTo("submitOrder") == 0) {
      return 14;
    }
    if (paramString.compareTo("usedBalanceMap") == 0) {
      return 15;
    }
    if (paramString.compareTo("couponInfo") == 0) {
      return 16;
    }
    if (paramString.compareTo("addGiftCart") == 0) {
      return 17;
    }
    if (paramString.compareTo("easyBuyAddOrderTemp") == 0) {
      return 18;
    }
    if (paramString.compareTo("easyBuyPaymentType") == 0) {
      return 20;
    }
    if (paramString.compareTo("easyBuySubmitOrder") == 0) {
      return 19;
    }
    if (paramString.compareTo("easyBuyModifyTemp") == 0) {
      return 22;
    }
    return -1;
  }
  
  private void gotoEdidtCurrentAndNewAddress()
  {
    Intent localIntent = new Intent(this, EditOrderAddressActivity.class);
    localIntent.putExtra("PageType", 5);
    startActivityForResult(localIntent, 1);
  }
  
  private void gotoEdidtOrListAddress()
  {
    if (this.isNoRegisterOrder)
    {
      startActivityForResult(new Intent(this, EditOrderAddressListActivity.class), 1);
      return;
    }
    Intent localIntent = new Intent(this, EditOrderAddressActivity.class);
    localIntent.putExtra("PageType", 4);
    startActivityForResult(localIntent, 1);
  }
  
  private boolean handle311And411(JSONObject paramJSONObject, Map<String, String> paramMap, int paramInt)
  {
    if (this.mPromiseTime != null) {}
    for (boolean bool = this.mPromiseTime.isCanSelected(paramJSONObject);; bool = false)
    {
      if (!bool)
      {
        this.mPromiseTime = SelectPaymentTypeActivity.PromiseTime.selectDefaultPromiseTime(paramInt, paramJSONObject);
        if ((this.mPromiseTime != null) && (this.mPromiseTime.isVisibility())) {
          bool = true;
        }
      }
      if (!bool) {
        break;
      }
      if ((paramMap != null) && (this.mPromiseTime != null) && (this.mPromiseTime.isVisibility())) {
        paramMap.put("mCodTime", this.mPromiseTime.showText);
      }
      return bool;
    }
    this.mPromiseTime = null;
    return bool;
  }
  
  private void handleClickEvent()
  {
    this.mSubmit.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (Constants.bAddEasyBuy)
        {
          if (FillOrderActivity.this.mTempName.getText().toString().length() < 1)
          {
            Toast.makeText(FillOrderActivity.this, FillOrderActivity.this.getResources().getString(2131165994), 0).show();
            return;
          }
          if (!CommonUtil.checkUsername(FillOrderActivity.this.mTempName.getText().toString()))
          {
            Toast.makeText(FillOrderActivity.this, FillOrderActivity.this.getResources().getString(2131165995), 0).show();
            return;
          }
          try
          {
            if (FillOrderActivity.bUseBalance) {
              FillOrderActivity.jbOrderStr.put("IsUseBalance", true);
            }
            for (;;)
            {
              FillOrderActivity.this.addEasyBuyTemp(FillOrderActivity.this.mTempName.getText().toString());
              return;
              FillOrderActivity.jbOrderStr.put("IsUseBalance", false);
            }
          }
          catch (JSONException localJSONException3)
          {
            for (;;)
            {
              localJSONException3.printStackTrace();
            }
          }
        }
        if (Constants.bModifyEasyBuy)
        {
          if (FillOrderActivity.this.mTempName.getText().toString().length() < 1)
          {
            Toast.makeText(FillOrderActivity.this, FillOrderActivity.this.getResources().getString(2131165994), 0).show();
            return;
          }
          if (!CommonUtil.checkUsername(FillOrderActivity.this.mTempName.getText().toString()))
          {
            Toast.makeText(FillOrderActivity.this, FillOrderActivity.this.getResources().getString(2131165995), 0).show();
            return;
          }
          try
          {
            FillOrderActivity.jbOrderStr.put("IsUseBalance", false);
            FillOrderActivity.this.modifyEasyBuyTemp(FillOrderActivity.this.mTempName.getText().toString(), DefaultEasyTempOrderInfo.sTempId);
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
        FillOrderActivity.this.hideInputKey();
        int i = 0;
        int j;
        if (i >= FillOrderActivity.this.defrayEtArray.size()) {
          j = 0;
        }
        for (;;)
        {
          if (j >= FillOrderActivity.this.defrayEtArray.size())
          {
            FillOrderActivity.this.mSubmit.setClickable(false);
            new Thread()
            {
              public void run()
              {
                setName("FillOrderActivity_handleClickEvent");
                try
                {
                  Thread.sleep(3000L);
                  FillOrderActivity.this.mSubmit.setClickable(true);
                  return;
                }
                catch (InterruptedException localInterruptedException) {}
              }
            }.start();
            FillOrderActivity.this.submit = true;
            FillOrderActivity.this.getRemark();
            FillOrderActivity.this.resetJBBody();
            FillOrderActivity.this.calculateOrder();
            return;
            EditText localEditText1 = (EditText)FillOrderActivity.this.defrayEtArray.get(i);
            if (localEditText1.getText().toString().trim().length() <= 0)
            {
              localEditText1.startAnimation(AnimationUtils.loadAnimation(FillOrderActivity.this.context, 2130968592));
              localEditText1.requestFocus();
              return;
            }
            i++;
            break;
          }
          EditText localEditText2 = (EditText)FillOrderActivity.this.defrayEtArray.get(j);
          String str1 = localEditText2.getTag().toString();
          String str2 = localEditText2.getText().toString().trim();
          if ((str1 != null) && (str2 != null) && (str1.length() > 0) && (str2.length() > 0)) {}
          try
          {
            FillOrderActivity.jbOrderStr.put(str1, Md5Encrypt.md5(str2));
            j++;
          }
          catch (JSONException localJSONException1)
          {
            for (;;)
            {
              localJSONException1.printStackTrace();
            }
          }
        }
      }
    });
    if (!this.isNoRegisterOrder)
    {
      this.orderLoginTipsLayout.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          FillOrderActivity.this.forwardLoginPage();
        }
      });
      this.noRegisterSubmitBut.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (FillOrderActivity.this.vsp == null) {
            FillOrderActivity.this.vsp = new FillOrderActivity.VerificationSMSPassword(FillOrderActivity.this, new QuickRegisterLoginListener.QuickRegisterLoginStatusListener()
            {
              public void onFailed(final String paramAnonymous2String)
              {
                FillOrderActivity.this.handler.post(new Runnable()
                {
                  public void run()
                  {
                    FillOrderActivity.this.sendtips.setText(paramAnonymous2String);
                    FillOrderActivity.this.sendtips.setVisibility(0);
                  }
                });
              }
              
              public void onSuccess(String paramAnonymous2String1, String paramAnonymous2String2)
              {
                try
                {
                  FillOrderActivity.this.verificationPass = true;
                  FillOrderActivity.jbOrderStr.put("pin", paramAnonymous2String1);
                  FillOrderActivity.jbOrderStr.put("OrderType", 1);
                  FillOrderActivity.this.handler.post(new Runnable()
                  {
                    public void run()
                    {
                      FillOrderActivity.this.timerI = 0;
                      FillOrderActivity.this.sendMobileEt.setEnabled(false);
                      FillOrderActivity.this.mobilePasswordEt.setEnabled(false);
                      FillOrderActivity.this.getMobiblePasswordBut.setEnabled(false);
                      FillOrderActivity.this.noRegisterSubmitBut.setText("立即下单(验证已通过)");
                      FillOrderActivity.this.noRegisterSubmitBut.setBackgroundResource(2130837547);
                      FillOrderActivity.this.sendtips.setVisibility(8);
                      FillOrderActivity.this.submit = true;
                      FillOrderActivity.this.getRemark();
                      FillOrderActivity.this.resetJBBody();
                      FillOrderActivity.this.calculateOrder();
                    }
                  });
                  return;
                }
                catch (JSONException localJSONException)
                {
                  localJSONException.printStackTrace();
                }
              }
            }, FillOrderActivity.this);
          }
          if (FillOrderActivity.this.verificationPass)
          {
            FillOrderActivity.this.submit = true;
            FillOrderActivity.this.getRemark();
            FillOrderActivity.this.resetJBBody();
            FillOrderActivity.this.calculateOrder();
            return;
          }
          FillOrderActivity.this.vsp.setPhone(FillOrderActivity.this.sendMobileEt.getText().toString().trim());
          FillOrderActivity.this.vsp.setPassword(FillOrderActivity.this.mobilePasswordEt.getText().toString().trim());
          FillOrderActivity.this.vsp.onClick(paramAnonymousView);
        }
      });
      final CountdownDrawable localCountdownDrawable = new CountdownDrawable(this.context);
      localCountdownDrawable.setText("获取短信密码");
      localCountdownDrawable.setType(1);
      localCountdownDrawable.setTextSize(this.getMobiblePasswordText.getTextSize());
      this.getMobiblePasswordText.setBackgroundDrawable(localCountdownDrawable);
      this.getMobiblePasswordBut.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ((InputMethodManager)FillOrderActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(FillOrderActivity.this.sendMobileEt.getWindowToken(), 0);
          String str = FillOrderActivity.this.sendMobileEt.getText().toString().trim();
          if (str.length() <= 0)
          {
            FillOrderActivity.this.sendMobileEt.setError(Html.fromHtml("<font color='red'>请输入手机号码</font>"));
            return;
          }
          new FillOrderActivity.SendMobilePassword(FillOrderActivity.this, new QuickRegisterListener.QuickRegisterStatusListener()
          {
            public void onFailed(final String paramAnonymous2String)
            {
              FillOrderActivity.this.handler.post(new Runnable()
              {
                public void run()
                {
                  FillOrderActivity.this.sendtips.setText(paramAnonymous2String);
                  FillOrderActivity.this.sendtips.setVisibility(0);
                }
              });
            }
            
            public void onSuccess(String paramAnonymous2String)
            {
              FillOrderActivity.this.timerI = 120;
              FillOrderActivity.this.handler.post(new Runnable()
              {
                public void run()
                {
                  FillOrderActivity.this.sendtips.setText("短信密码发送成功,请输入...");
                }
              });
              FillOrderActivity.this.handler.postDelayed(new Runnable()
              {
                public void run()
                {
                  if (FillOrderActivity.this.timerI >= 0)
                  {
                    this.val$drawable.setText("获取短信密码(" + FillOrderActivity.this.timerI + ")");
                    this.val$drawable.invalidateSelf();
                    if (FillOrderActivity.this.getMobiblePasswordBut.isEnabled())
                    {
                      FillOrderActivity.this.getMobiblePasswordBut.setEnabled(false);
                      this.val$drawable.setTextColor(-7829368);
                      FillOrderActivity.this.getMobiblePasswordText.setText("获取短信密码(120)");
                      FillOrderActivity.this.getMobiblePasswordBut.setText("获取短信密码(120)");
                      FillOrderActivity.this.sendMobileEt.setEnabled(false);
                    }
                    FillOrderActivity localFillOrderActivity = FillOrderActivity.this;
                    localFillOrderActivity.timerI = (-1 + localFillOrderActivity.timerI);
                    FillOrderActivity.this.handler.postDelayed(this, 1000L);
                  }
                  do
                  {
                    return;
                    this.val$drawable.setText("获取短信密码");
                    this.val$drawable.invalidateSelf();
                    FillOrderActivity.this.sendtips.setText("短信密码超时,请您重新获取。");
                  } while (FillOrderActivity.this.verificationPass);
                  FillOrderActivity.this.getMobiblePasswordBut.setEnabled(true);
                  this.val$drawable.setTextColor(-16777216);
                  FillOrderActivity.this.getMobiblePasswordText.setText("获取短信密码");
                  FillOrderActivity.this.getMobiblePasswordBut.setText("获取短信密码");
                  FillOrderActivity.this.sendMobileEt.setEnabled(true);
                }
              }, 1000L);
            }
          }, FillOrderActivity.this, str).onClick(paramAnonymousView);
          FillOrderActivity.this.sendtips.setText("正在发送密码...");
          FillOrderActivity.this.sendtips.setVisibility(0);
        }
      });
    }
  }
  
  private boolean hasIt(JSONArray paramJSONArray, int paramInt)
  {
    int i = 0;
    for (;;)
    {
      if (i >= paramJSONArray.length()) {
        return false;
      }
      try
      {
        int j = paramJSONArray.getJSONObject(i).getInt("Id");
        if (j == paramInt) {
          return true;
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        i++;
      }
    }
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
        FillOrderActivity.this.defray_passwork_input_layout.removeAllViews();
        FillOrderActivity.this.defray_passwork_layout.setVisibility(8);
        FillOrderActivity.this.defrayEtArray.clear();
        FillOrderActivity.this.hideInputKey();
      }
    });
  }
  
  private void initComponent()
  {
    this.mRemarkLayout = ((RelativeLayout)findViewById(2131493353));
    this.viewGap6 = findViewById(2131493356);
    this.mTitle = ((TextView)findViewById(2131492990));
    if (Constants.bAddEasyBuy)
    {
      this.mTitle.setText(2131166041);
      if ((Constants.bEasyBuy) || (this.isEasyBuy)) {
        this.mTitle.setText(2131166042);
      }
      this.receiverInfoList = ((ListView)findViewById(2131493991));
      this.paymentInfoList = ((ListView)findViewById(2131493951));
      this.selectPayOnline = ((TextView)findViewById(2131493414));
      this.mSubmit = ((Button)findViewById(2131493358));
      this.settleContent = ((ViewGroup)findViewById(2131493357));
      View localView = findViewById(2131493339);
      if ((localView != null) && ((localView instanceof ScrollView))) {
        this.scrollView = ((ScrollView)localView);
      }
      if (!Constants.bEasyBuy) {
        break label680;
      }
      this.mSubmit.setText(2131165760);
      label191:
      this.mLayoutBalance = ((LinearLayout)findViewById(2131493400));
      this.mTextViewBalance = ((TextView)findViewById(2131493349));
      this.mCheckboxBalance = ((CheckBox)findViewById(2131493401));
      this.mLayoutJdbean = ((LinearLayout)findViewById(2131493402));
      this.mTextViewJdbean = ((TextView)findViewById(2131493403));
      this.mCheckboxJdbean = ((CheckBox)findViewById(2131493404));
      this.mRemark = ((EditText)findViewById(2131493355));
      if (!Constants.bEasyBuy) {
        break label699;
      }
      this.mRemarkLayout.setVisibility(8);
      findViewById(2131493357).setVisibility(0);
      this.viewGap6.setVisibility(8);
      this.mRemark.setVisibility(8);
    }
    for (;;)
    {
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
        findViewById(2131493357).setVisibility(8);
      }
      this.defray_passwork_layout = ((LinearLayout)findViewById(2131493408));
      this.defray_passwork_input_layout = ((LinearLayout)findViewById(2131493409));
      this.pay_password_open_find_layout = ((LinearLayout)findViewById(2131493410));
      this.payPasswordView = ((TextView)findViewById(2131493411));
      this.payPasswordBtn = ((TextView)findViewById(2131493412));
      if (!this.isNoRegisterOrder)
      {
        this.orderLoginTipsLayout = ((FrameLayout)findViewById(2131493396));
        this.orderLoginTipsLayout.setVisibility(0);
        findViewById(2131493349).setVisibility(8);
        findViewById(2131493348).setVisibility(8);
        findViewById(2131493397).setVisibility(0);
        findViewById(2131493398).setVisibility(0);
        findViewById(2131493415);
        this.mSubmit.setVisibility(8);
        this.sendMobileEt = ((EditText)findViewById(2131493416));
        this.getMobiblePasswordText = ((TextView)findViewById(2131493419));
        this.getMobiblePasswordBut = ((Button)findViewById(2131493418));
        this.sendtips = ((TextView)findViewById(2131493420));
        this.mobilePasswordEt = ((EditText)findViewById(2131493421));
        this.noRegisterSubmitBut = ((Button)findViewById(2131493422));
        ((TextView)findViewById(2131493423)).setText(Html.fromHtml("<font color='#ff0000'>小贴士</font>: 订单提交成功后，您的手机号将自动注册为京东账号"));
      }
      if (this.isEasyBuy)
      {
        this.mLayoutBalance.setVisibility(8);
        this.mLayoutJdbean.setVisibility(8);
      }
      return;
      if (Constants.bModifyEasyBuy)
      {
        this.mTitle.setText(2131166038);
        break;
      }
      this.mTitle.setText(2131165969);
      break;
      label680:
      if (!Constants.bModifyEasyBuy) {
        break label191;
      }
      this.mSubmit.setText(2131166028);
      break label191;
      label699:
      if ((Constants.bModifyEasyBuy) || (Constants.bEasyBuy))
      {
        this.mRemarkLayout.setVisibility(8);
        this.viewGap6.setVisibility(8);
        this.mRemark.setVisibility(8);
      }
      else if (Constants.bAddEasyBuy)
      {
        this.mRemarkLayout.setVisibility(8);
        this.viewGap6.setVisibility(8);
      }
    }
  }
  
  private void initOrderView()
  {
    this.mSubmitLayout = findViewById(2131493425);
    this.mFinalPriceTv = ((TextView)findViewById(2131493426));
    TextView localTextView = (TextView)findViewById(2131493405);
    View localView = findViewById(2131493406);
    localTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FillOrderActivity.this.finish();
      }
    });
    localView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(FillOrderActivity.this.context, OrderCommodityActivity.class);
        FillOrderActivity.this.startActivity(localIntent);
      }
    });
    if (this.isEasyBuy)
    {
      localView.setVisibility(8);
      localTextView.setVisibility(8);
    }
  }
  
  private void initPayView(View paramView, Map<String, String> paramMap)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(2131493979);
    TextView localTextView2 = (TextView)paramView.findViewById(2131493980);
    if ((localTextView2 != null) && (localTextView2.getText().toString().trim().equals("")))
    {
      if (localTextView1 != null) {
        localTextView1.setVisibility(8);
      }
      localTextView2.setVisibility(8);
    }
    TextView localTextView3 = (TextView)paramView.findViewById(2131493973);
    TextView localTextView4 = (TextView)paramView.findViewById(2131493974);
    if (localTextView4.getText().toString().trim().equals(""))
    {
      localTextView3.setVisibility(8);
      localTextView4.setVisibility(8);
    }
    TextView localTextView5 = (TextView)paramView.findViewById(2131493975);
    TextView localTextView6 = (TextView)paramView.findViewById(2131493976);
    if (localTextView6.getText().toString().trim().equals(""))
    {
      localTextView5.setVisibility(8);
      localTextView6.setVisibility(8);
    }
    if (this.isEasyBuy) {
      paramView.findViewById(2131493570).setVisibility(8);
    }
    TextView localTextView7;
    TextView localTextView8;
    if (paramMap != null)
    {
      String str = (String)paramMap.get("mInforms");
      localTextView7 = (TextView)paramView.findViewById(2131493978);
      localTextView8 = (TextView)paramView.findViewById(2131493977);
      if ((localTextView8 != null) && (localTextView7 != null))
      {
        if (str == null) {
          break label302;
        }
        if (str.trim().length() <= 0) {
          break label287;
        }
        localTextView7.setVisibility(0);
        localTextView8.setVisibility(0);
      }
    }
    label287:
    label302:
    while (localTextView8.getVisibility() != 4)
    {
      return;
      localTextView7.setVisibility(8);
      localTextView8.setVisibility(8);
      return;
    }
    localTextView7.getVisibility();
  }
  
  private void initPromiseTime() {}
  
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
  
  private boolean isLastOrderInfoContainField(String paramString, JSONObjectProxy paramJSONObjectProxy)
  {
    return (paramJSONObjectProxy != null) && (paramJSONObjectProxy.toString().contains(paramString));
  }
  
  private void isNeedInputPassword()
  {
    this.isUpdatePayment = false;
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("showSecurityPayBlock4Client");
    localHttpSetting.setJsonParams(resetJBBody());
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(this.isNeedPasswordListener);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private boolean isOnlinePay(Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      return "在线支付".equals(this.sPayWay);
    }
    return paramBoolean.booleanValue();
  }
  
  private void messageAfterSubmit(final JSONObjectProxy paramJSONObjectProxy)
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        JSONObjectProxy localJSONObjectProxy1;
        for (;;)
        {
          try
          {
            if (LastOrderInfo.mPaymentInfo.nSelected == 1)
            {
              FillOrderActivity.this.sPayWay = "货到付款";
              localJSONObjectProxy1 = paramJSONObjectProxy.getJSONObject("submitOrder");
              FillOrderActivity.this.sOrderNo = localJSONObjectProxy1.getStringOrNull("OrderId");
              if ((TextUtils.isEmpty(FillOrderActivity.this.sOrderNo)) || ("0".equals(FillOrderActivity.this.sOrderNo))) {
                break label560;
              }
              Boolean localBoolean2 = paramJSONObjectProxy.getBooleanOrNull("onlinePay");
              String str2 = localJSONObjectProxy1.getStringOrNull("Price");
              if (!TextUtils.isEmpty(str2)) {
                FillOrderActivity.this.sTotalMoney = str2;
              }
              if ((LastOrderInfo.mPaymentInfo.nSelected != 4) || (!FillOrderActivity.this.isOnlinePay(localBoolean2)) || (TextUtils.isEmpty(FillOrderActivity.this.sTotalMoney)) || (TextUtils.equals(FillOrderActivity.this.sTotalMoney, "0"))) {
                break;
              }
              FillOrderActivity.this.doOnlinePay();
              FillOrderActivity.this.resetCoupon();
              return;
            }
            if (LastOrderInfo.mPaymentInfo.nSelected == 2)
            {
              FillOrderActivity.this.sPayWay = "邮局汇款";
              continue;
            }
            if (LastOrderInfo.mPaymentInfo.nSelected != 3) {
              break label224;
            }
          }
          catch (JSONException localJSONException)
          {
            FillOrderActivity.this.resetCoupon();
            return;
          }
          FillOrderActivity.this.sPayWay = "京东自提";
          continue;
          label224:
          if (LastOrderInfo.mPaymentInfo.nSelected == 4) {
            FillOrderActivity.this.sPayWay = "在线支付";
          } else {
            FillOrderActivity.this.sPayWay = "公司转账";
          }
        }
        Intent localIntent;
        Bundle localBundle;
        if (Constants.bEasyBuy)
        {
          Constants.jbOrderNum = new JSONObject();
          Constants.jbOrderNum.put("orderId", localJSONObjectProxy1.getStringOrNull("OrderId"));
          localIntent = new Intent(FillOrderActivity.this, CompleteOrderActivity.class);
          localBundle = new Bundle();
          localBundle.putString("order_no", FillOrderActivity.this.sOrderNo);
          localBundle.putString("order_money", FillOrderActivity.this.sTotalMoney);
          localBundle.putString("order_way", FillOrderActivity.this.sPayWay);
          localBundle.putBoolean("is_Easy_Buy", FillOrderActivity.this.isEasyBuy);
          if (!FillOrderActivity.this.isNoRegisterOrder)
          {
            localBundle.putBoolean("isNoRegisterOrder", FillOrderActivity.this.isNoRegisterOrder);
            localBundle.putString("MobileNumber", FillOrderActivity.this.sendMobileEt.getText().toString().trim());
          }
          if ((paramJSONObjectProxy == null) || (!paramJSONObjectProxy.toString().contains("coMsg")) || (paramJSONObjectProxy.getString("coMsg") == "null")) {
            break label548;
          }
          localBundle.putString("order_msg", paramJSONObjectProxy.getString("coMsg"));
        }
        for (;;)
        {
          localIntent.putExtras(localBundle);
          LastOrderInfo.mUserInfo = new UserInfo();
          LastOrderInfo.mPaymentInfo = new PaymentInfo();
          LastOrderInfo.mInvoiceInfo = new InvoiceInfo();
          LastOrderInfo.mYouhuiQuan = new YouHuiQuan();
          CommonUtil.getInstance().startActivityInFrame(FillOrderActivity.this, localIntent);
          FillOrderActivity.this.resetCoupon();
          return;
          FillOrderActivity.this.clearCart();
          break;
          label548:
          localBundle.putString("order_msg", " ");
        }
        label560:
        JSONObjectProxy localJSONObjectProxy2 = paramJSONObjectProxy.getJSONObjectOrNull("submitOrder");
        String str1;
        if (localJSONObjectProxy2 != null)
        {
          str1 = localJSONObjectProxy2.getStringOrNull("Message");
          Boolean localBoolean1 = localJSONObjectProxy2.getBooleanOrNull("isIdTown");
          if ((localBoolean1 == null) || (!localBoolean1.booleanValue())) {
            if ((str1 == null) || ("null".equals(str1))) {
              break label680;
            }
          }
        }
        for (;;)
        {
          Constants.ShowMsg(str1, FillOrderActivity.this);
          return;
          FillOrderActivity localFillOrderActivity = FillOrderActivity.this;
          if ((str1 == null) || ("null".equals(str1))) {
            str1 = FillOrderActivity.this.getString(2131166464);
          }
          DialogUtils.showDailog(localFillOrderActivity, str1, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              FillOrderActivity.this.gotoEdidtCurrentAndNewAddress();
            }
          });
          return;
          label680:
          str1 = "订单提交失败，请重试。";
        }
      }
    });
  }
  
  private String miaoShaoMd5Encrypt(String paramString1, String paramString2)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append("clientVersion");
    localSpannableStringBuilder.append(StatisticsReportUtil.getSoftwareVersionName());
    localSpannableStringBuilder.append("client");
    localSpannableStringBuilder.append("android");
    localSpannableStringBuilder.append("functionId");
    localSpannableStringBuilder.append(paramString1);
    localSpannableStringBuilder.append("timestamp");
    localSpannableStringBuilder.append(paramString2);
    localSpannableStringBuilder.append("uuid");
    localSpannableStringBuilder.append(StatisticsReportUtil.readDeviceUUID());
    localSpannableStringBuilder.append(CommonUtil.getMiaoShaKey());
    return Md5Encrypt.md5(localSpannableStringBuilder.toString().trim());
  }
  
  private void modifyEasyBuyTemp(String paramString, Long paramLong)
  {
    for (;;)
    {
      try
      {
        jbBody = null;
        jbBody = new JSONObject();
        if ((!jbOrderStr.toString().contains("IdInvoiceContentTypeBook")) || (jbOrderStr.getInt("IdInvoiceContentTypeBook") == -1)) {
          continue;
        }
        jbOrderStr.put("IsPutBookInvoice", true);
        jbBody.put("OrderStr", jbOrderStr);
        jbBody.put("templateName", paramString);
        jbBody.put("Id", paramLong);
      }
      catch (JSONException localJSONException)
      {
        HttpGroup.HttpSetting localHttpSetting;
        localJSONException.printStackTrace();
        continue;
      }
      finally {}
      localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setPost(true);
      localHttpSetting.setFunctionId("easyBuyModifyOrderTemp");
      localHttpSetting.setJsonParams(jbBody);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          FillOrderActivity.this.getOrderInfoFromSer(paramAnonymousHttpResponse, "easyBuyModifyTemp");
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      jbOrderStr.put("IsPutBookInvoice", false);
    }
  }
  
  private void recalOrderAfterYouHui()
  {
    JSONArray localJSONArray1 = new JSONArray();
    JSONArray localJSONArray2 = new JSONArray();
    JSONObject localJSONObject1 = new JSONObject();
    int j;
    for (;;)
    {
      label196:
      try
      {
        if (Constants.jdSwitch) {
          if ((Constants.dongSel != null) && (Constants.dongSel.toString() != "null") && (Constants.dongSel.get("Id") != null) && (Constants.dongSel.toString() != ""))
          {
            localJSONObject1.put("Id", Constants.dongSel.get("Id"));
            localJSONArray1.put(localJSONObject1);
            jbOrderStr.put("TheCoupons", localJSONArray1);
            if ((Constants.liSelArray == null) || (Constants.liSelArray.toString() == "null")) {
              break label825;
            }
            int i = Constants.liSelArray.length();
            if (i <= 0) {
              break label825;
            }
            j = 0;
            localObject2 = localJSONObject1;
          }
        }
      }
      catch (Exception localException1) {}
      try
      {
        if (j < Constants.liSelArray.length()) {
          break label590;
        }
        if ((localJSONArray2.toString() != "") && (localJSONArray2.toString() != "[]") && (localJSONArray2.length() >= 1)) {
          break label808;
        }
        jbOrderStr.put("TheLipinkas", null);
        resetJBBody();
        appendPromistTime(jbBody);
        setUpConnAndGetData("calcOrder", jbBody, "yunfeeList");
        return;
      }
      catch (Exception localException3)
      {
        for (;;)
        {
          int k;
          continue;
          Object localObject3 = localObject2;
          continue;
          k++;
        }
      }
      jbOrderStr.put("TheCoupons", null);
    }
    for (;;)
    {
      label562:
      label825:
      for (;;)
      {
        localException1.printStackTrace();
        break;
        Object localObject1 = "";
        if ((Constants.jinSelArray == null) || (Constants.jinSelArray.toString() == "null") || (Constants.jinSelArray.toString() == "") || (Constants.jinSelArray.length() <= 0)) {
          break label576;
        }
        k = 0;
        JSONArray localJSONArray3;
        if (k >= Constants.jinSelArray.length())
        {
          if (localObject1 == "") {
            break label562;
          }
          localJSONArray3 = new JSONArray("[" + (String)localObject1 + "]");
        }
        JSONObject localJSONObject4;
        String str;
        label576:
        label590:
        try
        {
          jbOrderStr.put("TheCoupons", localJSONArray3);
        }
        catch (Exception localException2) {}
      }
      try
      {
        new JSONObject();
        if ((Constants.jinSelArray.get(k) == "") || (Constants.jinSelArray.get(k).toString() == "") || (Constants.jinSelArray.getJSONObject(k) == null) || (Constants.jinSelArray.getJSONObject(k).toString() == "null")) {
          break label864;
        }
        localJSONObject4 = Constants.jinSelArray.getJSONObject(k);
        if ((localJSONObject4 == null) || (localJSONObject4.toString() == "null") || (localJSONObject4.get("Id") == "")) {
          break label864;
        }
        localJSONObject1.put("Id", localJSONObject4.get("Id"));
        if (k == 0)
        {
          localObject1 = localObject1 + localJSONObject1.toString();
        }
        else
        {
          str = localObject1 + "," + localJSONObject1.toString();
          localObject1 = str;
        }
      }
      catch (JSONException localJSONException3)
      {
        localJSONException3.printStackTrace();
      }
      jbOrderStr.put("TheCoupons", null);
      break;
      jbOrderStr.put("TheCoupons", null);
      break;
      for (;;)
      {
        try
        {
          JSONObject localJSONObject2 = new JSONObject();
          if ((localJSONObject2 == null) || (localJSONObject2.toString() == "null") || (Constants.liSelArray.get(j) == "") || (Constants.liSelArray.get(j).toString() == "") || (Constants.liSelArray.getJSONObject(j).toString() == "") || (Constants.liSelArray.getJSONObject(j) == null)) {
            break label857;
          }
          localJSONObject3 = Constants.liSelArray.getJSONObject(j);
          if ((localJSONObject3 == null) || (localJSONObject3.toString() == "null")) {
            break label857;
          }
          localObject3 = new JSONObject();
        }
        catch (JSONException localJSONException1)
        {
          try
          {
            JSONObject localJSONObject3;
            ((JSONObject)localObject3).put("Id", localJSONObject3.get("Id"));
            ((JSONObject)localObject3).put("DiscountCurUsed", localJSONObject3.get("DiscountCurUsed"));
            ((JSONObject)localObject3).put("DiscountBind", localJSONObject3.get("DiscountBind"));
            ((JSONObject)localObject3).put("DiscountUsed", localJSONObject3.get("DiscountUsed"));
            localJSONArray2.put(localObject3);
            j++;
            localObject2 = localObject3;
          }
          catch (JSONException localJSONException2)
          {
            break label800;
          }
          localJSONException1 = localJSONException1;
          localObject3 = localObject2;
        }
        label800:
        localJSONException1.printStackTrace();
      }
      label808:
      jbOrderStr.put("TheLipinkas", localJSONArray2);
      break label196;
      jbOrderStr.put("TheLipinkas", null);
      break label196;
    }
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
  
  private JSONObject resetJBBody()
  {
    for (;;)
    {
      try
      {
        jbBody = null;
        jbBody = new JSONObject();
        try
        {
          if (jbOrderStr == null) {
            jbOrderStr = new JSONObject();
          }
          if ((!jbOrderStr.toString().contains("IdInvoiceContentTypeBook")) || (jbOrderStr.getInt("IdInvoiceContentTypeBook") == -1)) {
            continue;
          }
          jbOrderStr.put("IsPutBookInvoice", true);
          if (!this.isEasyBuy) {
            break label161;
          }
          jbOrderStr.put("IsUseBalance", false);
          jbBody.put("isEasyBuy", true);
          jbBody.put("OrderStr", jbOrderStr);
          jbBody.put("CartStr", jbCartStr);
        }
        catch (JSONException localJSONException)
        {
          JSONObject localJSONObject;
          localJSONException.printStackTrace();
          continue;
        }
        localJSONObject = jbBody;
        return localJSONObject;
      }
      finally {}
      jbOrderStr.put("IsPutBookInvoice", false);
      continue;
      label161:
      jbOrderStr.put("SupportJdBean", true);
      jbOrderStr.put("isChange", isChangeJingOrDongQuan);
      jbBody.put("SupportJdBean", true);
    }
  }
  
  private void setBalanceView()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        try
        {
          if (FillOrderActivity.currBalance == null) {
            return;
          }
          if (FillOrderActivity.this.jdSecurity == null) {
            return;
          }
          if ((FillOrderActivity.this.isEasyBuy) || (!FillOrderActivity.currBalance.isShowBanance()))
          {
            FillOrderActivity.this.mLayoutBalance.setVisibility(8);
            FillOrderActivity.bUseBalance = false;
            FillOrderActivity.jbOrderStr.put("IsUseBalance", false);
            return;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        FillOrderActivity.this.mLayoutBalance.setVisibility(0);
        if (!FillOrderActivity.this.jdSecurity.getBalanceAvailable().booleanValue())
        {
          FillOrderActivity.bUseBalance = false;
          FillOrderActivity.jbOrderStr.put("IsUseBalance", false);
        }
        for (;;)
        {
          FillOrderActivity.this.mCheckboxBalance.setChecked(FillOrderActivity.bUseBalance);
          FillOrderActivity.this.mTextViewBalance.setText(FillOrderActivity.currBalance.getBalanceName());
          FillOrderActivity.this.mCheckboxBalance.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
          {
            public void onCheckedChanged(CompoundButton paramAnonymous2CompoundButton, boolean paramAnonymous2Boolean)
            {
              if ((paramAnonymous2Boolean) && (!FillOrderActivity.this.jdSecurity.getBalanceAvailable().booleanValue()))
              {
                FillOrderActivity.this.mCheckboxBalance.setChecked(false);
                String str = FillOrderActivity.this.jdSecurity.getBalanceTip();
                if (TextUtils.isEmpty(str)) {
                  str = FillOrderActivity.this.getString(2131166245);
                }
                DialogUtils.showDailog(FillOrderActivity.this, str, null);
                return;
              }
              FillOrderActivity.bUseBalance = paramAnonymous2Boolean;
              try
              {
                FillOrderActivity.jbOrderStr.put("IsUseBalance", FillOrderActivity.bUseBalance);
                label104:
                FillOrderActivity.this.isUpdatePayment = true;
                FillOrderActivity.this.resetJBBody();
                FillOrderActivity.this.calculateOrder();
                return;
              }
              catch (JSONException localJSONException)
              {
                break label104;
              }
            }
          });
          return;
          FillOrderActivity.jbOrderStr.put("IsUseBalance", FillOrderActivity.bUseBalance);
        }
      }
    });
  }
  
  private void setEmptyInvoinceInfoArea()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        FillOrderActivity.this.myAdapter = null;
        if (LastOrderInfo.mUserInfo.getUserName() == null)
        {
          LayoutInflater.from(FillOrderActivity.this);
          RelativeLayout localRelativeLayout1 = (RelativeLayout)FillOrderActivity.this.findViewById(2131493347);
          RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903162, null).findViewById(2131493564);
          FillOrderActivity.this.invoinceInfoList = ((ListView)localRelativeLayout2.getChildAt(0));
          FillOrderActivity.this.value = new ArrayList();
          HashMap localHashMap = new HashMap();
          localHashMap.put("info", " ");
          FillOrderActivity.this.value.add(localHashMap);
          FillOrderActivity.this.myAdapter = new SimpleAdapter(FillOrderActivity.this, FillOrderActivity.this.value, 2130903161, new String[] { "info" }, new int[] { 2131493562 });
          FillOrderActivity.this.invoinceInfoList.setAdapter(FillOrderActivity.this.myAdapter);
          FillOrderActivity.this.invoinceInfoList.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
          localRelativeLayout1.removeAllViews();
          localRelativeLayout1.addView(localRelativeLayout2);
          FillOrderActivity.this.invoinceInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
          {
            public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
            {
              if (FillOrderActivity.this.isNoRegisterOrder)
              {
                Intent localIntent = new Intent(FillOrderActivity.this, ReceiptInfoEditActivity.class);
                localIntent.putExtra("isNoRegisterOrder", FillOrderActivity.this.isNoRegisterOrder);
                FillOrderActivity.this.startActivityForResult(localIntent, 4);
                return;
              }
              Toast.makeText(FillOrderActivity.this, "请您先输入收货人信息!", 0).show();
            }
          });
        }
      }
    });
  }
  
  private void setEmptyPaymentInfoArea()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        FillOrderActivity.this.myAdapter = null;
        if (LastOrderInfo.mUserInfo.getUserName() == null)
        {
          LayoutInflater.from(FillOrderActivity.this);
          RelativeLayout localRelativeLayout1 = (RelativeLayout)FillOrderActivity.this.findViewById(2131493346);
          RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903217, null).findViewById(2131493950);
          FillOrderActivity.this.paymentInfoList = ((ListView)localRelativeLayout2.getChildAt(0));
          FillOrderActivity.this.value = new ArrayList();
          HashMap localHashMap = new HashMap();
          localHashMap.put("info", " ");
          FillOrderActivity.this.value.add(localHashMap);
          FillOrderActivity.this.myAdapter = new SimpleAdapter(FillOrderActivity.this, FillOrderActivity.this.value, 2130903220, new String[] { "info" }, new int[] { 2131493960 });
          FillOrderActivity.this.paymentInfoList.setAdapter(FillOrderActivity.this.myAdapter);
          FillOrderActivity.this.paymentInfoList.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
          localRelativeLayout1.removeAllViews();
          localRelativeLayout1.addView(localRelativeLayout2);
          FillOrderActivity.this.paymentInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
          {
            public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
            {
              if (FillOrderActivity.this.isNoRegisterOrder)
              {
                Intent localIntent = new Intent(FillOrderActivity.this, SelectPaymentTypeActivity.class);
                localIntent.putExtra("selectBigitem", FillOrderActivity.this.mBigInfo);
                localIntent.putExtra("pin", FillOrderActivity.this.lsPin);
                localIntent.putExtra("isNoRegisterOrder", FillOrderActivity.this.isNoRegisterOrder);
                localIntent.putExtra("PromiseTime", FillOrderActivity.this.mPromiseTime);
                FillOrderActivity.this.startActivityForResult(localIntent, 3);
                return;
              }
              Toast.makeText(FillOrderActivity.this, "请您先输入收货人信息!", 0).show();
            }
          });
        }
      }
    });
  }
  
  private void setEmptyReceiverInfoArea()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        FillOrderActivity.this.myAdapter = null;
        if (LastOrderInfo.mUserInfo.getUserName() == null)
        {
          LayoutInflater.from(FillOrderActivity.this);
          RelativeLayout localRelativeLayout1 = (RelativeLayout)FillOrderActivity.this.findViewById(2131493345);
          RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903228, null).findViewById(2131493990);
          FillOrderActivity.this.receiverInfoList = ((ListView)localRelativeLayout2.getChildAt(0));
          FillOrderActivity.this.value = new ArrayList();
          HashMap localHashMap = new HashMap();
          localHashMap.put("info", " ");
          FillOrderActivity.this.value.add(localHashMap);
          FillOrderActivity.this.myAdapter = new SimpleAdapter(FillOrderActivity.this, FillOrderActivity.this.value, 2130903218, new String[] { "info" }, new int[] { 2131493954 });
          FillOrderActivity.this.receiverInfoList.setAdapter(FillOrderActivity.this.myAdapter);
          FillOrderActivity.this.receiverInfoList.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
          localRelativeLayout1.removeAllViews();
          localRelativeLayout1.addView(localRelativeLayout2);
          FillOrderActivity.this.receiverInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
          {
            public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
            {
              FillOrderActivity.this.gotoEdidtOrListAddress();
            }
          });
        }
      }
    });
  }
  
  private void setGetBySelfArea()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        LayoutInflater.from(FillOrderActivity.this);
        RelativeLayout localRelativeLayout1 = (RelativeLayout)FillOrderActivity.this.findViewById(2131493346);
        RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903230, null).findViewById(2131493992);
        FillOrderActivity.this.paymentInfoList = ((ListView)localRelativeLayout2.getChildAt(1));
        FillOrderActivity.this.value = new ArrayList();
        FillOrderActivity.this.bundle = new Bundle();
        HashMap localHashMap = new HashMap();
        label319:
        label474:
        label616:
        label621:
        for (;;)
        {
          JSONArray localJSONArray;
          try
          {
            String str;
            int i;
            if (FillOrderActivity.mNewPaymentInfo.getSelectedPaymentType(3) != null)
            {
              str = FillOrderActivity.mNewPaymentInfo.getSelectedPaymentType(3).getString("Name");
              localHashMap.put("PayName", str);
              new JSONArray();
              localJSONArray = FillOrderActivity.mNewPaymentInfo.getPaymentDetailInfos();
              if (!LastOrderInfo.mPaymentInfo.getPayMentType(3).toString().contains("IdPickSite")) {
                break label474;
              }
              i = 0;
              if (i >= localJSONArray.length())
              {
                FillOrderActivity.this.value.add(localHashMap);
                FillOrderActivity.this.myAdapter = new SimpleAdapter(FillOrderActivity.this, FillOrderActivity.this.value, 2130903222, new String[] { "PayName", "Name", "Address" }, new int[] { 2131493966, 2131493968, 2131493970 })
                {
                  public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
                  {
                    View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
                    if (FillOrderActivity.this.isEasyBuy) {
                      localView.findViewById(2131493570).setVisibility(8);
                    }
                    return localView;
                  }
                };
                FillOrderActivity.this.paymentInfoList.setAdapter(FillOrderActivity.this.myAdapter);
                localRelativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                localRelativeLayout1.removeAllViews();
                localRelativeLayout1.addView(localRelativeLayout2);
                if (!Constants.bEasyBuy) {
                  break label585;
                }
                FillOrderActivity.this.paymentInfoList.setEnabled(false);
                FillOrderActivity.this.paymentInfoList.setClickable(false);
                if (FillOrderActivity.this.isEasyBuy) {
                  break label616;
                }
                FillOrderActivity.this.paymentInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
                {
                  public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
                  {
                    Intent localIntent = new Intent(FillOrderActivity.this, SelectPaymentTypeActivity.class);
                    localIntent.putExtra("pin", FillOrderActivity.this.lsPin);
                    localIntent.putExtra("isNoRegisterOrder", FillOrderActivity.this.isNoRegisterOrder);
                    localIntent.putExtra("PromiseTime", FillOrderActivity.this.mPromiseTime);
                    if ((FillOrderActivity.jbOrderStr != null) && (!FillOrderActivity.jbOrderStr.isNull("IdPickSite"))) {}
                    try
                    {
                      localIntent.putExtra("IdPickSite", FillOrderActivity.jbOrderStr.getInt("IdPickSite"));
                      FillOrderActivity.this.startActivityForResult(localIntent, 3);
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
                });
              }
            }
            else
            {
              str = FillOrderActivity.this.getString(2131165946);
              continue;
            }
            if (localJSONArray.getJSONObject(i).getInt("Id") == LastOrderInfo.mPaymentInfo.getPayMentType(3).getInt("IdPickSite"))
            {
              localHashMap.put("Name", localJSONArray.getJSONObject(i).getString("Name"));
              FillOrderActivity.this.bundle.putString("get_position", localJSONArray.getJSONObject(i).getString("Name"));
              localHashMap.put("Address", localJSONArray.getJSONObject(i).getString("Address"));
              continue;
            }
            i++;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
          continue;
          for (int j = 0;; j++)
          {
            if (j >= localJSONArray.length()) {
              break label621;
            }
            if (localJSONArray.getJSONObject(j).getInt("Id") == FillOrderActivity.mNewPaymentInfo.getPayMentType(3).getInt("IdPickSite"))
            {
              localHashMap.put("Name", localJSONArray.getJSONObject(j).getString("Name"));
              FillOrderActivity.this.bundle.putString("get_position", localJSONArray.getJSONObject(j).getString("Name"));
              localHashMap.put("Address", localJSONArray.getJSONObject(j).getString("Address"));
              break;
              if (!Constants.bModifyEasyBuy) {
                break label319;
              }
              FillOrderActivity.this.paymentInfoList.setEnabled(true);
              FillOrderActivity.this.paymentInfoList.setClickable(true);
              break label319;
              return;
            }
          }
        }
      }
    });
  }
  
  private void setGetBySelfInfo(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    try
    {
      JSONArrayPoxy localJSONArrayPoxy = paramJSONObjectProxy.getJSONArray("PickSites");
      mNewPaymentInfo.setPaymentDetailInfos(localJSONArrayPoxy);
      mNewPaymentInfo.setPayMentType(3, paramJSONObjectProxy);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void setInvoinceInfoArea()
  {
    runOnUiThread(new Runnable()
    {
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   3: ifnull +42 -> 45
        //   6: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   9: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   12: ifnull +33 -> 45
        //   15: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   18: ifnull +27 -> 45
        //   21: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   24: invokevirtual 42	com/jingdong/common/entity/InvoiceInfo:getInvoinceTypes	()Lorg/json/JSONObject;
        //   27: ifnull +18 -> 45
        //   30: getstatic 46	com/jingdong/common/entity/LastOrderInfo:mUserInfo	Lcom/jingdong/common/entity/UserInfo;
        //   33: invokevirtual 52	com/jingdong/common/entity/UserInfo:getUserName	()Ljava/lang/String;
        //   36: ifnonnull +17 -> 53
        //   39: getstatic 58	com/jingdong/common/constant/Constants:bAddEasyBuy	Z
        //   42: ifne +11 -> 53
        //   45: aload_0
        //   46: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   49: invokestatic 61	com/jingdong/app/mall/shopping/FillOrderActivity:access$22	(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
        //   52: return
        //   53: aload_0
        //   54: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   57: aconst_null
        //   58: putfield 65	com/jingdong/app/mall/shopping/FillOrderActivity:myAdapter	Landroid/widget/SimpleAdapter;
        //   61: aload_0
        //   62: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   65: invokestatic 71	android/view/LayoutInflater:from	(Landroid/content/Context;)Landroid/view/LayoutInflater;
        //   68: pop
        //   69: aload_0
        //   70: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   73: ldc 72
        //   75: invokevirtual 76	com/jingdong/app/mall/shopping/FillOrderActivity:findViewById	(I)Landroid/view/View;
        //   78: checkcast 78	android/widget/RelativeLayout
        //   81: astore_2
        //   82: ldc 79
        //   84: aconst_null
        //   85: invokestatic 85	com/jingdong/common/utils/ImageUtil:inflate	(ILandroid/view/ViewGroup;)Landroid/view/View;
        //   88: ldc 86
        //   90: invokevirtual 89	android/view/View:findViewById	(I)Landroid/view/View;
        //   93: checkcast 78	android/widget/RelativeLayout
        //   96: astore_3
        //   97: aload_0
        //   98: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   101: aload_3
        //   102: iconst_1
        //   103: invokevirtual 92	android/widget/RelativeLayout:getChildAt	(I)Landroid/view/View;
        //   106: checkcast 94	android/widget/ListView
        //   109: invokestatic 98	com/jingdong/app/mall/shopping/FillOrderActivity:access$16	(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V
        //   112: aload_0
        //   113: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   116: new 100	java/util/ArrayList
        //   119: dup
        //   120: invokespecial 101	java/util/ArrayList:<init>	()V
        //   123: putfield 105	com/jingdong/app/mall/shopping/FillOrderActivity:value	Ljava/util/List;
        //   126: new 107	java/util/HashMap
        //   129: dup
        //   130: invokespecial 108	java/util/HashMap:<init>	()V
        //   133: astore 4
        //   135: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   138: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   141: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
        //   144: ldc 115
        //   146: invokevirtual 121	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
        //   149: ifeq +622 -> 771
        //   152: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   155: invokevirtual 42	com/jingdong/common/entity/InvoiceInfo:getInvoinceTypes	()Lorg/json/JSONObject;
        //   158: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
        //   161: ldc 123
        //   163: invokevirtual 121	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
        //   166: ifeq +605 -> 771
        //   169: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   172: invokevirtual 42	com/jingdong/common/entity/InvoiceInfo:getInvoinceTypes	()Lorg/json/JSONObject;
        //   175: ldc 123
        //   177: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   180: ldc 129
        //   182: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   185: invokevirtual 139	org/json/JSONArray:length	()I
        //   188: istore 42
        //   190: iconst_0
        //   191: istore 43
        //   193: iload 43
        //   195: iload 42
        //   197: if_icmplt +487 -> 684
        //   200: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   203: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   206: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
        //   209: ldc 141
        //   211: invokevirtual 121	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
        //   214: ifeq +141 -> 355
        //   217: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   220: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   223: ldc 141
        //   225: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   228: iconst_5
        //   229: if_icmpne +650 -> 879
        //   232: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   235: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   238: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
        //   241: ldc 147
        //   243: invokevirtual 121	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
        //   246: ifeq +618 -> 864
        //   249: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   252: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   255: ldc 147
        //   257: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   260: ifnull +604 -> 864
        //   263: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   266: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   269: ldc 147
        //   271: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   274: ldc 153
        //   276: if_acmpeq +588 -> 864
        //   279: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   282: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   285: ldc 147
        //   287: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   290: ldc 155
        //   292: if_acmpeq +572 -> 864
        //   295: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   298: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   301: ldc 157
        //   303: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   306: ldc 159
        //   308: invokevirtual 162	java/lang/String:compareTo	(Ljava/lang/String;)I
        //   311: ifne +499 -> 810
        //   314: aload 4
        //   316: ldc 164
        //   318: new 166	java/lang/StringBuilder
        //   321: dup
        //   322: ldc 168
        //   324: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   327: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   330: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   333: ldc 147
        //   335: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   338: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   341: ldc 177
        //   343: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   346: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   349: invokeinterface 184 3 0
        //   354: pop
        //   355: getstatic 58	com/jingdong/common/constant/Constants:bAddEasyBuy	Z
        //   358: ifne +15 -> 373
        //   361: getstatic 187	com/jingdong/common/constant/Constants:bModifyEasyBuy	Z
        //   364: ifne +9 -> 373
        //   367: getstatic 190	com/jingdong/common/constant/Constants:bEasyBuy	Z
        //   370: ifeq +682 -> 1052
        //   373: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   376: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   379: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
        //   382: ldc 192
        //   384: invokevirtual 121	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
        //   387: ifeq +626 -> 1013
        //   390: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   393: invokevirtual 195	com/jingdong/common/entity/InvoiceInfo:getInvoinceBooks	()Lorg/json/JSONObject;
        //   396: ldc 197
        //   398: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   401: invokevirtual 139	org/json/JSONArray:length	()I
        //   404: istore 24
        //   406: iconst_0
        //   407: istore 25
        //   409: iload 25
        //   411: iload 24
        //   413: if_icmplt +513 -> 926
        //   416: getstatic 58	com/jingdong/common/constant/Constants:bAddEasyBuy	Z
        //   419: ifne +15 -> 434
        //   422: getstatic 187	com/jingdong/common/constant/Constants:bModifyEasyBuy	Z
        //   425: ifne +9 -> 434
        //   428: getstatic 190	com/jingdong/common/constant/Constants:bEasyBuy	Z
        //   431: ifeq +917 -> 1348
        //   434: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   437: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   440: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
        //   443: ldc 199
        //   445: invokevirtual 121	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
        //   448: ifeq +885 -> 1333
        //   451: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   454: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   457: ldc 199
        //   459: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   462: iconst_m1
        //   463: if_icmpeq +870 -> 1333
        //   466: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   469: invokevirtual 202	com/jingdong/common/entity/InvoiceInfo:getInvoinceGenerals	()Lorg/json/JSONObject;
        //   472: ldc 197
        //   474: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   477: ldc 197
        //   479: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   482: invokevirtual 139	org/json/JSONArray:length	()I
        //   485: istore 11
        //   487: iconst_0
        //   488: istore 12
        //   490: iload 12
        //   492: iload 11
        //   494: if_icmplt +742 -> 1236
        //   497: aload_0
        //   498: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   501: getfield 105	com/jingdong/app/mall/shopping/FillOrderActivity:value	Ljava/util/List;
        //   504: aload 4
        //   506: invokeinterface 208 2 0
        //   511: pop
        //   512: aload_0
        //   513: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   516: new 210	com/jingdong/app/mall/shopping/FillOrderActivity$16$1
        //   519: dup
        //   520: aload_0
        //   521: aload_0
        //   522: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   525: aload_0
        //   526: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   529: getfield 105	com/jingdong/app/mall/shopping/FillOrderActivity:value	Ljava/util/List;
        //   532: ldc 211
        //   534: iconst_4
        //   535: anewarray 117	java/lang/String
        //   538: dup
        //   539: iconst_0
        //   540: ldc 213
        //   542: aastore
        //   543: dup
        //   544: iconst_1
        //   545: ldc 164
        //   547: aastore
        //   548: dup
        //   549: iconst_2
        //   550: ldc 215
        //   552: aastore
        //   553: dup
        //   554: iconst_3
        //   555: ldc 217
        //   557: aastore
        //   558: iconst_4
        //   559: newarray int
        //   561: dup
        //   562: iconst_0
        //   563: ldc 218
        //   565: iastore
        //   566: dup
        //   567: iconst_1
        //   568: ldc 219
        //   570: iastore
        //   571: dup
        //   572: iconst_2
        //   573: ldc 220
        //   575: iastore
        //   576: dup
        //   577: iconst_3
        //   578: ldc 221
        //   580: iastore
        //   581: invokespecial 224	com/jingdong/app/mall/shopping/FillOrderActivity$16$1:<init>	(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
        //   584: putfield 65	com/jingdong/app/mall/shopping/FillOrderActivity:myAdapter	Landroid/widget/SimpleAdapter;
        //   587: aload_0
        //   588: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   591: invokestatic 228	com/jingdong/app/mall/shopping/FillOrderActivity:access$17	(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
        //   594: aload_0
        //   595: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   598: getfield 65	com/jingdong/app/mall/shopping/FillOrderActivity:myAdapter	Landroid/widget/SimpleAdapter;
        //   601: invokevirtual 232	android/widget/ListView:setAdapter	(Landroid/widget/ListAdapter;)V
        //   604: aload_3
        //   605: new 234	android/widget/RelativeLayout$LayoutParams
        //   608: dup
        //   609: iconst_m1
        //   610: bipush 254
        //   612: invokespecial 237	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
        //   615: invokevirtual 241	android/widget/RelativeLayout:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
        //   618: aload_2
        //   619: invokevirtual 244	android/widget/RelativeLayout:removeAllViews	()V
        //   622: aload_2
        //   623: aload_3
        //   624: invokevirtual 248	android/widget/RelativeLayout:addView	(Landroid/view/View;)V
        //   627: getstatic 190	com/jingdong/common/constant/Constants:bEasyBuy	Z
        //   630: ifeq +967 -> 1597
        //   633: aload_0
        //   634: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   637: invokestatic 228	com/jingdong/app/mall/shopping/FillOrderActivity:access$17	(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
        //   640: iconst_0
        //   641: invokevirtual 252	android/widget/ListView:setEnabled	(Z)V
        //   644: aload_0
        //   645: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   648: invokestatic 228	com/jingdong/app/mall/shopping/FillOrderActivity:access$17	(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
        //   651: iconst_0
        //   652: invokevirtual 255	android/widget/ListView:setClickable	(Z)V
        //   655: aload_0
        //   656: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   659: getfield 258	com/jingdong/app/mall/shopping/FillOrderActivity:isEasyBuy	Z
        //   662: ifne -610 -> 52
        //   665: aload_0
        //   666: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   669: invokestatic 228	com/jingdong/app/mall/shopping/FillOrderActivity:access$17	(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
        //   672: new 260	com/jingdong/app/mall/shopping/FillOrderActivity$16$2
        //   675: dup
        //   676: aload_0
        //   677: invokespecial 263	com/jingdong/app/mall/shopping/FillOrderActivity$16$2:<init>	(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;)V
        //   680: invokevirtual 267	android/widget/ListView:setOnItemClickListener	(Landroid/widget/AdapterView$OnItemClickListener;)V
        //   683: return
        //   684: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   687: invokevirtual 42	com/jingdong/common/entity/InvoiceInfo:getInvoinceTypes	()Lorg/json/JSONObject;
        //   690: ldc 123
        //   692: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   695: ldc 129
        //   697: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   700: iload 43
        //   702: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   705: ldc_w 272
        //   708: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   711: iconst_1
        //   712: if_icmpne +53 -> 765
        //   715: aload 4
        //   717: ldc 213
        //   719: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   722: invokevirtual 42	com/jingdong/common/entity/InvoiceInfo:getInvoinceTypes	()Lorg/json/JSONObject;
        //   725: ldc 123
        //   727: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   730: ldc 129
        //   732: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   735: iload 43
        //   737: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   740: ldc_w 274
        //   743: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   746: invokeinterface 184 3 0
        //   751: pop
        //   752: goto -552 -> 200
        //   755: astore 41
        //   757: aload 41
        //   759: invokevirtual 277	org/json/JSONException:printStackTrace	()V
        //   762: goto -562 -> 200
        //   765: iinc 43 1
        //   768: goto -575 -> 193
        //   771: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   774: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   777: ldc 115
        //   779: iconst_1
        //   780: invokevirtual 280	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   783: pop
        //   784: aload 4
        //   786: ldc 213
        //   788: ldc_w 282
        //   791: invokeinterface 184 3 0
        //   796: pop
        //   797: goto -597 -> 200
        //   800: astore 5
        //   802: aload 5
        //   804: invokevirtual 277	org/json/JSONException:printStackTrace	()V
        //   807: goto -23 -> 784
        //   810: aload 4
        //   812: ldc 164
        //   814: new 166	java/lang/StringBuilder
        //   817: dup
        //   818: ldc 168
        //   820: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   823: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   826: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   829: ldc 147
        //   831: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   834: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   837: ldc 177
        //   839: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   842: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   845: invokeinterface 184 3 0
        //   850: pop
        //   851: goto -496 -> 355
        //   854: astore 34
        //   856: aload 34
        //   858: invokevirtual 277	org/json/JSONException:printStackTrace	()V
        //   861: goto -506 -> 355
        //   864: aload 4
        //   866: ldc 164
        //   868: ldc 159
        //   870: invokeinterface 184 3 0
        //   875: pop
        //   876: goto -521 -> 355
        //   879: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   882: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   885: ldc 141
        //   887: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   890: iconst_4
        //   891: if_icmpne +19 -> 910
        //   894: aload 4
        //   896: ldc 164
        //   898: ldc_w 284
        //   901: invokeinterface 184 3 0
        //   906: pop
        //   907: goto -552 -> 355
        //   910: aload 4
        //   912: ldc 164
        //   914: ldc_w 284
        //   917: invokeinterface 184 3 0
        //   922: pop
        //   923: goto -568 -> 355
        //   926: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   929: invokevirtual 195	com/jingdong/common/entity/InvoiceInfo:getInvoinceBooks	()Lorg/json/JSONObject;
        //   932: ldc 197
        //   934: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   937: iload 25
        //   939: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   942: ldc_w 272
        //   945: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   948: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   951: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   954: ldc 192
        //   956: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   959: if_icmpne +48 -> 1007
        //   962: aload 4
        //   964: ldc 215
        //   966: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   969: invokevirtual 195	com/jingdong/common/entity/InvoiceInfo:getInvoinceBooks	()Lorg/json/JSONObject;
        //   972: ldc 197
        //   974: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   977: iload 25
        //   979: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   982: ldc_w 274
        //   985: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   988: invokeinterface 184 3 0
        //   993: pop
        //   994: goto -578 -> 416
        //   997: astore 7
        //   999: aload 7
        //   1001: invokevirtual 277	org/json/JSONException:printStackTrace	()V
        //   1004: goto -588 -> 416
        //   1007: iinc 25 1
        //   1010: goto -601 -> 409
        //   1013: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1016: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   1019: ldc 192
        //   1021: iconst_m1
        //   1022: invokevirtual 280	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   1025: pop
        //   1026: aload 4
        //   1028: ldc 215
        //   1030: ldc_w 286
        //   1033: invokeinterface 184 3 0
        //   1038: pop
        //   1039: goto -623 -> 416
        //   1042: astore 21
        //   1044: aload 21
        //   1046: invokevirtual 277	org/json/JSONException:printStackTrace	()V
        //   1049: goto -23 -> 1026
        //   1052: aload_0
        //   1053: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   1056: getfield 289	com/jingdong/app/mall/shopping/FillOrderActivity:noBook	Z
        //   1059: ifeq +18 -> 1077
        //   1062: aload 4
        //   1064: ldc 215
        //   1066: ldc 153
        //   1068: invokeinterface 184 3 0
        //   1073: pop
        //   1074: goto -658 -> 416
        //   1077: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1080: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   1083: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
        //   1086: ldc 192
        //   1088: invokevirtual 121	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
        //   1091: ifeq +106 -> 1197
        //   1094: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1097: invokevirtual 195	com/jingdong/common/entity/InvoiceInfo:getInvoinceBooks	()Lorg/json/JSONObject;
        //   1100: ldc 197
        //   1102: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   1105: invokevirtual 139	org/json/JSONArray:length	()I
        //   1108: istore 30
        //   1110: iconst_0
        //   1111: istore 31
        //   1113: iload 31
        //   1115: iload 30
        //   1117: if_icmpge -701 -> 416
        //   1120: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1123: invokevirtual 195	com/jingdong/common/entity/InvoiceInfo:getInvoinceBooks	()Lorg/json/JSONObject;
        //   1126: ldc 197
        //   1128: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   1131: iload 31
        //   1133: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   1136: ldc_w 272
        //   1139: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   1142: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1145: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   1148: ldc 192
        //   1150: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   1153: if_icmpne +38 -> 1191
        //   1156: aload 4
        //   1158: ldc 215
        //   1160: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1163: invokevirtual 195	com/jingdong/common/entity/InvoiceInfo:getInvoinceBooks	()Lorg/json/JSONObject;
        //   1166: ldc 197
        //   1168: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   1171: iload 31
        //   1173: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   1176: ldc_w 274
        //   1179: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   1182: invokeinterface 184 3 0
        //   1187: pop
        //   1188: goto -772 -> 416
        //   1191: iinc 31 1
        //   1194: goto -81 -> 1113
        //   1197: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1200: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   1203: ldc 192
        //   1205: iconst_m1
        //   1206: invokevirtual 280	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   1209: pop
        //   1210: aload 4
        //   1212: ldc 215
        //   1214: ldc_w 286
        //   1217: invokeinterface 184 3 0
        //   1222: pop
        //   1223: goto -807 -> 416
        //   1226: astore 27
        //   1228: aload 27
        //   1230: invokevirtual 277	org/json/JSONException:printStackTrace	()V
        //   1233: goto -23 -> 1210
        //   1236: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1239: invokevirtual 202	com/jingdong/common/entity/InvoiceInfo:getInvoinceGenerals	()Lorg/json/JSONObject;
        //   1242: ldc 197
        //   1244: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   1247: ldc 197
        //   1249: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   1252: iload 12
        //   1254: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   1257: ldc_w 272
        //   1260: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   1263: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1266: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   1269: ldc 199
        //   1271: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   1274: if_icmpne +53 -> 1327
        //   1277: aload 4
        //   1279: ldc 217
        //   1281: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1284: invokevirtual 202	com/jingdong/common/entity/InvoiceInfo:getInvoinceGenerals	()Lorg/json/JSONObject;
        //   1287: ldc 197
        //   1289: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   1292: ldc 197
        //   1294: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   1297: iload 12
        //   1299: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   1302: ldc_w 274
        //   1305: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   1308: invokeinterface 184 3 0
        //   1313: pop
        //   1314: goto -817 -> 497
        //   1317: astore 8
        //   1319: aload 8
        //   1321: invokevirtual 277	org/json/JSONException:printStackTrace	()V
        //   1324: goto -827 -> 497
        //   1327: iinc 12 1
        //   1330: goto -840 -> 490
        //   1333: aload 4
        //   1335: ldc 217
        //   1337: ldc 155
        //   1339: invokeinterface 184 3 0
        //   1344: pop
        //   1345: goto -848 -> 497
        //   1348: aload_0
        //   1349: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   1352: getfield 292	com/jingdong/app/mall/shopping/FillOrderActivity:onlyBook	Z
        //   1355: ifeq +18 -> 1373
        //   1358: aload 4
        //   1360: ldc 217
        //   1362: ldc 155
        //   1364: invokeinterface 184 3 0
        //   1369: pop
        //   1370: goto -873 -> 497
        //   1373: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1376: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   1379: invokevirtual 113	org/json/JSONObject:toString	()Ljava/lang/String;
        //   1382: ldc 199
        //   1384: invokevirtual 121	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
        //   1387: ifeq +195 -> 1582
        //   1390: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1393: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   1396: ldc 199
        //   1398: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   1401: iconst_m1
        //   1402: if_icmpeq +180 -> 1582
        //   1405: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1408: ifnull +159 -> 1567
        //   1411: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1414: invokevirtual 202	com/jingdong/common/entity/InvoiceInfo:getInvoinceGenerals	()Lorg/json/JSONObject;
        //   1417: ifnull +150 -> 1567
        //   1420: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1423: invokevirtual 202	com/jingdong/common/entity/InvoiceInfo:getInvoinceGenerals	()Lorg/json/JSONObject;
        //   1426: ldc 197
        //   1428: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   1431: ldc 197
        //   1433: invokevirtual 296	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
        //   1436: ifnull +131 -> 1567
        //   1439: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1442: invokevirtual 202	com/jingdong/common/entity/InvoiceInfo:getInvoinceGenerals	()Lorg/json/JSONObject;
        //   1445: ldc 197
        //   1447: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   1450: ldc 197
        //   1452: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   1455: invokevirtual 139	org/json/JSONArray:length	()I
        //   1458: istore 17
        //   1460: iconst_0
        //   1461: istore 18
        //   1463: iload 18
        //   1465: iload 17
        //   1467: if_icmpge -970 -> 497
        //   1470: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1473: invokevirtual 202	com/jingdong/common/entity/InvoiceInfo:getInvoinceGenerals	()Lorg/json/JSONObject;
        //   1476: ldc 197
        //   1478: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   1481: ldc 197
        //   1483: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   1486: iload 18
        //   1488: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   1491: ldc_w 272
        //   1494: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   1497: getstatic 30	com/jingdong/common/entity/LastOrderInfo:mInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1500: invokevirtual 36	com/jingdong/common/entity/InvoiceInfo:getInvoiceInfo	()Lorg/json/JSONObject;
        //   1503: ldc 199
        //   1505: invokevirtual 145	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   1508: if_icmpne +53 -> 1561
        //   1511: aload 4
        //   1513: ldc 217
        //   1515: getstatic 39	com/jingdong/app/mall/shopping/FillOrderActivity:mNewInvoiceInfo	Lcom/jingdong/common/entity/InvoiceInfo;
        //   1518: invokevirtual 202	com/jingdong/common/entity/InvoiceInfo:getInvoinceGenerals	()Lorg/json/JSONObject;
        //   1521: ldc 197
        //   1523: invokevirtual 127	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   1526: ldc 197
        //   1528: invokevirtual 133	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
        //   1531: iload 18
        //   1533: invokevirtual 270	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
        //   1536: ldc_w 274
        //   1539: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
        //   1542: invokeinterface 184 3 0
        //   1547: pop
        //   1548: goto -1051 -> 497
        //   1551: astore 14
        //   1553: aload 14
        //   1555: invokevirtual 277	org/json/JSONException:printStackTrace	()V
        //   1558: goto -1061 -> 497
        //   1561: iinc 18 1
        //   1564: goto -101 -> 1463
        //   1567: aload 4
        //   1569: ldc 217
        //   1571: ldc 155
        //   1573: invokeinterface 184 3 0
        //   1578: pop
        //   1579: goto -1082 -> 497
        //   1582: aload 4
        //   1584: ldc 217
        //   1586: ldc 155
        //   1588: invokeinterface 184 3 0
        //   1593: pop
        //   1594: goto -1097 -> 497
        //   1597: getstatic 187	com/jingdong/common/constant/Constants:bModifyEasyBuy	Z
        //   1600: ifeq -945 -> 655
        //   1603: aload_0
        //   1604: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   1607: invokestatic 228	com/jingdong/app/mall/shopping/FillOrderActivity:access$17	(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
        //   1610: iconst_1
        //   1611: invokevirtual 252	android/widget/ListView:setEnabled	(Z)V
        //   1614: aload_0
        //   1615: getfield 17	com/jingdong/app/mall/shopping/FillOrderActivity$16:this$0	Lcom/jingdong/app/mall/shopping/FillOrderActivity;
        //   1618: invokestatic 228	com/jingdong/app/mall/shopping/FillOrderActivity:access$17	(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
        //   1621: iconst_1
        //   1622: invokevirtual 255	android/widget/ListView:setClickable	(Z)V
        //   1625: goto -970 -> 655
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	1628	0	this	16
        //   81	542	2	localRelativeLayout1	RelativeLayout
        //   96	528	3	localRelativeLayout2	RelativeLayout
        //   133	1450	4	localHashMap	HashMap
        //   800	3	5	localJSONException1	JSONException
        //   997	3	7	localJSONException2	JSONException
        //   1317	3	8	localJSONException3	JSONException
        //   485	10	11	i	int
        //   488	840	12	j	int
        //   1551	3	14	localJSONException4	JSONException
        //   1458	10	17	k	int
        //   1461	101	18	m	int
        //   1042	3	21	localJSONException5	JSONException
        //   404	10	24	n	int
        //   407	601	25	i1	int
        //   1226	3	27	localJSONException6	JSONException
        //   1108	10	30	i2	int
        //   1111	81	31	i3	int
        //   854	3	34	localJSONException7	JSONException
        //   755	3	41	localJSONException8	JSONException
        //   188	10	42	i4	int
        //   191	575	43	i5	int
        // Exception table:
        //   from	to	target	type
        //   169	190	755	org/json/JSONException
        //   684	752	755	org/json/JSONException
        //   771	784	800	org/json/JSONException
        //   217	355	854	org/json/JSONException
        //   810	851	854	org/json/JSONException
        //   864	876	854	org/json/JSONException
        //   879	907	854	org/json/JSONException
        //   910	923	854	org/json/JSONException
        //   355	373	997	org/json/JSONException
        //   373	406	997	org/json/JSONException
        //   926	994	997	org/json/JSONException
        //   1026	1039	997	org/json/JSONException
        //   1044	1049	997	org/json/JSONException
        //   1052	1074	997	org/json/JSONException
        //   1077	1110	997	org/json/JSONException
        //   1120	1188	997	org/json/JSONException
        //   1210	1223	997	org/json/JSONException
        //   1228	1233	997	org/json/JSONException
        //   1013	1026	1042	org/json/JSONException
        //   1197	1210	1226	org/json/JSONException
        //   434	487	1317	org/json/JSONException
        //   1236	1314	1317	org/json/JSONException
        //   1333	1345	1317	org/json/JSONException
        //   1373	1460	1551	org/json/JSONException
        //   1470	1548	1551	org/json/JSONException
        //   1567	1579	1551	org/json/JSONException
        //   1582	1594	1551	org/json/JSONException
      }
    });
  }
  
  private void setMoneyInfo(final JSONArrayPoxy paramJSONArrayPoxy)
  {
    runOnUiThread(new Runnable()
    {
      private void showPriceDifferentRemind(String paramAnonymousString)
      {
        if ((FillOrderActivity.this.priceDifferentRemindTextView == null) || (TextUtils.isEmpty(FillOrderActivity.this.priceDifferentTips))) {
          return;
        }
        if ((!TextUtils.isEmpty(Constants.dYTotalPrice)) && (!TextUtils.equals(Constants.dYTotalPrice, "0"))) {
          try
          {
            double d = Double.parseDouble(Constants.dYTotalPrice);
            if (Double.parseDouble(paramAnonymousString) > d)
            {
              FillOrderActivity.this.priceDifferentRemindTextView.setVisibility(0);
              FillOrderActivity.this.priceDifferentRemindTextView.setText(FillOrderActivity.this.priceDifferentTips);
              return;
            }
          }
          catch (Exception localException) {}
        }
        FillOrderActivity.this.priceDifferentRemindTextView.setVisibility(8);
      }
      
      public void run()
      {
        if ((paramJSONArrayPoxy == null) || (FillOrderActivity.this.settleContent == null)) {
          return;
        }
        FillOrderActivity.this.settleContent.removeAllViews();
        int i = 0;
        label30:
        JSONObjectProxy localJSONObjectProxy;
        if (i < paramJSONArrayPoxy.length())
        {
          localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
          if (localJSONObjectProxy != null) {
            break label60;
          }
        }
        for (;;)
        {
          i++;
          break label30;
          break;
          label60:
          String str1 = localJSONObjectProxy.getStringOrNull("label");
          if (!TextUtils.isEmpty(str1))
          {
            String str2 = localJSONObjectProxy.getStringOrNull("value");
            if (TextUtils.isEmpty(str2)) {
              str2 = "";
            }
            String str3 = localJSONObjectProxy.getStringOrNull("operator");
            if (str3 == null) {
              str3 = "";
            }
            FillOrderActivity.this.initSettleView(FillOrderActivity.this.settleContent, str1, str3, str2);
            if (str1.contains("商品金额"))
            {
              showPriceDifferentRemind(str2);
              Constants.dYTotalPrice = str2;
            }
            else if (str1.contains("应付总额"))
            {
              TextView localTextView = FillOrderActivity.this.mFinalPriceTv;
              Context localContext = FillOrderActivity.this.context;
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = (str2 + "元");
              localTextView.setText(Html.fromHtml(localContext.getString(2131166445, arrayOfObject)));
              if (FillOrderActivity.this.isNoRegisterOrder) {
                FillOrderActivity.this.mSubmitLayout.setVisibility(0);
              }
              FillOrderActivity.this.sTotalMoney = str2;
              Constants.dTotalPrice = str2;
            }
          }
        }
      }
    });
  }
  
  private void setPayAfterReceiveArea(final int paramInt)
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        RelativeLayout localRelativeLayout1 = (RelativeLayout)FillOrderActivity.this.findViewById(2131493346);
        RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903230, null).findViewById(2131493992);
        FillOrderActivity.this.paymentInfoList = ((ListView)localRelativeLayout2.findViewById(2131493993));
        FillOrderActivity.this.value = new ArrayList();
        HashMap localHashMap = new HashMap();
        Resources localResources = FillOrderActivity.this.context.getResources();
        JSONObject localJSONObject1 = LastOrderInfo.mPaymentInfo.getPayMentType(paramInt);
        int i = 0;
        label1060:
        label1190:
        label1202:
        for (;;)
        {
          int j;
          int i7;
          int i10;
          int i8;
          JSONArray localJSONArray3;
          int i2;
          int i3;
          int i6;
          JSONArray localJSONArray2;
          int n;
          try
          {
            String str1;
            JSONArray localJSONArray1;
            JSONArray localJSONArray4;
            if (LastOrderInfo.mPaymentInfo.nSelected == 4)
            {
              str1 = localResources.getString(2131165651);
              localHashMap.put("PayName", str1);
              JSONObject localJSONObject2 = FillOrderActivity.mNewPaymentInfo.getPayMentType(paramInt);
              localJSONObject3 = new JSONObject();
              if ((localJSONObject2 != null) && (!localJSONObject2.isNull("ShipmentTypes")))
              {
                localJSONArray1 = localJSONObject2.getJSONArray("ShipmentTypes");
                if (localJSONArray1.length() <= 1) {
                  continue;
                }
                j = 0;
                int k = localJSONArray1.length();
                if (j < k) {
                  continue;
                }
                String str2 = localJSONObject3.getString("Name");
                localHashMap.put("PeisongName", str2);
                FillOrderActivity.this.initIfNeedCall(localResources, localJSONObject3, localJSONObject1, localHashMap, str2);
                if (!localJSONObject3.isNull("bigItemCodDate"))
                {
                  localJSONArray4 = localJSONObject3.getJSONArray("bigItemCodDate");
                  boolean bool = TextUtils.isEmpty(FillOrderActivity.this.mBigInfo.getValue());
                  i7 = 0;
                  if (bool) {
                    break label1160;
                  }
                  i10 = 0;
                  int i11 = localJSONArray4.length();
                  if (i10 < i11) {
                    continue;
                  }
                  i7 = 0;
                  break label1160;
                  int i9 = localJSONArray4.length();
                  if (i8 < i9) {
                    continue;
                  }
                }
                if (localJSONObject1 == null) {
                  break label1010;
                }
                m = localJSONObject1.optInt("CODTime");
                if ((!FillOrderActivity.this.handle311And411(localJSONObject3, localHashMap, m)) && (!localJSONObject3.isNull("SupCodTime")) && (!localJSONObject3.isNull("CanShipTime")) && (localJSONObject3.getBoolean("CanShipTime")))
                {
                  localJSONArray3 = localJSONObject3.getJSONArray("SupCodTime");
                  if ((localJSONObject1.isNull("CODTime")) || (localJSONArray3 == null)) {
                    break label1060;
                  }
                  i2 = localJSONObject1.getInt("CODTime");
                  if (i2 > 0) {
                    break label1171;
                  }
                  i2 = 1;
                  localJSONObject1.put("CODTime", i2);
                  break label1171;
                  int i4 = localJSONArray3.length();
                  int i5 = i3;
                  i6 = 0;
                  if (i5 < i4) {
                    break label1016;
                  }
                  if (i6 == 0)
                  {
                    JSONObject localJSONObject4 = localJSONArray3.optJSONObject(0);
                    if (localJSONObject4 != null)
                    {
                      localJSONObject1.put("CODTime", localJSONObject4.optInt("Id"));
                      localHashMap.put("mCodTime", localJSONObject4.optString("Name"));
                    }
                  }
                }
                if (i != 0)
                {
                  if (localJSONObject3.isNull("SupPaymentWay")) {
                    break label1202;
                  }
                  localJSONArray2 = localJSONObject3.getJSONArray("SupPaymentWay");
                  if ((localJSONArray2 != null) && (!localJSONObject1.isNull("PaymentWay")))
                  {
                    n = 0;
                    int i1 = localJSONArray2.length();
                    if (n < i1) {
                      break label1083;
                    }
                  }
                }
              }
              FillOrderActivity.this.value.add(localHashMap);
              FillOrderActivity.this.myAdapter = new SimpleAdapter(FillOrderActivity.this, FillOrderActivity.this.value, 2130903223, new String[] { "PayName", "PeisongName", "mCodTime", "bigCodTime", "mInforms", "PaymentWayName" }, new int[] { 2131493966, 2131493972, 2131493974, 2131493976, 2131493978, 2131493980 })
              {
                public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
                {
                  View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
                  FillOrderActivity.this.initPayView(localView, (Map)getItem(paramAnonymous2Int));
                  return localView;
                }
              };
              FillOrderActivity.this.paymentInfoList.setAdapter(FillOrderActivity.this.myAdapter);
              localRelativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
              localRelativeLayout1.removeAllViews();
              localRelativeLayout1.addView(localRelativeLayout2);
              if (!Constants.bEasyBuy) {
                break label1129;
              }
              FillOrderActivity.this.paymentInfoList.setEnabled(false);
              FillOrderActivity.this.paymentInfoList.setClickable(false);
              if (FillOrderActivity.this.isEasyBuy) {
                break label1177;
              }
              FillOrderActivity.this.paymentInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
              {
                public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
                {
                  Intent localIntent = new Intent(FillOrderActivity.this, SelectPaymentTypeActivity.class);
                  localIntent.putExtra("selectBigitem", FillOrderActivity.this.mBigInfo);
                  localIntent.putExtra("pin", FillOrderActivity.this.lsPin);
                  localIntent.putExtra("isNoRegisterOrder", FillOrderActivity.this.isNoRegisterOrder);
                  localIntent.putExtra("PromiseTime", FillOrderActivity.this.mPromiseTime);
                  FillOrderActivity.this.startActivityForResult(localIntent, 3);
                }
              });
            }
            else
            {
              if (FillOrderActivity.mNewPaymentInfo.getSelectedPaymentType(paramInt) != null)
              {
                str1 = FillOrderActivity.mNewPaymentInfo.getSelectedPaymentType(paramInt).getString("Name");
                break label1178;
              }
              str1 = FillOrderActivity.this.getString(2131165947);
              break label1178;
            }
            if (localJSONObject1.getInt("IdShipmentType") != localJSONArray1.getJSONObject(j).getInt("Id")) {
              break label1184;
            }
            JSONObject localJSONObject3 = localJSONArray1.getJSONObject(j);
            continue;
            localJSONObject3 = localJSONArray1.getJSONObject(0);
            continue;
            JSONObject localJSONObject6 = localJSONArray4.getJSONObject(i10);
            if (!localJSONObject6.getString("Value").equals(FillOrderActivity.this.mBigInfo.getValue())) {
              break label1190;
            }
            FillOrderActivity.this.mBigInfo.setName(localJSONObject6.getString("Name"));
            localHashMap.put("bigCodTime", localJSONObject6.getString("Name"));
            i7 = 1;
            break label1160;
            JSONObject localJSONObject5 = localJSONArray4.getJSONObject(i8);
            if (localJSONObject5.getBoolean("Selected"))
            {
              FillOrderActivity.this.mBigInfo.setName(localJSONObject5.getString("Name"));
              FillOrderActivity.this.mBigInfo.setValue(localJSONObject5.getString("Value"));
              localHashMap.put("bigCodTime", localJSONObject5.getString("Name"));
              continue;
            }
            i8++;
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
            return;
          }
          continue;
          label1010:
          int m = 0;
          continue;
          label1016:
          if (localJSONArray3.getJSONObject(i3).getInt("Id") == i2)
          {
            localHashMap.put("mCodTime", localJSONArray3.getJSONObject(i3).getString("Name"));
            i6 = 1;
            continue;
            localHashMap.put("mCodTime", localJSONArray3.getJSONObject(0).getString("Name"));
            continue;
            if (localJSONArray2.getJSONObject(n).getInt("Id") == localJSONObject1.getInt("PaymentWay"))
            {
              localHashMap.put("PaymentWayName", localJSONArray2.getJSONObject(n).getString("Name"));
              continue;
              if (!Constants.bModifyEasyBuy) {
                continue;
              }
              FillOrderActivity.this.paymentInfoList.setEnabled(true);
              FillOrderActivity.this.paymentInfoList.setClickable(true);
              continue;
              if (i7 != 0) {
                continue;
              }
              i8 = 0;
              continue;
              i3 = 0;
              continue;
              return;
              i = 1;
              continue;
              j++;
              continue;
              i10++;
              continue;
            }
          }
          else
          {
            i3++;
            continue;
            localJSONArray2 = null;
            continue;
          }
          label1083:
          label1129:
          n++;
        }
      }
    });
  }
  
  private void setPayOnlineTips(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(paramString))
        {
          FillOrderActivity.this.selectPayOnline.setText(paramString);
          FillOrderActivity.this.selectPayOnline.setVisibility(0);
          return;
        }
        FillOrderActivity.this.selectPayOnline.setVisibility(8);
      }
    });
  }
  
  private void setPaymentInfo()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (LastOrderInfo.mUserInfo.getUserName() == null)
        {
          FillOrderActivity.this.setEmptyReceiverInfoArea();
          FillOrderActivity.this.setEmptyPaymentInfoArea();
          return;
        }
        FillOrderActivity.this.setReceiverInfoArea();
        FillOrderActivity.this.initDefalutPaymentType();
        FillOrderActivity.this.getPaymentDetatilInformation(LastOrderInfo.mPaymentInfo.nSelected);
      }
    });
  }
  
  private void setPaymentInfoAreaWithItem(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 3: 
      setGetBySelfArea();
      return;
    case 1: 
      setPayAfterReceiveArea(paramInt);
      return;
    case 4: 
      setPayAfterReceiveArea(paramInt);
      return;
    }
    setPostArea();
  }
  
  private void setPeiSongInfo(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    for (;;)
    {
      try
      {
        mNewPaymentInfo.setShipments(paramJSONObjectProxy);
        mNewPaymentInfo.setPayMentType(LastOrderInfo.mPaymentInfo.nSelected, paramJSONObjectProxy);
        JSONArrayPoxy localJSONArrayPoxy = paramJSONObjectProxy.getJSONArrayOrNull("ShipmentTypes");
        JSONObjectProxy localJSONObjectProxy = null;
        if (localJSONArrayPoxy != null) {
          localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(0);
        }
        if ((this.mPromiseTime != null) && (this.mPromiseTime.isVisibility()) && (localJSONObjectProxy != null)) {
          this.mPromiseTime.updateShowText(localJSONObjectProxy);
        }
        if (!TextUtils.isEmpty(this.mBigInfo.getValue()))
        {
          jbOrderStr.put("BigItemCodDate", this.mBigInfo.getValue());
          if (!this.update_by_addr) {
            break;
          }
          updatePayWayInfo(paramJSONObjectProxy);
          this.update_by_addr = false;
          return;
        }
        if ((localJSONObjectProxy != null) && (!localJSONObjectProxy.isNull("bigItemCodDate")))
        {
          JSONArray localJSONArray = localJSONObjectProxy.getJSONArray("bigItemCodDate");
          int i = 0;
          if (i < localJSONArray.length())
          {
            JSONObject localJSONObject = localJSONArray.getJSONObject(i);
            if (localJSONObject.getBoolean("Selected")) {
              jbOrderStr.put("BigItemCodDate", localJSONObject.getString("Value"));
            } else {
              i++;
            }
          }
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    }
  }
  
  private void setPostArea()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        RelativeLayout localRelativeLayout1 = (RelativeLayout)FillOrderActivity.this.findViewById(2131493346);
        RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903230, null).findViewById(2131493992);
        FillOrderActivity.this.paymentInfoList = ((ListView)localRelativeLayout2.findViewById(2131493993));
        FillOrderActivity.this.value = new ArrayList();
        HashMap localHashMap = new HashMap();
        Resources localResources = FillOrderActivity.this.context.getResources();
        for (;;)
        {
          int i;
          int i4;
          int i7;
          int i5;
          JSONArray localJSONArray4;
          int m;
          int n;
          int i3;
          JSONArray localJSONArray3;
          try
          {
            String str1;
            JSONObject localJSONObject2;
            JSONArray localJSONArray2;
            JSONArray localJSONArray5;
            if (FillOrderActivity.mNewPaymentInfo.getSelectedPaymentType(2) != null)
            {
              str1 = FillOrderActivity.mNewPaymentInfo.getSelectedPaymentType(2).getString("Name");
              localHashMap.put("PayName", str1);
              JSONObject localJSONObject1 = FillOrderActivity.mNewPaymentInfo.getPayMentType(2);
              if ((localJSONObject1 == null) || (localJSONObject1.isNull("ShipmentTypes"))) {
                break label1111;
              }
              localJSONObject2 = LastOrderInfo.mPaymentInfo.getPayMentType(2);
              localJSONObject3 = new JSONObject();
              if ((FillOrderActivity.mNewPaymentInfo.getShipments() != null) && (!FillOrderActivity.mNewPaymentInfo.getShipments().isNull("ShipmentTypes")))
              {
                localJSONArray2 = FillOrderActivity.mNewPaymentInfo.getShipments().getJSONArray("ShipmentTypes");
                if (localJSONArray2.length() <= 1) {
                  continue;
                }
                i = 0;
                int j = localJSONArray2.length();
                if (i >= j)
                {
                  String str2 = localJSONObject3.getString("Name");
                  localHashMap.put("PeisongName", str2);
                  FillOrderActivity.this.initIfNeedCall(localResources, localJSONObject3, localJSONObject2, localHashMap, str2);
                  if (!localJSONObject3.isNull("bigItemCodDate"))
                  {
                    localJSONArray5 = localJSONObject3.getJSONArray("bigItemCodDate");
                    boolean bool = TextUtils.isEmpty(FillOrderActivity.this.mBigInfo.getValue());
                    i4 = 0;
                    if (bool) {
                      break label1253;
                    }
                    i7 = 0;
                    int i8 = localJSONArray5.length();
                    if (i7 < i8) {
                      continue;
                    }
                    i4 = 0;
                    break label1253;
                    int i6 = localJSONArray5.length();
                    if (i5 < i6) {
                      continue;
                    }
                  }
                  if (localJSONObject2 == null) {
                    break label1018;
                  }
                  k = localJSONObject2.optInt("CODTime");
                  if ((!FillOrderActivity.this.handle311And411(localJSONObject3, localHashMap, k)) && (!localJSONObject3.isNull("SupCodTime")) && (!localJSONObject3.isNull("CanShipTime")) && (localJSONObject3.getBoolean("CanShipTime")))
                  {
                    localJSONArray4 = localJSONObject3.getJSONArray("SupCodTime");
                    if ((!localJSONObject2.isNull("CODTime")) && (localJSONArray4 != null))
                    {
                      m = localJSONObject2.getInt("CODTime");
                      if (m > 0) {
                        break label1264;
                      }
                      m = 1;
                      localJSONObject2.put("CODTime", m);
                      break label1264;
                      int i1 = localJSONArray4.length();
                      int i2 = n;
                      i3 = 0;
                      if (i2 < i1) {
                        break label1024;
                      }
                      if (i3 == 0)
                      {
                        JSONObject localJSONObject4 = localJSONArray4.optJSONObject(0);
                        if (localJSONObject4 != null)
                        {
                          localJSONObject2.put("CODTime", localJSONObject4.optInt("Id"));
                          localHashMap.put("mCodTime", localJSONObject4.optString("Name"));
                        }
                      }
                    }
                  }
                  localJSONArray3 = FillOrderActivity.mNewPaymentInfo.getPostArray();
                  if (!localJSONArray3.getJSONObject(0).toString().contains("商户客户号")) {
                    break label1068;
                  }
                  localHashMap.put("postid", localJSONArray3.getJSONObject(0).getString("value"));
                  localHashMap.put("postreceiver", localJSONArray3.getJSONObject(1).getString("value"));
                }
              }
              else
              {
                FillOrderActivity.this.value.add(localHashMap);
                FillOrderActivity.this.myAdapter = new SimpleAdapter(FillOrderActivity.this, FillOrderActivity.this.value, 2130903224, new String[] { "PayName", "PeisongName", "mCodTime", "mInforms", "bigCodTime", "postreceiver", "postid" }, new int[] { 2131493966, 2131493972, 2131493974, 2131493978, 2131493976, 2131493985, 2131493983 })
                {
                  public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
                  {
                    View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
                    FillOrderActivity.this.initPayView(localView, (Map)getItem(paramAnonymous2Int));
                    return localView;
                  }
                };
                FillOrderActivity.this.paymentInfoList.setAdapter(FillOrderActivity.this.myAdapter);
                localRelativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                localRelativeLayout1.removeAllViews();
                localRelativeLayout1.addView(localRelativeLayout2);
                if (!Constants.bEasyBuy) {
                  break label1222;
                }
                FillOrderActivity.this.paymentInfoList.setEnabled(false);
                FillOrderActivity.this.paymentInfoList.setClickable(false);
                if (FillOrderActivity.this.isEasyBuy) {
                  break label1270;
                }
                FillOrderActivity.this.paymentInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
                {
                  public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
                  {
                    Intent localIntent = new Intent(FillOrderActivity.this, SelectPaymentTypeActivity.class);
                    localIntent.putExtra("selectBigitem", FillOrderActivity.this.mBigInfo);
                    localIntent.putExtra("pin", FillOrderActivity.this.lsPin);
                    localIntent.putExtra("isNoRegisterOrder", FillOrderActivity.this.isNoRegisterOrder);
                    localIntent.putExtra("PromiseTime", FillOrderActivity.this.mPromiseTime);
                    FillOrderActivity.this.startActivityForResult(localIntent, 3);
                  }
                });
              }
            }
            else
            {
              str1 = FillOrderActivity.this.getString(2131165872);
              continue;
            }
            if (localJSONObject2.getInt("IdShipmentType") != localJSONArray2.getJSONObject(i).getInt("Id")) {
              break label1271;
            }
            JSONObject localJSONObject3 = localJSONArray2.getJSONObject(i);
            continue;
            localJSONObject3 = localJSONArray2.getJSONObject(0);
            continue;
            JSONObject localJSONObject6 = localJSONArray5.getJSONObject(i7);
            if (!localJSONObject6.getString("Value").equals(FillOrderActivity.this.mBigInfo.getValue())) {
              break label1277;
            }
            localHashMap.put("bigCodTime", localJSONObject6.getString("Name"));
            i4 = 1;
            break label1253;
            JSONObject localJSONObject5 = localJSONArray5.getJSONObject(i5);
            if (localJSONObject5.getBoolean("Selected"))
            {
              FillOrderActivity.this.mBigInfo = new BigHouseholdappliancesInfo();
              FillOrderActivity.this.mBigInfo.setName(localJSONObject5.getString("Name"));
              FillOrderActivity.this.mBigInfo.setValue(localJSONObject5.getString("Value"));
              localHashMap.put("bigCodTime", localJSONObject5.getString("Name"));
              continue;
            }
            i5++;
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
            return;
          }
          continue;
          label1018:
          int k = 0;
          continue;
          label1024:
          if (localJSONArray4.getJSONObject(n).getInt("Id") == m)
          {
            localHashMap.put("mCodTime", localJSONArray4.getJSONObject(n).getString("Name"));
            i3 = 1;
            continue;
            label1068:
            localHashMap.put("postreceiver", localJSONArray3.getJSONObject(0).getString("value"));
            localHashMap.put("postid", localJSONArray3.getJSONObject(1).getString("value"));
            continue;
            label1111:
            JSONArray localJSONArray1 = FillOrderActivity.mNewPaymentInfo.getPostArray();
            if (localJSONArray1.getJSONObject(0).toString().contains("商户客户号"))
            {
              localHashMap.put("postid", localJSONArray1.getJSONObject(0).getString("value"));
              localHashMap.put("postreceiver", localJSONArray1.getJSONObject(1).getString("value"));
            }
            else
            {
              localHashMap.put("postreceiver", localJSONArray1.getJSONObject(0).getString("value"));
              localHashMap.put("postid", localJSONArray1.getJSONObject(1).getString("value"));
              continue;
              label1222:
              if (Constants.bModifyEasyBuy)
              {
                FillOrderActivity.this.paymentInfoList.setEnabled(true);
                FillOrderActivity.this.paymentInfoList.setClickable(true);
                continue;
                label1253:
                if (i4 == 0)
                {
                  i5 = 0;
                  continue;
                  label1264:
                  n = 0;
                  continue;
                  label1270:
                  return;
                  label1271:
                  i++;
                  continue;
                  label1277:
                  i7++;
                }
              }
            }
          }
          else
          {
            n++;
          }
        }
      }
    });
  }
  
  private void setReceiverInfoArea()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        FillOrderActivity.this.myAdapter = null;
        LayoutInflater.from(FillOrderActivity.this);
        RelativeLayout localRelativeLayout1 = (RelativeLayout)FillOrderActivity.this.findViewById(2131493345);
        RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903227, null).findViewById(2131493990);
        FillOrderActivity.this.receiverInfoList = ((ListView)localRelativeLayout2.findViewById(2131493991));
        FillOrderActivity.this.priceDifferentRemindTextView = ((TextView)localRelativeLayout2.findViewById(2131493819));
        FillOrderActivity.this.value = new ArrayList();
        HashMap localHashMap = new HashMap();
        localHashMap.put("Name", LastOrderInfo.mUserInfo.getUserName());
        localHashMap.put("Mobile", LastOrderInfo.mUserInfo.getUserMobile());
        try
        {
          localHashMap.put("addr", LastOrderInfo.mUserInfo.getUserAddr().getString("Where"));
          FillOrderActivity.this.value.add(localHashMap);
          FillOrderActivity.this.myAdapter = new SimpleAdapter(FillOrderActivity.this, FillOrderActivity.this.value, 2130903231, new String[] { "Name", "Mobile", "addr" }, new int[] { 2131493677, 2131493679, 2131493995 })
          {
            public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
            {
              View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
              if (FillOrderActivity.this.isEasyBuy) {
                localView.findViewById(2131493955).setVisibility(8);
              }
              return localView;
            }
          };
          FillOrderActivity.this.receiverInfoList.setAdapter(FillOrderActivity.this.myAdapter);
          localRelativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
          localRelativeLayout1.removeAllViews();
          localRelativeLayout1.addView(localRelativeLayout2);
          if (Constants.bEasyBuy)
          {
            FillOrderActivity.this.receiverInfoList.setEnabled(false);
            FillOrderActivity.this.receiverInfoList.setClickable(false);
            if (!FillOrderActivity.this.isEasyBuy) {
              FillOrderActivity.this.receiverInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
              {
                public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
                {
                  FillOrderActivity.this.gotoEdidtOrListAddress();
                }
              });
            }
            return;
          }
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
            continue;
            if (Constants.bModifyEasyBuy)
            {
              FillOrderActivity.this.receiverInfoList.setEnabled(true);
              FillOrderActivity.this.receiverInfoList.setClickable(true);
            }
          }
        }
      }
    });
  }
  
  private void setUpConnAndGetData(String paramString1, JSONObject paramJSONObject, final String paramString2)
  {
    for (;;)
    {
      try
      {
        boolean bool = isFinishing();
        if (bool) {
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId(paramString1);
        localHttpSetting.setJsonParams(paramJSONObject);
        if ((!LoginUser.hasLogin()) && ("pickSites".equals(paramString1)))
        {
          localHttpSetting.setUseCookies(false);
          localHttpSetting.setListener(new HttpGroup.OnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              FillOrderActivity.this.getOrderInfoFromSer(paramAnonymousHttpResponse, paramString2);
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              if (FillOrderActivity.this.getType(paramString2) == 14) {
                FillOrderActivity.this.ShowMsg(FillOrderActivity.this.getResources().getString(2131165998));
              }
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          localHttpSetting.setNotifyUser(true);
          getHttpGroupaAsynPool().add(localHttpSetting);
        }
        else
        {
          localHttpSetting.setUseCookies(true);
        }
      }
      finally {}
    }
  }
  
  private void setYouhuiArea()
  {
    LayoutInflater.from(this);
    RelativeLayout localRelativeLayout1 = (RelativeLayout)findViewById(2131493399);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903128, null).findViewById(2131493390);
    this.youhuiInfoList = ((ListView)localRelativeLayout2.getChildAt(0));
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
      this.youhuiInfoList.setVisibility(8);
    }
    for (;;)
    {
      localRelativeLayout1.removeAllViews();
      localRelativeLayout1.addView(localRelativeLayout2);
      return;
      ArrayList localArrayList = new ArrayList();
      HashMap localHashMap = new HashMap();
      localHashMap.put("name", " ");
      localArrayList.add(localHashMap);
      this.youhuiInfoList.setAdapter(new YouHuiAdapter(this, localArrayList));
      this.youhuiInfoList.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
      this.youhuiInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          Intent localIntent = new Intent(FillOrderActivity.this, EditYouHuiLipinActivity.class);
          if (FillOrderActivity.this.jdSecurity != null)
          {
            localIntent.putExtra("bCard", FillOrderActivity.this.jdSecurity.getGiftCardAvailable());
            localIntent.putExtra("bJingCoupon", FillOrderActivity.this.jdSecurity.getJingCouponAvailable());
            localIntent.putExtra("bDongCoupon", FillOrderActivity.this.jdSecurity.getDongCouponAvailable());
            localIntent.putExtra("bCardtip", FillOrderActivity.this.jdSecurity.getGiftCardTip());
            localIntent.putExtra("bJingCoupontip", FillOrderActivity.this.jdSecurity.getJingCouponTip());
            localIntent.putExtra("bDongCoupontip", FillOrderActivity.this.jdSecurity.getDongCouponTip());
          }
          FillOrderActivity.this.startActivityForResult(localIntent, 5);
        }
      });
    }
  }
  
  private void showExplainPayPasswordDialog(Boolean paramBoolean)
  {
    if (paramBoolean != null)
    {
      DialogController local40 = new DialogController()
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
      local40.setTitle(getString(2131166050));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(getString(2131166051));
      local40.setMessage(localStringBuilder);
      local40.setNeutralButton(getString(2131166054));
      local40.init(this);
      local40.show();
    }
  }
  
  private void showJdbeanView()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        try
        {
          if (FillOrderActivity.currJdbean == null) {
            return;
          }
          if (FillOrderActivity.this.jdSecurity == null) {
            return;
          }
          if ((FillOrderActivity.this.isEasyBuy) || (!FillOrderActivity.currJdbean.getIsShowJdbean().booleanValue()))
          {
            FillOrderActivity.this.mLayoutJdbean.setVisibility(8);
            FillOrderActivity.bUseJdbean = false;
            FillOrderActivity.jbOrderStr.put("isUseJdBean", false);
            return;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        FillOrderActivity.this.mLayoutJdbean.setVisibility(0);
        if (!FillOrderActivity.this.jdSecurity.getJdBeanAvailable().booleanValue())
        {
          FillOrderActivity.bUseJdbean = false;
          FillOrderActivity.jbOrderStr.put("isUseJdBean", false);
        }
        for (;;)
        {
          FillOrderActivity.this.mCheckboxJdbean.setChecked(FillOrderActivity.bUseJdbean);
          FillOrderActivity.this.mTextViewJdbean.setText(FillOrderActivity.currJdbean.getJdbeanName());
          FillOrderActivity.this.mCheckboxJdbean.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
          {
            public void onCheckedChanged(CompoundButton paramAnonymous2CompoundButton, boolean paramAnonymous2Boolean)
            {
              if ((paramAnonymous2Boolean) && (!FillOrderActivity.this.jdSecurity.getJdBeanAvailable().booleanValue()))
              {
                FillOrderActivity.this.mCheckboxJdbean.setChecked(false);
                String str = FillOrderActivity.this.jdSecurity.getJdBeanTip();
                if (TextUtils.isEmpty(str)) {
                  str = FillOrderActivity.this.getString(2131166246);
                }
                DialogUtils.showDailog(FillOrderActivity.this, str, null);
                return;
              }
              FillOrderActivity.bUseJdbean = paramAnonymous2Boolean;
              try
              {
                FillOrderActivity.jbOrderStr.put("isUseJdBean", FillOrderActivity.bUseJdbean);
                label104:
                FillOrderActivity.this.isUpdatePayment = true;
                FillOrderActivity.this.resetJBBody();
                FillOrderActivity.this.calculateOrder();
                return;
              }
              catch (JSONException localJSONException)
              {
                break label104;
              }
            }
          });
          return;
          FillOrderActivity.jbOrderStr.put("isUseJdBean", FillOrderActivity.bUseJdbean);
        }
      }
    });
  }
  
  private void showPasswordEdit()
  {
    post(new Runnable()
    {
      public void run()
      {
        for (;;)
        {
          Resources localResources;
          final Boolean localBoolean;
          final String str1;
          final String str2;
          try
          {
            FillOrderActivity.this.defray_passwork_input_layout.removeAllViews();
            FillOrderActivity.this.defrayEtArray.clear();
            FillOrderActivity.this.hideInputKey();
            localResources = FillOrderActivity.this.context.getResources();
            JSONArrayPoxy localJSONArrayPoxy = FillOrderActivity.this.jdIsPutPassword.getJSONArray("securityPayBlocks");
            localBoolean = FillOrderActivity.this.jdIsPutPassword.getBooleanOrNull("isOpen");
            FillOrderActivity.this.jdIsPutPassword.getStringOrNull("message");
            str1 = FillOrderActivity.this.jdIsPutPassword.getStringOrNull("url");
            str2 = FillOrderActivity.this.jdIsPutPassword.getStringOrNull("functionId");
            if ((localBoolean == null) || (TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2))) {
              break label837;
            }
            FillOrderActivity.this.pay_password_open_find_layout.setVisibility(0);
            SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
            if (localBoolean.booleanValue())
            {
              localSpannableStringBuilder.append(FillOrderActivity.this.getString(2131166049));
              FillOrderActivity.this.payPasswordView.setText(FillOrderActivity.this.getString(2131166048));
              FillOrderActivity.this.payPasswordBtn.setText(localSpannableStringBuilder);
              TextView localTextView2 = FillOrderActivity.this.payPasswordBtn;
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
                      FillOrderActivity.this.post(new Runnable()
                      {
                        public void run()
                        {
                          Intent localIntent = new Intent(FillOrderActivity.this, WebActivity.class);
                          localIntent.putExtra("url", paramAnonymous3String);
                          FillOrderActivity.this.startActivity(localIntent);
                        }
                      });
                    }
                  });
                }
              };
              localTextView2.setOnClickListener(local1);
              break label837;
              if (i >= localJSONArrayPoxy.length()) {
                FillOrderActivity.this.defray_passwork_layout.setVisibility(0);
              }
            }
            else
            {
              localSpannableStringBuilder.append(FillOrderActivity.this.getString(2131166046));
              FillOrderActivity.this.payPasswordView.setText(FillOrderActivity.this.getString(2131166047));
              FillOrderActivity.this.payPasswordBtn.setText(localSpannableStringBuilder);
              continue;
            }
            localJSONObject = localJSONArrayPoxy.getJSONObject(i);
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
            return;
          }
          JSONObject localJSONObject;
          String str3 = localJSONObject.getString("title");
          String str4 = localJSONObject.getString("submitKey");
          LinearLayout localLinearLayout = new LinearLayout(FillOrderActivity.this.context);
          RelativeLayout localRelativeLayout = new RelativeLayout(FillOrderActivity.this.context);
          localLinearLayout.setOrientation(1);
          TextView localTextView1 = new TextView(FillOrderActivity.this.context);
          localTextView1.setPadding((int)localResources.getDimension(2131427362), 0, 0, 0);
          localTextView1.setText(str3);
          localTextView1.setTextColor(-65536);
          final EditText localEditText = new EditText(FillOrderActivity.this.context);
          JDInputMethod localJDInputMethod = new JDInputMethod((Activity)FillOrderActivity.this.context, localEditText, FillOrderActivity.this.findViewById(2131493395));
          localJDInputMethod.initIME();
          FillOrderActivity.this.inputmethodArray.add(localJDInputMethod);
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
          ImageView localImageView = new ImageView(FillOrderActivity.this.context);
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
              FillOrderActivity.this.showExplainPayPasswordDialog(localBoolean);
            }
          };
          localImageView.setOnClickListener(local2);
          localRelativeLayout.addView(localEditText);
          if ((localBoolean != null) && (!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
            localRelativeLayout.addView(localImageView);
          }
          localLinearLayout.addView(localTextView1);
          localLinearLayout.addView(localRelativeLayout);
          FillOrderActivity.this.defrayEtArray.add(localEditText);
          FillOrderActivity.this.defray_passwork_input_layout.addView(localLinearLayout);
          FillOrderActivity localFillOrderActivity = FillOrderActivity.this;
          Runnable local3 = new Runnable()
          {
            public void run()
            {
              localEditText.clearFocus();
            }
          };
          localFillOrderActivity.post(local3);
          i++;
          continue;
          label837:
          int i = 0;
        }
      }
    });
  }
  
  private void submitEasyBuyOrder()
  {
    submitEasyBuyOrder(null, null);
  }
  
  private void submitEasyBuyOrder(String paramString1, String paramString2)
  {
    try
    {
      resetJBBody();
      jbBody.put("totalPrice", String.valueOf(Constants.dTotalPrice));
      jbBody.put("templateName", DefaultEasyTempOrderInfo.sTempName);
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setPost(true);
      localHttpSetting.setFunctionId("easyBuySubmitOrder");
      localHttpSetting.setJsonParams(jbBody);
      if (!TextUtils.isEmpty(paramString1)) {
        localHttpSetting.putJsonParam("resultCode", paramString1);
      }
      if (!TextUtils.isEmpty(paramString2)) {
        localHttpSetting.putJsonParam("key", paramString2);
      }
      if (InterfaceBroadcastReceiver.usid != null)
      {
        localHttpSetting.putMapParams("usid", InterfaceBroadcastReceiver.usid);
        localHttpSetting.setListener(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy1 = paramAnonymousHttpResponse.getJSONObject();
            JSONObjectProxy localJSONObjectProxy2 = null;
            if (localJSONObjectProxy1 != null) {
              localJSONObjectProxy2 = localJSONObjectProxy1.getJSONObjectOrNull("submitOrder");
            }
            String str1 = null;
            String str2 = null;
            if (localJSONObjectProxy2 != null)
            {
              str1 = localJSONObjectProxy2.getStringOrNull("url");
              str2 = localJSONObjectProxy2.getStringOrNull("Message");
            }
            if (!TextUtils.isEmpty(str1))
            {
              new FillOrderActivity.CaptchaDialogController(str1, str2)
              {
                protected void submit(String paramAnonymous2String1, String paramAnonymous2String2)
                {
                  FillOrderActivity.this.submitEasyBuyOrder(paramAnonymous2String1, paramAnonymous2String2);
                }
              };
              return;
            }
            FillOrderActivity.this.getOrderInfoFromSer(paramAnonymousHttpResponse, "easyBuySubmitOrder");
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        localHttpSetting.setNotifyUser(true);
        getHttpGroupaAsynPool().add(localHttpSetting);
        return;
      }
    }
    catch (Exception localException)
    {
      do
      {
        for (;;)
        {
          localException.printStackTrace();
        }
        InterfaceBroadcastReceiver.unionId = Configuration.getProperty("unionId");
        InterfaceBroadcastReceiver.subunionId = Configuration.getProperty("subunionId");
      } while (InterfaceBroadcastReceiver.unionId == null);
      InterfaceBroadcastReceiver.cps(new Runnable()
      {
        public void run()
        {
          FillOrderActivity.this.submitOrder();
        }
      });
    }
  }
  
  private void submitOrder()
  {
    submitOrder(null, null);
  }
  
  private void submitOrder(String paramString1, String paramString2)
  {
    String str1 = "submitOrder";
    if (this.isEasyBuy) {
      str1 = "easyBuySubmitOrder";
    }
    try
    {
      resetJBBody();
      jbBody.put("statisticsStr", jbSourceStr);
      jbBody.put("totalPrice", String.valueOf(Constants.dTotalPrice));
      if (!this.isEasyBuy)
      {
        jbBody.put("syntype", "1");
        jbBody.put("cartuuid", StatisticsReportUtil.readCartUUID());
      }
      if (this.isMS)
      {
        String str2 = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        jbBody.put("sign", miaoShaoMd5Encrypt(str1, str2));
        jbBody.put("timestamp", str2);
      }
    }
    catch (Exception localException)
    {
      do
      {
        for (;;)
        {
          HttpGroup.HttpSetting localHttpSetting;
          localException.printStackTrace();
        }
        InterfaceBroadcastReceiver.unionId = Configuration.getProperty("unionId");
        InterfaceBroadcastReceiver.subunionId = Configuration.getProperty("subunionId");
      } while (InterfaceBroadcastReceiver.unionId == null);
      InterfaceBroadcastReceiver.cps(new Runnable()
      {
        public void run()
        {
          FillOrderActivity.this.submitOrder();
        }
      });
    }
    if (!this.isEasyBuy) {
      appendPromistTime(jbBody);
    }
    localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setPost(true);
    localHttpSetting.setFunctionId(str1);
    localHttpSetting.setJsonParams(jbBody);
    if (!TextUtils.isEmpty(paramString1)) {
      localHttpSetting.putJsonParam("resultCode", paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localHttpSetting.putJsonParam("key", paramString2);
    }
    if (InterfaceBroadcastReceiver.usid != null)
    {
      localHttpSetting.putMapParams("usid", InterfaceBroadcastReceiver.usid);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          JSONObjectProxy localJSONObjectProxy1 = paramAnonymousHttpResponse.getJSONObject();
          JSONObjectProxy localJSONObjectProxy2 = null;
          if (localJSONObjectProxy1 != null) {
            localJSONObjectProxy2 = localJSONObjectProxy1.getJSONObjectOrNull("submitOrder");
          }
          String str1 = null;
          String str2 = null;
          if (localJSONObjectProxy2 != null)
          {
            str1 = localJSONObjectProxy2.getStringOrNull("url");
            str2 = localJSONObjectProxy2.getStringOrNull("Message");
          }
          if (!TextUtils.isEmpty(str1))
          {
            new FillOrderActivity.CaptchaDialogController(str1, str2)
            {
              protected void submit(String paramAnonymous2String1, String paramAnonymous2String2)
              {
                FillOrderActivity.this.submitOrder(paramAnonymous2String1, paramAnonymous2String2);
              }
            };
            return;
          }
          FillOrderActivity.this.getOrderInfoFromSer(paramAnonymousHttpResponse, "submitOrder");
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
  }
  
  private void updateCODTime(int paramInt, JSONObjectProxy paramJSONObjectProxy)
  {
    if (paramJSONObjectProxy == null) {}
    for (;;)
    {
      return;
      JSONArray localJSONArray1 = paramJSONObjectProxy.optJSONArray("ShipmentTypes");
      if ((localJSONArray1 == null) || (localJSONArray1.length() <= 0)) {
        continue;
      }
      JSONObject localJSONObject1 = LastOrderInfo.mPaymentInfo.getPayMentType(paramInt);
      int i;
      label48:
      int j;
      label51:
      int m;
      Object localObject;
      if (localJSONObject1 != null)
      {
        i = localJSONObject1.optInt("IdShipmentType");
        j = 0;
        int k = localJSONArray1.length();
        m = 0;
        localObject = null;
        if (j < k) {
          break label337;
        }
        label70:
        if (m == 0)
        {
          localObject = localJSONArray1.optJSONObject(0);
          if (localObject != null)
          {
            i = ((JSONObject)localObject).optInt("Id");
            m = 1;
          }
        }
        if ((m != 0) && (localJSONObject1 == null)) {}
      }
      try
      {
        localJSONObject1.put("IdShipmentType", i);
        label121:
        if (jbOrderStr != null) {}
        try
        {
          jbOrderStr.put("IdShipmentType", i);
          label139:
          if (localObject == null) {
            continue;
          }
          int n;
          label159:
          int i1;
          JSONArray localJSONArray2;
          int i3;
          if (localJSONObject1 != null)
          {
            n = localJSONObject1.optInt("CODTime");
            boolean bool1 = handle311And411((JSONObject)localObject, null, n);
            i1 = 0;
            if (!bool1)
            {
              boolean bool2 = ((JSONObject)localObject).optBoolean("CanShipTime");
              i1 = 0;
              if (bool2)
              {
                localJSONArray2 = ((JSONObject)localObject).optJSONArray("SupCodTime");
                i1 = 0;
                if (localJSONArray2 != null)
                {
                  int i2 = localJSONArray2.length();
                  i1 = 0;
                  if (i2 > 0)
                  {
                    if (n <= 0) {
                      n = 1;
                    }
                    i3 = 0;
                    int i4 = localJSONArray2.length();
                    i1 = 0;
                    if (i3 < i4) {
                      break label385;
                    }
                    label257:
                    if (i1 == 0)
                    {
                      JSONObject localJSONObject4 = localJSONArray2.optJSONObject(0);
                      if (localJSONObject4 != null)
                      {
                        n = localJSONObject4.optInt("Id");
                        i1 = 1;
                      }
                    }
                  }
                }
              }
            }
            if (i1 == 0) {
              continue;
            }
            if (localJSONObject1 == null) {}
          }
          try
          {
            localJSONObject1.put("CODTime", n);
            label309:
            if (jbOrderStr == null) {
              continue;
            }
            try
            {
              jbOrderStr.put("CODTime", n);
              return;
            }
            catch (JSONException localJSONException1)
            {
              return;
            }
            i = 0;
            break label48;
            label337:
            JSONObject localJSONObject2 = localJSONArray1.optJSONObject(j);
            if ((localJSONObject2 != null) && (localJSONObject2.optInt("Id") == i))
            {
              localObject = localJSONObject2;
              m = 1;
              break label70;
            }
            j++;
            break label51;
            n = 0;
            break label159;
            label385:
            JSONObject localJSONObject3 = localJSONArray2.optJSONObject(i3);
            if ((localJSONObject3 != null) && (localJSONObject3.optInt("Id") == n))
            {
              i1 = 1;
              break label257;
            }
            i3++;
          }
          catch (JSONException localJSONException2)
          {
            break label309;
          }
        }
        catch (JSONException localJSONException3)
        {
          break label139;
        }
      }
      catch (JSONException localJSONException4)
      {
        break label121;
      }
    }
  }
  
  private void updateCompositeOrderStr()
  {
    try
    {
      if ((LoginUserBase.hasLogin()) || (!this.isNoRegisterOrder)) {
        if (jbOrderStr == null)
        {
          jbOrderStr = new JSONObject();
          updateOrderStrByUserInfo();
          if (isLastOrderInfoContainField("IdInvoiceType", jsonOrderInfoContainer)) {
            jbOrderStr.put("IdInvoiceType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceType"));
          }
          if (isLastOrderInfoContainField("IdInvoiceHeaderType", jsonOrderInfoContainer)) {
            jbOrderStr.put("IdInvoiceHeaderType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceHeaderType"));
          }
          if (isLastOrderInfoContainField("IdInvoiceContentTypeBook", jsonOrderInfoContainer)) {
            jbOrderStr.put("IdInvoiceContentTypeBook", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentTypeBook"));
          }
          if (isLastOrderInfoContainField("IdCompanyBranch", jsonOrderInfoContainer)) {
            jbOrderStr.put("IdCompanyBranch", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdCompanyBranch"));
          }
          if (isLastOrderInfoContainField("IdInvoiceContentsType", jsonOrderInfoContainer)) {
            jbOrderStr.put("IdInvoiceContentsType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentsType"));
          }
          if (isLastOrderInfoContainField("IdPaymentType", jsonOrderInfoContainer)) {
            jbOrderStr.put("IdPaymentType", LastOrderInfo.mPaymentInfo.type);
          }
          if (isLastOrderInfoContainField("PaymentWay", jsonOrderInfoContainer)) {
            jbOrderStr.put("PaymentWay", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("PaymentWay"));
          }
          if (isLastOrderInfoContainField("PromotionPrice", jsonOrderInfoContainer)) {
            jbOrderStr.put("PromotionPrice", LastOrderInfo.dPromotionPrice);
          }
          if (isLastOrderInfoContainField("Price", jsonOrderInfoContainer)) {
            jbOrderStr.put("Price", LastOrderInfo.dPrice);
          }
        }
        else
        {
          updateOrderStrByUserInfo();
          return;
        }
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updateCompositeOrderStrByInvoice()
  {
    try
    {
      JSONObject localJSONObject = Constants.mModifiedInvoiceInfo.getInvoiceInfo();
      if ((localJSONObject.toString().contains("IdInvoiceContentsType")) && (localJSONObject.get("IdInvoiceContentsType") != null) && (localJSONObject.get("IdInvoiceContentsType") != "") && (localJSONObject.get("IdInvoiceContentsType") != " ")) {
        jbOrderStr.put("IdInvoiceContentsType", localJSONObject.get("IdInvoiceContentsType"));
      }
      if ((localJSONObject.toString().contains("InvoiceTitle")) && (localJSONObject.get("InvoiceTitle") != null) && (localJSONObject.get("InvoiceTitle") != "") && (localJSONObject.get("InvoiceTitle") != " ")) {
        jbOrderStr.put("InvoiceTitle", localJSONObject.get("InvoiceTitle"));
      }
      if ((localJSONObject.toString().contains("IdInvoiceHeaderType")) && (localJSONObject.get("IdInvoiceHeaderType") != null) && (localJSONObject.get("IdInvoiceHeaderType") != "") && (localJSONObject.get("IdInvoiceHeaderType") != " ")) {
        jbOrderStr.put("IdInvoiceHeaderType", localJSONObject.get("IdInvoiceHeaderType"));
      }
      if ((localJSONObject.toString().contains("CompanyName")) && (localJSONObject.get("CompanyName") != null) && (localJSONObject.get("CompanyName") != "") && (localJSONObject.get("CompanyName") != " ")) {
        jbOrderStr.put("CompanyName", localJSONObject.get("CompanyName"));
      }
      if ((localJSONObject.toString().contains("IdInvoiceType")) && (localJSONObject.get("IdInvoiceType") != null) && (localJSONObject.get("IdInvoiceType") != "") && (localJSONObject.get("IdInvoiceType") != " ")) {
        jbOrderStr.put("IdInvoiceType", localJSONObject.get("IdInvoiceType"));
      }
      if ((localJSONObject.toString().contains("IdInvoiceContentTypeBook")) && (localJSONObject.get("IdInvoiceContentTypeBook") != null) && (localJSONObject.get("IdInvoiceContentTypeBook") != "") && (localJSONObject.get("IdInvoiceContentTypeBook") != " ")) {
        jbOrderStr.put("IdInvoiceContentTypeBook", localJSONObject.get("IdInvoiceContentTypeBook"));
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updateCompositeOrderStrByModifyPayment()
  {
    try
    {
      JSONObject localJSONObject = Constants.mModifiedPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected);
      if (LastOrderInfo.mPaymentInfo.nSelected == 3)
      {
        if ((localJSONObject.get("IdPaymentType").toString() != "null") && (localJSONObject.get("IdPaymentType") != null) && (localJSONObject.get("IdPaymentType") != "") && (localJSONObject.get("IdPaymentType") != " ")) {
          jbOrderStr.put("IdPaymentType", localJSONObject.get("IdPaymentType"));
        }
        if ((localJSONObject.get("IdPickSite").toString() != "null") && (localJSONObject.get("IdPickSite") != null) && (localJSONObject.get("IdPickSite") != "") && (localJSONObject.get("IdPickSite") != " ")) {
          jbOrderStr.put("IdPickSite", localJSONObject.get("IdPickSite"));
        }
      }
      else
      {
        if ((localJSONObject.toString().contains("IdPaymentType")) && (localJSONObject.get("IdPaymentType").toString() != "null") && (localJSONObject.get("IdPaymentType") != null) && (localJSONObject.get("IdPaymentType") != "") && (localJSONObject.get("IdPaymentType") != " ")) {
          jbOrderStr.put("IdPaymentType", localJSONObject.get("IdPaymentType"));
        }
        if ((localJSONObject.toString().contains("IdShipmentType")) && (localJSONObject.get("IdShipmentType").toString() != "null") && (localJSONObject.get("IdShipmentType") != null) && (localJSONObject.get("IdShipmentType") != "") && (localJSONObject.get("IdShipmentType") != " ")) {
          jbOrderStr.put("IdShipmentType", localJSONObject.get("IdShipmentType"));
        }
        if ((localJSONObject.toString().contains("CODTime")) && (localJSONObject.get("CODTime") != null) && (localJSONObject.get("CODTime") != "") && (localJSONObject.get("CODTime") != " ")) {
          jbOrderStr.put("CODTime", localJSONObject.get("CODTime"));
        }
        if ((localJSONObject.toString().contains("IsCodInform")) && (localJSONObject.get("IsCodInform") != null) && (localJSONObject.get("IsCodInform") != "") && (localJSONObject.get("IsCodInform") != " ")) {
          jbOrderStr.put("IsCodInform", localJSONObject.get("IsCodInform"));
        }
        if ((localJSONObject.toString().contains("PaymentWay")) && (localJSONObject.get("PaymentWay") != null) && (localJSONObject.get("PaymentWay") != "") && (localJSONObject.get("PaymentWay") != " "))
        {
          jbOrderStr.put("PaymentWay", localJSONObject.get("PaymentWay"));
          return;
        }
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updateInvoinceInfo()
  {
    if (mNewInvoiceInfo == null) {
      mNewInvoiceInfo = new InvoiceInfo();
    }
    if (mNewInvoiceInfo.getInvoiceInfo() == null) {
      mNewInvoiceInfo.setInvoiceInfo(new JSONObject());
    }
    JSONObject localJSONObject = Constants.mModifiedInvoiceInfo.getInvoiceInfo();
    try
    {
      if (LastOrderInfo.mInvoiceInfo.getInvoiceInfo() == null)
      {
        LastOrderInfo.mInvoiceInfo.setInvoiceInfo(localJSONObject);
        mNewInvoiceInfo.setInvoiceInfo(localJSONObject);
        return;
      }
      if ((localJSONObject.toString().contains("IdInvoiceContentsType")) && (localJSONObject.get("IdInvoiceContentsType") != null) && (localJSONObject.get("IdInvoiceContentsType") != "") && (localJSONObject.get("IdInvoiceContentsType") != " "))
      {
        LastOrderInfo.mInvoiceInfo.getInvoiceInfo().put("IdInvoiceContentsType", localJSONObject.get("IdInvoiceContentsType"));
        mNewInvoiceInfo.getInvoiceInfo().put("IdInvoiceContentsType", localJSONObject.get("IdInvoiceContentsType"));
      }
      if ((localJSONObject.toString().contains("InvoiceTitle")) && (localJSONObject.get("InvoiceTitle") != null) && (localJSONObject.get("InvoiceTitle") != "") && (localJSONObject.get("InvoiceTitle") != " "))
      {
        LastOrderInfo.mInvoiceInfo.getInvoiceInfo().put("InvoiceTitle", localJSONObject.get("InvoiceTitle"));
        mNewInvoiceInfo.getInvoiceInfo().put("InvoiceTitle", localJSONObject.get("InvoiceTitle"));
      }
      if ((localJSONObject.toString().contains("IdInvoiceHeaderType")) && (localJSONObject.get("IdInvoiceHeaderType") != null) && (localJSONObject.get("IdInvoiceHeaderType") != "") && (localJSONObject.get("IdInvoiceHeaderType") != " "))
      {
        LastOrderInfo.mInvoiceInfo.getInvoiceInfo().put("IdInvoiceHeaderType", localJSONObject.get("IdInvoiceHeaderType"));
        mNewInvoiceInfo.getInvoiceInfo().put("IdInvoiceHeaderType", localJSONObject.get("IdInvoiceHeaderType"));
      }
      if ((localJSONObject.toString().contains("CompanyName")) && (localJSONObject.get("CompanyName") != null) && (localJSONObject.get("CompanyName") != "") && (localJSONObject.get("CompanyName") != " "))
      {
        LastOrderInfo.mInvoiceInfo.getInvoiceInfo().put("CompanyName", localJSONObject.get("CompanyName"));
        mNewInvoiceInfo.getInvoiceInfo().put("CompanyName", localJSONObject.get("CompanyName"));
      }
      if ((localJSONObject.toString().contains("IdInvoiceType")) && (localJSONObject.get("IdInvoiceType") != null) && (localJSONObject.get("IdInvoiceType") != "") && (localJSONObject.get("IdInvoiceType") != " "))
      {
        LastOrderInfo.mInvoiceInfo.getInvoiceInfo().put("IdInvoiceType", localJSONObject.get("IdInvoiceType"));
        mNewInvoiceInfo.getInvoiceInfo().put("IdInvoiceType", localJSONObject.get("IdInvoiceType"));
      }
      if ((localJSONObject.toString().contains("IdInvoiceContentTypeBook")) && (localJSONObject.get("IdInvoiceContentTypeBook") != null) && (localJSONObject.get("IdInvoiceContentTypeBook") != "") && (localJSONObject.get("IdInvoiceContentTypeBook") != " "))
      {
        LastOrderInfo.mInvoiceInfo.getInvoiceInfo().put("IdInvoiceContentTypeBook", localJSONObject.get("IdInvoiceContentTypeBook"));
        mNewInvoiceInfo.getInvoiceInfo().put("IdInvoiceContentTypeBook", localJSONObject.get("IdInvoiceContentTypeBook"));
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updateOrderStrByUserInfo()
  {
    try
    {
      jbOrderStr.put("pin", this.lsPin);
      if ((LastOrderInfo.mUserInfo.getUserName() != null) && (LastOrderInfo.mUserInfo.getUserName() != "") && (LastOrderInfo.mUserInfo.getUserName() != " ")) {
        jbOrderStr.put("Name", LastOrderInfo.mUserInfo.getUserName());
      }
      if ((LastOrderInfo.mUserInfo.getUserMobile() != null) && (LastOrderInfo.mUserInfo.getUserMobile() != "") && (LastOrderInfo.mUserInfo.getUserMobile() != " ")) {
        jbOrderStr.put("Mobile", LastOrderInfo.mUserInfo.getUserMobile());
      }
      if (isLastOrderInfoContainField("Phone", jsonOrderInfoContainer)) {
        jbOrderStr.put("Phone", LastOrderInfo.mUserInfo.getUserPhone());
      }
      if ((LastOrderInfo.mUserInfo.getUserZip() != null) && (LastOrderInfo.mUserInfo.getUserZip() != "") && (LastOrderInfo.mUserInfo.getUserZip() != " ")) {
        jbOrderStr.put("Zip", LastOrderInfo.mUserInfo.getUserZip());
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("IdProvince"))) {
        jbOrderStr.put("IdProvince", LastOrderInfo.mUserInfo.getUserAddr().get("IdProvince"));
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("IdCity"))) {
        jbOrderStr.put("IdCity", LastOrderInfo.mUserInfo.getUserAddr().get("IdCity"));
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("IdArea"))) {
        jbOrderStr.put("IdArea", LastOrderInfo.mUserInfo.getUserAddr().get("IdArea"));
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("IdTown"))) {
        jbOrderStr.put("IdTown", LastOrderInfo.mUserInfo.getUserAddr().get("IdTown"));
      }
      for (;;)
      {
        if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("Where"))) {
          jbOrderStr.put("Where", LastOrderInfo.mUserInfo.getUserAddr().get("Where"));
        }
        if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("Email"))) {
          jbOrderStr.put("Email", LastOrderInfo.mUserInfo.getUserAddr().get("Email"));
        }
        if (!isLastOrderInfoContainField("UserLevel", jsonOrderInfoContainer)) {
          break;
        }
        jbOrderStr.put("UserLevel", LastOrderInfo.mUserInfo.getUserAddr().get("UserLevel"));
        return;
        jbOrderStr.remove("IdTown");
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updateOrderStrByUserInfoByAddEasyTemp()
  {
    try
    {
      jbOrderStr.put("pin", LoginUserBase.getLoginUserName());
      if ((LastOrderInfo.mUserInfo.getUserName() != null) && (LastOrderInfo.mUserInfo.getUserName() != "") && (LastOrderInfo.mUserInfo.getUserName() != " ")) {
        jbOrderStr.put("Name", LastOrderInfo.mUserInfo.getUserName());
      }
      if ((LastOrderInfo.mUserInfo.getUserMobile() != null) && (LastOrderInfo.mUserInfo.getUserMobile() != "") && (LastOrderInfo.mUserInfo.getUserMobile() != " ")) {
        jbOrderStr.put("Mobile", LastOrderInfo.mUserInfo.getUserMobile());
      }
      if ((LastOrderInfo.mUserInfo.getUserZip() != null) && (LastOrderInfo.mUserInfo.getUserZip() != "") && (LastOrderInfo.mUserInfo.getUserZip() != " ")) {
        jbOrderStr.put("Zip", LastOrderInfo.mUserInfo.getUserZip());
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("IdProvince"))) {
        jbOrderStr.put("IdProvince", LastOrderInfo.mUserInfo.getUserAddr().get("IdProvince"));
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("IdCity"))) {
        jbOrderStr.put("IdCity", LastOrderInfo.mUserInfo.getUserAddr().get("IdCity"));
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("IdArea"))) {
        jbOrderStr.put("IdArea", LastOrderInfo.mUserInfo.getUserAddr().get("IdArea"));
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("Where"))) {
        jbOrderStr.put("Where", LastOrderInfo.mUserInfo.getUserAddr().get("Where"));
      }
      if ((LastOrderInfo.mUserInfo.getUserAddr() != null) && (LastOrderInfo.mUserInfo.getUserAddr().toString().contains("Email"))) {
        jbOrderStr.put("Email", LastOrderInfo.mUserInfo.getUserAddr().get("Email"));
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updatePayWayInfo(JSONObjectProxy paramJSONObjectProxy)
  {
    new JSONObject();
    try
    {
      localJSONObjectProxy = paramJSONObjectProxy.getJSONArray("ShipmentTypes").getJSONObject(0);
      localJSONObject = new JSONObject();
      localJSONObject.put("IdPaymentType", LastOrderInfo.mPaymentInfo.nSelected);
      localJSONObject.put("IdShipmentType", localJSONObjectProxy.get("Id"));
      if ((!localJSONObjectProxy.isNull("SupCodTime")) && (!localJSONObjectProxy.isNull("CanShipTime")) && (localJSONObjectProxy.getBoolean("CanShipTime"))) {
        localJSONObject.put("CODTime", localJSONObjectProxy.getJSONArray("SupCodTime").getJSONObject(0).getInt("Id"));
      }
    }
    catch (JSONException localJSONException)
    {
      JSONObjectProxy localJSONObjectProxy;
      JSONObject localJSONObject;
      JSONArray localJSONArray;
      label158:
      localJSONException.printStackTrace();
      return;
    }
    try
    {
      localJSONArray = localJSONObjectProxy.getJSONArray("SupPaymentWay");
      if (localJSONArray != null) {
        localJSONObject.put("PaymentWay", localJSONArray.getJSONObject(0).getInt("Id"));
      }
    }
    catch (Exception localException)
    {
      break label158;
    }
    LastOrderInfo.mPaymentInfo.nSelected = localJSONObject.getInt("IdPaymentType");
    LastOrderInfo.mPaymentInfo.setPayMentType(localJSONObject.getInt("IdPaymentType"), localJSONObject);
  }
  
  private void updatePayWayInfoPost()
  {
    new JSONObject();
    try
    {
      JSONObject localJSONObject1 = mNewPaymentInfo.getPayMentType(2).getJSONArray("ShipmentTypes").getJSONObject(0);
      new JSONArray();
      JSONArray localJSONArray = localJSONObject1.getJSONArray("SupCodTime");
      JSONObject localJSONObject2 = new JSONObject();
      if (mNewPaymentInfo.getPostArray().getJSONObject(0).toString().contains("商户客户号"))
      {
        localJSONObject2.put("postid", mNewPaymentInfo.getPostArray().getJSONObject(0).getString("value"));
        localJSONObject2.put("postreceiver", mNewPaymentInfo.getPostArray().getJSONObject(1).getString("value"));
      }
      for (;;)
      {
        localJSONObject2.put("IdPaymentType", LastOrderInfo.mPaymentInfo.nSelected);
        localJSONObject2.put("IdShipmentType", localJSONObject1.get("Id"));
        localJSONObject2.put("CODTime", localJSONArray.getJSONObject(0).getInt("Id"));
        LastOrderInfo.mPaymentInfo.nSelected = localJSONObject2.getInt("IdPaymentType");
        LastOrderInfo.mPaymentInfo.setPayMentType(localJSONObject2.getInt("IdPaymentType"), localJSONObject2);
        return;
        localJSONObject2.put("postid", mNewPaymentInfo.getPostArray().getJSONObject(1).getString("value"));
        localJSONObject2.put("postreceiver", mNewPaymentInfo.getPostArray().getJSONObject(0).getString("value"));
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updatePayWayInfoSelf()
  {
    try
    {
      new JSONArray();
      JSONArray localJSONArray = mNewPaymentInfo.getPaymentDetailInfos();
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("IdPaymentType", LastOrderInfo.mPaymentInfo.nSelected);
      localJSONObject.put("IdPickSite", localJSONArray.getJSONObject(0).getInt("Id"));
      LastOrderInfo.mPaymentInfo.nSelected = localJSONObject.getInt("IdPaymentType");
      jbOrderStr.put("IdPaymentType", localJSONObject.getInt("IdPaymentType"));
      jbOrderStr.put("IdPickSite", localJSONObject.getInt("IdPickSite"));
      LastOrderInfo.mPaymentInfo.setPayMentType(localJSONObject.getInt("IdPaymentType"), localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updatePaymentInfo(Intent paramIntent)
  {
    if (mNewPaymentInfo == null) {
      mNewPaymentInfo = new PaymentInfo();
    }
    JSONObject localJSONObject;
    try
    {
      Constants.mModifiedPaymentInfo = new PaymentInfo();
      localJSONObject = new JSONObject();
      int i = paramIntent.getIntExtra("IdPaymentType", 1);
      localJSONObject.put("IdPaymentType", i);
      if (i == 3) {
        localJSONObject.put("IdPickSite", paramIntent.getIntExtra("IdPickSite", 0));
      }
      for (;;)
      {
        LastOrderInfo.mPaymentInfo.nSelected = i;
        Constants.mModifiedPaymentInfo.setPayMentType(i, localJSONObject);
        if ((LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected) != null) && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).toString() != "{}") && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).toString() != "{ }") && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).toString() != "") && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).length() >= 1) && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).toString() != " ")) {
          break;
        }
        LastOrderInfo.mPaymentInfo.setPayMentType(LastOrderInfo.mPaymentInfo.nSelected, localJSONObject);
        mNewPaymentInfo.setPayMentType(LastOrderInfo.mPaymentInfo.nSelected, localJSONObject);
        return;
        localJSONObject.put("IdShipmentType", paramIntent.getIntExtra("IdShipmentType", 0));
        localJSONObject.put("CODTime", paramIntent.getIntExtra("CODTime", 0));
        localJSONObject.put("IsCodInform", paramIntent.getBooleanExtra("IsCodInform", false));
        if (i == 1) {
          localJSONObject.put("PaymentWay", paramIntent.getIntExtra("PaymentWay", 0));
        }
      }
      if (LastOrderInfo.mPaymentInfo.nSelected != 3) {
        break label504;
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      return;
    }
    if ((localJSONObject.get("IdPaymentType") != null) && (localJSONObject.get("IdPaymentType") != "") && (localJSONObject.get("IdPaymentType") != " "))
    {
      LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPaymentType", localJSONObject.get("IdPaymentType"));
      mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPaymentType", localJSONObject.get("IdPaymentType"));
    }
    if ((localJSONObject.get("IdPickSite") != null) && (localJSONObject.get("IdPickSite") != "") && (localJSONObject.get("IdPickSite") != " "))
    {
      LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPickSite", localJSONObject.get("IdPickSite"));
      mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPickSite", localJSONObject.get("IdPickSite"));
      return;
      label504:
      if ((localJSONObject.get("IdPaymentType") != null) && (localJSONObject.get("IdPaymentType") != "") && (localJSONObject.get("IdPaymentType") != " "))
      {
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPaymentType", localJSONObject.get("IdPaymentType"));
        mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPaymentType", localJSONObject.get("IdPaymentType"));
      }
      if ((localJSONObject.get("IdShipmentType") != null) && (localJSONObject.get("IdShipmentType") != "") && (localJSONObject.get("IdShipmentType") != " "))
      {
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdShipmentType", localJSONObject.get("IdShipmentType"));
        mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdShipmentType", localJSONObject.get("IdShipmentType"));
      }
      if ((localJSONObject.toString().contains("CODTime")) && (localJSONObject.get("CODTime") != null) && (localJSONObject.get("CODTime").toString() != "null") && (localJSONObject.get("CODTime").toString() != "") && (localJSONObject.get("CODTime").toString() != " "))
      {
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("CODTime", localJSONObject.get("CODTime"));
        mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("CODTime", localJSONObject.get("CODTime"));
        if ((!localJSONObject.toString().contains("PaymentWay")) || (localJSONObject.get("PaymentWay").toString() == "null") || (localJSONObject.get("PaymentWay") == null) || (localJSONObject.get("PaymentWay").toString() == "") || (localJSONObject.get("PaymentWay").toString() == " ")) {
          break label1140;
        }
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("PaymentWay", localJSONObject.get("PaymentWay"));
        mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("PaymentWay", localJSONObject.get("PaymentWay"));
        label926:
        if ((!localJSONObject.toString().contains("IsCodInform")) || (localJSONObject.get("IsCodInform").toString() == "null") || (localJSONObject.get("IsCodInform") == null) || (localJSONObject.get("IsCodInform").toString() == "") || (localJSONObject.get("IsCodInform").toString() == " ")) {
          break label1181;
        }
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IsCodInform", localJSONObject.get("IsCodInform"));
        mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IsCodInform", localJSONObject.get("IsCodInform"));
      }
      for (;;)
      {
        this.mBigInfo = ((BigHouseholdappliancesInfo)paramIntent.getSerializableExtra("selectBigitem"));
        if (this.mBigInfo == null) {
          this.mBigInfo = new BigHouseholdappliancesInfo();
        }
        jbOrderStr.put("BigItemCodDate", this.mBigInfo.getValue());
        return;
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("CODTime");
        mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("CODTime");
        break;
        label1140:
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("PaymentWay");
        mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("PaymentWay");
        break label926;
        label1181:
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("IsCodInform");
        mNewPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("IsCodInform");
      }
    }
  }
  
  private void updatePaymentTypes()
  {
    updatCcomositeBody();
    setUpConnAndGetData("paymentType", jbBody, "paymentInfo");
  }
  
  private void updatePaymentTypesByAddEasyBuy()
  {
    try
    {
      jbBody = null;
      jbBody = new JSONObject();
      jbBody.put("OrderStr", jbOrderStr);
      setUpConnAndGetData("easyBuyPaymentType", jbBody, "paymentInfo");
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
  
  private void updatePaymentTypesByInvoice()
  {
    String str;
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
    {
      str = "easyBuyPaymentType";
      updateCompositeOrderStrByInvoice();
      jbBody = new JSONObject();
    }
    for (;;)
    {
      try
      {
        jbBody.put("OrderStr", jbOrderStr);
        setUpConnAndGetData(str, jbBody, "paymentInfo");
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        continue;
      }
      str = "paymentType";
      updatCcomositeBodyByInvoice();
    }
  }
  
  private void updatePaymentTypesByModifyPayment()
  {
    String str;
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
    {
      str = "easyBuyPaymentType";
      updateCompositeOrderStrByModifyPayment();
      jbBody = new JSONObject();
    }
    for (;;)
    {
      try
      {
        jbBody.put("OrderStr", jbOrderStr);
        setUpConnAndGetData(str, jbBody, "paymentInfo");
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        continue;
      }
      str = "paymentType";
      updatCcomositeBodyByModifyPayment();
    }
  }
  
  private void updateUserInfo()
  {
    if (mNewUserInfo == null) {
      mNewUserInfo = new UserInfo();
    }
    if ((Constants.mModifiedUserInfo.getUserName() != null) && (Constants.mModifiedUserInfo.getUserName() != "") && (Constants.mModifiedUserInfo.getUserName() != " "))
    {
      LastOrderInfo.mUserInfo.setUserName(Constants.mModifiedUserInfo.getUserName());
      mNewUserInfo.setUserName(Constants.mModifiedUserInfo.getUserName());
    }
    if ((Constants.mModifiedUserInfo.getUserMobile() != null) && (Constants.mModifiedUserInfo.getUserMobile() != "") && (Constants.mModifiedUserInfo.getUserMobile() != " "))
    {
      LastOrderInfo.mUserInfo.setUserMobile(Constants.mModifiedUserInfo.getUserMobile());
      mNewUserInfo.setUserMobile(Constants.mModifiedUserInfo.getUserMobile());
    }
    if (Constants.mModifiedUserInfo.getUserZip() != null)
    {
      LastOrderInfo.mUserInfo.setUserZip(Constants.mModifiedUserInfo.getUserZip());
      mNewUserInfo.setUserZip(Constants.mModifiedUserInfo.getUserZip());
    }
    new JSONObject();
    JSONObject localJSONObject = Constants.mModifiedUserInfo.getUserAddr();
    try
    {
      if ((localJSONObject.toString().contains("IdProvince")) && (localJSONObject.get("IdProvince") != null) && (localJSONObject.get("IdProvince") != "") && (localJSONObject.get("IdProvince") != "  "))
      {
        LastOrderInfo.mUserInfo.getUserAddr().put("IdProvince", localJSONObject.get("IdProvince"));
        mNewUserInfo.getUserAddr().put("IdProvince", localJSONObject.get("IdProvince"));
      }
      if ((localJSONObject.toString().contains("IdCity")) && (localJSONObject.get("IdCity") != null) && (localJSONObject.get("IdCity") != "") && (localJSONObject.get("IdCity") != "  "))
      {
        LastOrderInfo.mUserInfo.getUserAddr().put("IdCity", localJSONObject.get("IdCity"));
        mNewUserInfo.getUserAddr().put("IdCity", localJSONObject.get("IdCity"));
      }
      if (!localJSONObject.isNull("IdTown"))
      {
        LastOrderInfo.mUserInfo.getUserAddr().put("IdTown", localJSONObject.get("IdTown"));
        mNewUserInfo.getUserAddr().put("IdTown", localJSONObject.get("IdTown"));
      }
      for (;;)
      {
        if ((localJSONObject.toString().contains("IdArea")) && (localJSONObject.get("IdArea") != null) && (localJSONObject.get("IdArea") != "") && (localJSONObject.get("IdArea") != "  "))
        {
          LastOrderInfo.mUserInfo.getUserAddr().put("IdArea", localJSONObject.get("IdArea"));
          mNewUserInfo.getUserAddr().put("IdArea", localJSONObject.get("IdArea"));
        }
        if ((localJSONObject.toString().contains("Where")) && (localJSONObject.get("Where") != null) && (localJSONObject.get("Where") != "") && (localJSONObject.get("Where") != "  "))
        {
          LastOrderInfo.mUserInfo.getUserAddr().put("Where", localJSONObject.get("Where"));
          mNewUserInfo.getUserAddr().put("Where", localJSONObject.get("Where"));
        }
        if ((!localJSONObject.toString().contains("Email")) || (localJSONObject.get("Email") == null) || (localJSONObject.get("Email") == "") || (localJSONObject.get("Email") == "  ")) {
          break;
        }
        LastOrderInfo.mUserInfo.getUserAddr().put("Email", localJSONObject.get("Email"));
        mNewUserInfo.getUserAddr().put("Email", localJSONObject.get("Email"));
        return;
        LastOrderInfo.mUserInfo.getUserAddr().remove("IdTown");
        mNewUserInfo.getUserAddr().remove("IdTown");
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updateUserInfoByAddEasyBuy()
  {
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
    {
      mNewUserInfo = new UserInfo();
      LastOrderInfo.mUserInfo = new UserInfo();
    }
    if ((Constants.mModifiedUserInfo.getUserName() != null) && (Constants.mModifiedUserInfo.getUserName() != "") && (Constants.mModifiedUserInfo.getUserName() != " "))
    {
      LastOrderInfo.mUserInfo.setUserName(Constants.mModifiedUserInfo.getUserName());
      mNewUserInfo.setUserName(Constants.mModifiedUserInfo.getUserName());
    }
    if ((Constants.mModifiedUserInfo.getUserMobile() != null) && (Constants.mModifiedUserInfo.getUserMobile() != "") && (Constants.mModifiedUserInfo.getUserMobile() != " "))
    {
      LastOrderInfo.mUserInfo.setUserMobile(Constants.mModifiedUserInfo.getUserMobile());
      mNewUserInfo.setUserMobile(Constants.mModifiedUserInfo.getUserMobile());
    }
    if (Constants.mModifiedUserInfo.getUserZip() != null)
    {
      LastOrderInfo.mUserInfo.setUserZip(Constants.mModifiedUserInfo.getUserZip());
      mNewUserInfo.setUserZip(Constants.mModifiedUserInfo.getUserZip());
    }
    new JSONObject();
    JSONObject localJSONObject = Constants.mModifiedUserInfo.getUserAddr();
    try
    {
      if ((localJSONObject.toString().contains("IdProvince")) && (localJSONObject.get("IdProvince") != null) && (localJSONObject.get("IdProvince") != "") && (localJSONObject.get("IdProvince") != "  "))
      {
        LastOrderInfo.mUserInfo.getUserAddr().put("IdProvince", localJSONObject.get("IdProvince"));
        mNewUserInfo.getUserAddr().put("IdProvince", localJSONObject.get("IdProvince"));
      }
      if ((localJSONObject.toString().contains("IdCity")) && (localJSONObject.get("IdCity") != null) && (localJSONObject.get("IdCity") != "") && (localJSONObject.get("IdCity") != "  "))
      {
        LastOrderInfo.mUserInfo.getUserAddr().put("IdCity", localJSONObject.get("IdCity"));
        mNewUserInfo.getUserAddr().put("IdCity", localJSONObject.get("IdCity"));
      }
      if ((localJSONObject.toString().contains("IdArea")) && (localJSONObject.get("IdArea") != null) && (localJSONObject.get("IdArea") != "") && (localJSONObject.get("IdArea") != "  "))
      {
        LastOrderInfo.mUserInfo.getUserAddr().put("IdArea", localJSONObject.get("IdArea"));
        mNewUserInfo.getUserAddr().put("IdArea", localJSONObject.get("IdArea"));
      }
      if ((localJSONObject.toString().contains("Where")) && (localJSONObject.get("Where") != null) && (localJSONObject.get("Where") != "") && (localJSONObject.get("Where") != "  "))
      {
        LastOrderInfo.mUserInfo.getUserAddr().put("Where", localJSONObject.get("Where"));
        mNewUserInfo.getUserAddr().put("Where", localJSONObject.get("Where"));
      }
      if ((localJSONObject.toString().contains("Email")) && (localJSONObject.get("Email") != null) && (localJSONObject.get("Email") != "") && (localJSONObject.get("Email") != "  "))
      {
        LastOrderInfo.mUserInfo.getUserAddr().put("Email", localJSONObject.get("Email"));
        mNewUserInfo.getUserAddr().put("Email", localJSONObject.get("Email"));
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void updateYouHuiXin()
  {
    LayoutInflater.from(this);
    RelativeLayout localRelativeLayout1 = (RelativeLayout)findViewById(2131493399);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)ImageUtil.inflate(2130903373, null).findViewById(2131495632);
    this.youhuiInfoList = null;
    this.youhuiInfoList = ((ListView)localRelativeLayout2.getChildAt(1));
    ((TextView)localRelativeLayout2.getChildAt(0)).setVisibility(0);
    localRelativeLayout2.requestLayout();
    ArrayList localArrayList = new ArrayList();
    HashMap localHashMap = new HashMap();
    Object localObject = " ";
    int i = 0;
    int j;
    double d1;
    int k;
    if (Constants.jdSwitch) {
      if ((Constants.dongSel != null) && (Constants.dongSel.toString() != "null") && (Constants.dongSel.toString() != "") && (Constants.dongSel.toString() != " "))
      {
        try
        {
          String str = localObject + "使用1张东券, 面额" + Constants.dongSel.get("Discount").toString() + "元";
          localObject = str;
        }
        catch (JSONException localJSONException3)
        {
          for (;;)
          {
            label224:
            localJSONException3.printStackTrace();
            i = 0;
          }
        }
        if ((Constants.liSelArray == null) || (Constants.liSelArray.toString() == "null") || (Constants.liSelArray.length() <= 0)) {
          break label836;
        }
        j = 0;
        d1 = 0.0D;
        k = 0;
        if (k < Constants.liSelArray.length()) {
          break label684;
        }
        if ((localObject != null) && (localObject != "") && (localObject != " ")) {
          break label764;
        }
        localObject = localObject + "使用" + String.valueOf(j) + "张" + "礼品卡" + "," + " 余额" + String.valueOf(d1) + "元";
      }
    }
    for (;;)
    {
      if ((localObject == "") || (localObject == " ")) {
        localObject = "您没有选择优惠券或礼品卡";
      }
      localHashMap.put("name", localObject);
      localArrayList.add(localHashMap);
      Constants.item = new ArrayList();
      Constants.item.add(localHashMap);
      ListView localListView1 = this.youhuiInfoList;
      YouHuiAdapter localYouHuiAdapter = new YouHuiAdapter(this, Constants.item);
      localListView1.setAdapter(localYouHuiAdapter);
      localRelativeLayout1.removeAllViews();
      localRelativeLayout1.addView(localRelativeLayout2);
      ListView localListView2 = this.youhuiInfoList;
      AdapterView.OnItemClickListener local36 = new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          Intent localIntent = new Intent(FillOrderActivity.this, EditYouHuiLipinActivity.class);
          if (FillOrderActivity.this.jdSecurity != null)
          {
            localIntent.putExtra("bCard", FillOrderActivity.this.jdSecurity.getGiftCardAvailable());
            localIntent.putExtra("bJingCoupon", FillOrderActivity.this.jdSecurity.getJingCouponAvailable());
            localIntent.putExtra("bDongCoupon", FillOrderActivity.this.jdSecurity.getDongCouponAvailable());
            localIntent.putExtra("bCardtip", FillOrderActivity.this.jdSecurity.getGiftCardTip());
            localIntent.putExtra("bJingCoupontip", FillOrderActivity.this.jdSecurity.getJingCouponTip());
            localIntent.putExtra("bDongCoupontip", FillOrderActivity.this.jdSecurity.getDongCouponTip());
          }
          FillOrderActivity.this.startActivityForResult(localIntent, 5);
        }
      };
      localListView2.setOnItemClickListener(local36);
      return;
      i = 1;
      break;
      if ((Constants.jinSelArray != null) && (Constants.jinSelArray.toString() != "null") && (Constants.jinSelArray.toString() != "") && (Constants.jinSelArray.length() > 0))
      {
        int m = 0;
        double d3 = 0.0D;
        int n = 0;
        for (;;)
        {
          if (n >= Constants.jinSelArray.length())
          {
            localObject = localObject + "使用" + String.valueOf(m) + "张" + "京券" + "," + " 面额" + String.valueOf(d3) + "元";
            i = 0;
            break;
          }
          try
          {
            JSONObject localJSONObject3 = new JSONObject();
            if ((localJSONObject3 != null) && (localJSONObject3.toString() != "null"))
            {
              JSONObject localJSONObject4 = Constants.jinSelArray.getJSONObject(n);
              m++;
              double d4 = Double.valueOf(localJSONObject4.get("Discount").toString()).doubleValue();
              d3 += d4;
            }
            n++;
          }
          catch (JSONException localJSONException2)
          {
            for (;;)
            {
              localJSONException2.printStackTrace();
            }
          }
        }
      }
      i = 1;
      break;
      try
      {
        label684:
        JSONObject localJSONObject1 = new JSONObject();
        if ((localJSONObject1 != null) && (localJSONObject1.toString() != "null"))
        {
          JSONObject localJSONObject2 = Constants.liSelArray.getJSONObject(k);
          j++;
          double d2 = Double.valueOf(localJSONObject2.get("LeaveMoney").toString()).doubleValue();
          d1 += d2;
        }
        k++;
      }
      catch (JSONException localJSONException1)
      {
        for (;;)
        {
          localJSONException1.printStackTrace();
        }
      }
      break label224;
      label764:
      localObject = localObject + "\n 使用" + String.valueOf(j) + "张" + "礼品卡" + "," + " 余额" + String.valueOf(d1) + "元";
      continue;
      label836:
      if (i != 0) {
        localObject = "您没有选择优惠券或礼品卡";
      }
    }
  }
  
  public void comositeBody()
  {
    compositeOrderStr();
    getCartItemInfo();
    jbBody = new JSONObject();
    try
    {
      jbBody.put("OrderStr", jbOrderStr);
      jbBody.put("CartStr", jbCartStr);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  protected void initDefalutPaymentType()
  {
    if (!mNewPaymentInfo.getPaymentTypes().toString().contains(String.valueOf(LastOrderInfo.mPaymentInfo.nSelected))) {}
    try
    {
      LastOrderInfo.mPaymentInfo.nSelected = mNewPaymentInfo.getPaymentTypes().getJSONObject(0).getInt("Id");
      LastOrderInfo.mPaymentInfo.setPayMentType(LastOrderInfo.mPaymentInfo.nSelected, mNewPaymentInfo.getPaymentTypes().getJSONObject(0));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected void initIfNeedCall(Resources paramResources, JSONObject paramJSONObject1, JSONObject paramJSONObject2, Map paramMap, String paramString)
  {
    if (paramString != null) {
      try
      {
        if (paramString.contains("京东"))
        {
          String str;
          if ((!paramJSONObject1.isNull("SupInforms")) && (!paramJSONObject2.isNull("IsCodInform")) && (paramJSONObject2.getBoolean("IsCodInform"))) {
            str = paramResources.getString(2131165603);
          }
          for (Constants.bPhone = true;; Constants.bPhone = false)
          {
            paramMap.put("mInforms", str);
            return;
            str = paramResources.getString(2131165604);
          }
        }
        return;
      }
      catch (Resources.NotFoundException localNotFoundException) {}catch (JSONException localJSONException) {}
    }
  }
  
  public void initLastOrderInfo(JSONObjectProxy paramJSONObjectProxy)
  {
    if (paramJSONObjectProxy == null) {
      return;
    }
    for (;;)
    {
      try
      {
        if ((paramJSONObjectProxy.isNull("needRemark")) || (!paramJSONObjectProxy.getBoolean("needRemark"))) {
          continue;
        }
        this.isNeedRemark = true;
        this.lsPin = paramJSONObjectProxy.getStringOrNull("Pin");
        if ((isLastOrderInfoContainField("Name", paramJSONObjectProxy)) && ("" != paramJSONObjectProxy.getStringOrNull("Name")) && (paramJSONObjectProxy.getStringOrNull("Name") != null) && (paramJSONObjectProxy.getStringOrNull("Name").length() > 0)) {
          LastOrderInfo.mUserInfo.setUserName(paramJSONObjectProxy.getStringOrNull("Name"));
        }
        if (isLastOrderInfoContainField("Phone", paramJSONObjectProxy)) {
          LastOrderInfo.mUserInfo.setUserPhone(paramJSONObjectProxy.getStringOrNull("Phone"));
        }
        if (isLastOrderInfoContainField("Mobile", paramJSONObjectProxy)) {
          LastOrderInfo.mUserInfo.setUserMobile(paramJSONObjectProxy.getStringOrNull("Mobile"));
        }
        if (isLastOrderInfoContainField("Zip", paramJSONObjectProxy)) {
          LastOrderInfo.mUserInfo.setUserZip(paramJSONObjectProxy.getStringOrNull("Zip"));
        }
        JSONObject localJSONObject1 = new JSONObject();
        localJSONObject1.put("IdProvince", paramJSONObjectProxy.getIntOrNull("IdProvince"));
        localJSONObject1.put("IdCity", paramJSONObjectProxy.getIntOrNull("IdCity"));
        localJSONObject1.put("IdArea", paramJSONObjectProxy.getIntOrNull("IdArea"));
        if (!paramJSONObjectProxy.isNull("IdTown")) {
          localJSONObject1.put("IdTown", paramJSONObjectProxy.getIntOrNull("IdTown"));
        }
        if (isLastOrderInfoContainField("Where", paramJSONObjectProxy)) {
          localJSONObject1.put("Where", paramJSONObjectProxy.getStringOrNull("Where"));
        }
        if (isLastOrderInfoContainField("Email", paramJSONObjectProxy)) {
          localJSONObject1.put("Email", paramJSONObjectProxy.getStringOrNull("Email"));
        }
        localJSONObject1.put("UserLevel", paramJSONObjectProxy.get("UserLevel"));
        LastOrderInfo.mUserInfo.setUserAddr(localJSONObject1);
        localJSONObject2 = new JSONObject();
        localJSONObject2.put("IdPaymentType", paramJSONObjectProxy.getIntOrNull("IdPaymentType"));
        localJSONObject2.put("IdShipmentType", paramJSONObjectProxy.getIntOrNull("IdShipmentType"));
        if (isLastOrderInfoContainField("CODTime", paramJSONObjectProxy)) {
          localJSONObject2.put("CODTime", paramJSONObjectProxy.getInt("CODTime"));
        }
        if (isLastOrderInfoContainField("CodDate", paramJSONObjectProxy)) {
          localJSONObject2.put("CodDate", paramJSONObjectProxy.get("CodDate"));
        }
        if (isLastOrderInfoContainField("ShipTime", paramJSONObjectProxy)) {
          localJSONObject2.put("ShipTime", paramJSONObjectProxy.get("ShipTime"));
        }
        if (!isLastOrderInfoContainField("IsCodInform", paramJSONObjectProxy)) {
          continue;
        }
        localJSONObject2.put("IsCodInform", paramJSONObjectProxy.get("IsCodInform"));
      }
      catch (Exception localException)
      {
        JSONObject localJSONObject2;
        JSONObject localJSONObject3;
        JSONObject localJSONObject4;
        JSONObject localJSONObject5;
        localException.printStackTrace();
        continue;
        localJSONObject2.put("IsCodInform", false);
        continue;
        localJSONObject3.put("IsPutBookInvoice", paramJSONObjectProxy.getBooleanOrNull("IsPutBookInvoice"));
        continue;
        localJSONObject3.put("IdInvoiceContentTypeBook", -1);
        continue;
      }
      if (isLastOrderInfoContainField("PaymentWay", paramJSONObjectProxy)) {
        localJSONObject2.put("PaymentWay", paramJSONObjectProxy.get("PaymentWay"));
      }
      if (isLastOrderInfoContainField("IdPickSite", paramJSONObjectProxy)) {
        localJSONObject2.put("IdPickSite", paramJSONObjectProxy.get("IdPickSite"));
      }
      LastOrderInfo.mPaymentInfo.nSelected = localJSONObject2.getInt("IdPaymentType");
      LastOrderInfo.mPaymentInfo.setPayMentType(localJSONObject2.getInt("IdPaymentType"), localJSONObject2);
      localJSONObject3 = new JSONObject();
      if (isLastOrderInfoContainField("IdInvoicePutType", paramJSONObjectProxy)) {
        localJSONObject3.put("IdInvoicePutType", paramJSONObjectProxy.get("IdInvoicePutType"));
      }
      if (isLastOrderInfoContainField("IdInvoiceContentTypeBook", paramJSONObjectProxy)) {
        localJSONObject3.put("IdInvoiceContentTypeBook", paramJSONObjectProxy.get("IdInvoiceContentTypeBook"));
      }
      if (isLastOrderInfoContainField("IdInvoiceContentsType", paramJSONObjectProxy)) {
        localJSONObject3.put("IdInvoiceContentsType", paramJSONObjectProxy.get("IdInvoiceContentsType"));
      }
      if (isLastOrderInfoContainField("InvoiceTitle", paramJSONObjectProxy)) {
        localJSONObject3.put("InvoiceTitle", paramJSONObjectProxy.get("InvoiceTitle"));
      }
      if (isLastOrderInfoContainField("IdInvoiceType", paramJSONObjectProxy)) {
        localJSONObject3.put("IdInvoiceType", paramJSONObjectProxy.get("IdInvoiceType"));
      }
      if (isLastOrderInfoContainField("CompanyName", paramJSONObjectProxy)) {
        localJSONObject3.put("CompanyName", paramJSONObjectProxy.get("CompanyName"));
      }
      if (isLastOrderInfoContainField("IdCompanyBranch", paramJSONObjectProxy)) {
        localJSONObject3.put("IdCompanyBranch", paramJSONObjectProxy.get("IdCompanyBranch"));
      }
      if (isLastOrderInfoContainField("IdInvoiceHeaderType", paramJSONObjectProxy)) {
        localJSONObject3.put("IdInvoiceHeaderType", paramJSONObjectProxy.getInt("IdInvoiceHeaderType"));
      }
      if ((!isLastOrderInfoContainField("IsPutBookInvoice", paramJSONObjectProxy)) || (paramJSONObjectProxy.getBooleanOrNull("IsPutBookInvoice") == null)) {
        continue;
      }
      if (paramJSONObjectProxy.getBooleanOrNull("IsPutBookInvoice").booleanValue()) {
        continue;
      }
      localJSONObject3.put("IdInvoiceContentTypeBook", -1);
      localJSONObject3.put("IsPutBookInvoice", paramJSONObjectProxy.getBooleanOrNull("IsPutBookInvoice"));
      LastOrderInfo.mInvoiceInfo.setInvoiceInfo(localJSONObject3);
      localJSONObject4 = new JSONObject();
      if (isLastOrderInfoContainField("TheCoupons", paramJSONObjectProxy))
      {
        localJSONObject4.put("TheCoupons", paramJSONObjectProxy.get("TheCoupons"));
        LastOrderInfo.mYouhuiQuan.Coupons = localJSONObject4;
      }
      localJSONObject5 = new JSONObject();
      if (isLastOrderInfoContainField("TheLipinkas", paramJSONObjectProxy))
      {
        localJSONObject5.put("TheLipinkas", paramJSONObjectProxy.get("TheLipinkas"));
        LastOrderInfo.mYouhuiQuan.LipinKas = localJSONObject5;
      }
      if (isLastOrderInfoContainField("Remark", paramJSONObjectProxy)) {
        LastOrderInfo.mRemark = paramJSONObjectProxy.getStringOrNull("Remark");
      }
      if (isLastOrderInfoContainField("PromotionPrice", paramJSONObjectProxy)) {
        LastOrderInfo.dPromotionPrice = Double.parseDouble(paramJSONObjectProxy.get("PromotionPrice").toString());
      }
      if (isLastOrderInfoContainField("Price", paramJSONObjectProxy)) {
        LastOrderInfo.dPrice = Double.parseDouble(paramJSONObjectProxy.get("Price").toString());
      }
      if (isLastOrderInfoContainField("IsUseBalance", paramJSONObjectProxy))
      {
        bUseBalance = paramJSONObjectProxy.getBoolean("IsUseBalance");
        jbOrderStr.put("IsUseBalance", bUseBalance);
      }
      if (isLastOrderInfoContainField("IsUseJdBean", paramJSONObjectProxy))
      {
        bUseJdbean = paramJSONObjectProxy.getBoolean("IsUseJdBean");
        jbOrderStr.put("isUseJdBean", bUseJdbean);
      }
      if (!paramJSONObjectProxy.isNull("usedJdBeanMap"))
      {
        currJdbean = new UsedJdbean(paramJSONObjectProxy, 0);
        jbOrderStr.put("canUseJdBeanCount", currJdbean.getCanUseJdBeanCount());
        jbOrderStr.put("totalJdBeanCount", currJdbean.getTotalJdBeanCount());
      }
      if (!paramJSONObjectProxy.isNull("BigItemCodDate"))
      {
        this.mBigInfo = new BigHouseholdappliancesInfo();
        this.mBigInfo.setValue(paramJSONObjectProxy.getString("BigItemCodDate"));
      }
      this.handler.post(new Runnable()
      {
        public void run()
        {
          if (FillOrderActivity.this.isNeedRemark)
          {
            FillOrderActivity.this.mRemarkLayout.setVisibility(0);
            FillOrderActivity.this.viewGap6.setVisibility(0);
            return;
          }
          FillOrderActivity.this.mRemarkLayout.setVisibility(8);
          FillOrderActivity.this.viewGap6.setVisibility(8);
        }
      });
      return;
      this.isNeedRemark = false;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt2)
    {
    default: 
      return;
    case 1: 
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
      {
        updateUserInfoByAddEasyBuy();
        updateOrderStrByUserInfoByAddEasyTemp();
        this.update_by_addr = true;
        updatePaymentTypesByAddEasyBuy();
      }
      while (this.scrollView != null)
      {
        this.scrollView.smoothScrollTo(0, 0);
        return;
        updateUserInfo();
        this.update_by_addr = true;
        updatePaymentTypes();
      }
    case 2: 
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
      {
        updateUserInfoByAddEasyBuy();
        updateOrderStrByUserInfoByAddEasyTemp();
        this.update_by_addr = true;
        updatePaymentTypesByAddEasyBuy();
        return;
      }
      updateUserInfo();
      this.update_by_addr = true;
      updatePaymentTypes();
      return;
    case 3: 
      this.update_by_payment = true;
      this.mPromiseTime = ((SelectPaymentTypeActivity.PromiseTime)paramIntent.getParcelableExtra("PromiseTime"));
      updatePaymentInfo(paramIntent);
      updatePaymentTypesByModifyPayment();
      return;
    case 4: 
      this.update_by_invoince = true;
      this.update_by_payment = true;
      updateInvoinceInfo();
      updatePaymentTypesByInvoice();
      return;
    }
    this.isUpdatePayment = true;
    updateYouHuiXin();
    recalOrderAfterYouHui();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.isNoRegisterOrder = LoginUser.hasLogin();
    Intent localIntent = getIntent();
    this.isEasyBuy = localIntent.getBooleanExtra("isEasyBuy", false);
    if (this.isEasyBuy) {
      this.easyBuySource = ((SourceEntity)localIntent.getSerializableExtra("easyBuySource"));
    }
    if (localIntent.getExtras() != null) {
      cartResponseInfo = (CartResponseInfo)localIntent.getExtras().get("selectedCartResponseInfo");
    }
    if (Constants.bAddEasyBuy)
    {
      setContentView(2130903120);
      mNewPaymentInfo = new PaymentInfo();
      mNewInvoiceInfo = new InvoiceInfo();
      this.jbYunFeeList = new JSONArrayPoxy();
      this.mTempName = ((EditText)findViewById(2131493343));
      this.mTempName.setEnabled(true);
      initComponent();
      compositeDefaultOrderStr();
      this.onlyBook = false;
      bUseBalance = false;
      this.update_by_addr = false;
      this.update_by_payment = false;
      this.update_by_invoince = false;
      this.noBook = false;
      this.newWay = false;
      setEmptyReceiverInfoArea();
      setEmptyPaymentInfoArea();
      setEmptyInvoinceInfoArea();
      getCartItemInfo();
      handleClickEvent();
    }
    for (;;)
    {
      this.context = this;
      return;
      if (Constants.bModifyEasyBuy)
      {
        setContentView(2130903120);
        mNewPaymentInfo = new PaymentInfo();
        mNewInvoiceInfo = new InvoiceInfo();
        this.jbYunFeeList = new JSONArrayPoxy();
        this.mTempName = ((EditText)findViewById(2131493343));
        this.mTempName.setEnabled(true);
        this.mTempName.setText(DefaultEasyTempOrderInfo.sTempName);
        initComponent();
        compositeOrderStr(DefaultEasyTempOrderInfo.jsonTemp.getJSONObjectOrNull("Info"));
        this.onlyBook = false;
        bUseBalance = true;
        this.update_by_addr = false;
        this.noBook = false;
        this.newWay = false;
        handleClickEvent();
        jsonOrderInfoContainer = DefaultEasyTempOrderInfo.jsonTemp;
        initLastOrderInfo(DefaultEasyTempOrderInfo.jsonTemp.getJSONObjectOrNull("Info"));
        getProvices();
      }
      else
      {
        setContentView(2130903130);
        mNewPaymentInfo = new PaymentInfo();
        mNewInvoiceInfo = new InvoiceInfo();
        this.jbYunFeeList = new JSONArrayPoxy();
        currBalance = null;
        currJdbean = null;
        isChangeJingOrDongQuan = false;
        initComponent();
        initOrderView();
        this.onlyBook = false;
        bUseBalance = true;
        bUseJdbean = true;
        this.update_by_addr = false;
        this.noBook = false;
        this.newWay = false;
        this.isUpdatePayment = true;
        Constants.dYTotalPrice = "0";
        if (this.isNoRegisterOrder)
        {
          LoadSecurityEnable();
          getCartItemInfo();
          handleClickEvent();
          if (!this.isEasyBuy)
          {
            getLarstOrderInfo();
            setYouhuiArea();
          }
          else
          {
            getEasyBuyInfo();
          }
        }
        else
        {
          getCartItemInfo();
          getLarstOrderInfo();
          handleClickEvent();
        }
      }
    }
  }
  
  public void onDestroy()
  {
    LastOrderInfo.mUserInfo = new UserInfo();
    LastOrderInfo.mPaymentInfo = new PaymentInfo();
    LastOrderInfo.mInvoiceInfo = new InvoiceInfo();
    LastOrderInfo.mYouhuiQuan = new YouHuiQuan();
    hideInputKey();
    this.inputmethodArray.clear();
    super.onDestroy();
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
  
  protected void onPause()
  {
    if (this.defrayEtArray != null) {}
    for (int i = 0;; i++)
    {
      if (i >= this.defrayEtArray.size())
      {
        if (this.mRemark != null) {
          this.mRemark.clearFocus();
        }
        if (this.sendMobileEt != null) {
          this.sendMobileEt.clearFocus();
        }
        if (this.mobilePasswordEt != null) {
          this.mobilePasswordEt.clearFocus();
        }
        super.onPause();
        return;
      }
      EditText localEditText = (EditText)this.defrayEtArray.get(i);
      if (localEditText.isFocused()) {
        localEditText.clearFocus();
      }
    }
  }
  
  public void updatCcomositeBody()
  {
    updateCompositeOrderStr();
    getCartItemInfo();
    jbBody = new JSONObject();
    try
    {
      jbBody.put("OrderStr", jbOrderStr);
      jbBody.put("CartStr", jbCartStr);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public void updatCcomositeBodyByInvoice()
  {
    updateCompositeOrderStrByInvoice();
    getCartItemInfo();
    jbBody = new JSONObject();
    try
    {
      jbBody.put("OrderStr", jbOrderStr);
      jbBody.put("CartStr", jbCartStr);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public void updatCcomositeBodyByModifyPayment()
  {
    updateCompositeOrderStrByModifyPayment();
    getCartItemInfo();
    jbBody = new JSONObject();
    try
    {
      jbBody.put("OrderStr", jbOrderStr);
      jbBody.put("CartStr", jbCartStr);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public static class CaptchaDialogController
    extends DialogController
  {
    private ImageView captchaImage;
    private EditText captchaInput;
    private String captchaKey;
    private final String captchaUrl;
    private MyActivity currentMyActivity = MyApplication.getInstance().getCurrentMyActivity();
    private ExceptionDrawable loadingDrawable;
    private ExceptionDrawable noDrawable;
    private Button switchButton;
    private View view;
    
    public CaptchaDialogController(String paramString1, String paramString2)
    {
      this.captchaUrl = paramString1;
      this.loadingDrawable = new ExceptionDrawable(MyApplication.getInstance(), "加载中");
      this.noDrawable = new ExceptionDrawable(MyApplication.getInstance(), "加载失败");
      findView();
      bindImage();
      setTitle("需要验证码");
      if (TextUtils.isEmpty(paramString2)) {
        paramString2 = "请根据图片输入验证码。";
      }
      setMessage(paramString2);
      setPositiveButton("提交");
      setNeutralButton("取消");
      setNegativeButton("换一张");
      setCanBack(true);
      init(this.currentMyActivity);
      this.currentMyActivity.post(new Runnable()
      {
        public void run()
        {
          FillOrderActivity.CaptchaDialogController.this.show();
          FillOrderActivity.CaptchaDialogController.this.switchButton = FillOrderActivity.CaptchaDialogController.this.getButton(-2);
          if (FillOrderActivity.CaptchaDialogController.this.switchButton != null) {
            FillOrderActivity.CaptchaDialogController.this.switchButton.setClickable(false);
          }
        }
      });
    }
    
    private void bindImage()
    {
      this.currentMyActivity.post(new Runnable()
      {
        public void run()
        {
          FillOrderActivity.CaptchaDialogController.this.captchaImage.setImageDrawable(FillOrderActivity.CaptchaDialogController.this.loadingDrawable);
        }
      });
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setType(5000);
      localHttpSetting.setPriority(5000);
      localHttpSetting.setUrl(this.captchaUrl);
      localHttpSetting.setListener(new HttpGroup.OnCommonListener()
      {
        public void onEnd(final HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          FillOrderActivity.CaptchaDialogController.this.currentMyActivity.post(new Runnable()
          {
            public void run()
            {
              Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
              FillOrderActivity.CaptchaDialogController.this.captchaImage.setImageDrawable(new BitmapDrawable(localBitmap));
              if (FillOrderActivity.CaptchaDialogController.this.switchButton != null) {
                FillOrderActivity.CaptchaDialogController.this.switchButton.setClickable(true);
              }
            }
          });
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          FillOrderActivity.CaptchaDialogController.this.currentMyActivity.post(new Runnable()
          {
            public void run()
            {
              FillOrderActivity.CaptchaDialogController.this.captchaImage.setImageDrawable(FillOrderActivity.CaptchaDialogController.this.noDrawable);
              if (FillOrderActivity.CaptchaDialogController.this.switchButton != null) {
                FillOrderActivity.CaptchaDialogController.this.switchButton.setClickable(true);
              }
            }
          });
        }
        
        public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
        {
          FillOrderActivity.CaptchaDialogController.this.captchaKey = (StatisticsReportUtil.readDeviceUUID() + FillOrderActivity.CaptchaDialogController.this.randomText(6));
          paramAnonymousHttpSettingParams.putMapParams("key", FillOrderActivity.CaptchaDialogController.this.captchaKey);
        }
      });
      this.currentMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
    }
    
    private String randomText(int paramInt)
    {
      char[] arrayOfChar = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };
      StringBuilder localStringBuilder = new StringBuilder();
      Random localRandom = new Random();
      for (int i = 0;; i++)
      {
        if (i >= paramInt) {
          return localStringBuilder.toString();
        }
        localStringBuilder.append(arrayOfChar[localRandom.nextInt(arrayOfChar.length)]);
      }
    }
    
    public void findView()
    {
      this.currentMyActivity.post(new Runnable()
      {
        public void run()
        {
          RelativeLayout localRelativeLayout = new RelativeLayout(FillOrderActivity.CaptchaDialogController.this.currentMyActivity);
          FillOrderActivity.CaptchaDialogController.this.setView(localRelativeLayout);
          FillOrderActivity.CaptchaDialogController.this.view = ImageUtil.inflate(2130903092, localRelativeLayout);
          FillOrderActivity.CaptchaDialogController.this.captchaImage = ((ImageView)FillOrderActivity.CaptchaDialogController.this.view.findViewById(2131493197));
          FillOrderActivity.CaptchaDialogController.this.captchaInput = ((EditText)FillOrderActivity.CaptchaDialogController.this.view.findViewById(2131493198));
        }
      });
    }
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      switch (paramInt)
      {
      case -3: 
      default: 
        return;
      case -1: 
        String str = this.captchaInput.getText().toString();
        if (TextUtils.isEmpty(str))
        {
          this.currentMyActivity.post(new Runnable()
          {
            public void run()
            {
              Toast.makeText(MyApplication.getInstance(), "验证码不能为空", 1).show();
              if (!FillOrderActivity.CaptchaDialogController.this.alertDialog.isShowing()) {
                FillOrderActivity.CaptchaDialogController.this.alertDialog.show();
              }
            }
          });
          return;
        }
        submit(str, this.captchaKey);
        return;
      }
      if (this.switchButton != null) {
        this.switchButton.setClickable(false);
      }
      bindImage();
      this.currentMyActivity.post(new Runnable()
      {
        public void run()
        {
          if (!FillOrderActivity.CaptchaDialogController.this.alertDialog.isShowing()) {
            FillOrderActivity.CaptchaDialogController.this.alertDialog.show();
          }
        }
      });
    }
    
    protected void submit(String paramString1, String paramString2) {}
  }
  
  class SendMobilePassword
    extends QuickRegisterListener
  {
    String mobilePhone;
    
    public SendMobilePassword(QuickRegisterListener.QuickRegisterStatusListener paramQuickRegisterStatusListener, MyActivity paramMyActivity, String paramString)
    {
      super(paramMyActivity);
      this.mobilePhone = paramString;
    }
    
    public boolean checkInputs()
    {
      if (this.mobilePhone.length() <= 0)
      {
        FillOrderActivity.this.sendMobileEt.setError(Html.fromHtml("<font color='red'>请输入电话号码</font>"));
        return false;
      }
      return true;
    }
    
    public String getPhone()
    {
      return this.mobilePhone;
    }
  }
  
  class VerificationSMSPassword
    extends QuickRegisterLoginListener
  {
    String password;
    String phone;
    
    public VerificationSMSPassword(QuickRegisterLoginListener.QuickRegisterLoginStatusListener paramQuickRegisterLoginStatusListener, MyActivity paramMyActivity)
    {
      super(paramMyActivity);
    }
    
    public boolean checkInputs()
    {
      if (this.phone.length() <= 0)
      {
        FillOrderActivity.this.sendMobileEt.setError(Html.fromHtml("<font color='red'>手机号为空,请输入!</font>"));
        return false;
      }
      if (this.password.length() <= 0)
      {
        FillOrderActivity.this.mobilePasswordEt.setError(Html.fromHtml("<font color='red'>密码为空,请输入!</font>"));
        return false;
      }
      return true;
    }
    
    public String getPassword()
    {
      return this.password;
    }
    
    public String getPhone()
    {
      return this.phone;
    }
    
    public void setPassword(String paramString)
    {
      this.password = paramString;
    }
    
    public void setPhone(String paramString)
    {
      this.phone = paramString;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.FillOrderActivity
 * JD-Core Version:    0.7.0.1
 */