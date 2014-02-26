package com.jingdong.app.mall.shopping;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.BigHouseholdappliancesInfo;
import com.jingdong.common.entity.InvoiceInfo;
import com.jingdong.common.entity.LastOrderInfo;
import com.jingdong.common.entity.PaymentInfo;
import com.jingdong.common.entity.UserInfo;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.lbs.LocManager;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SelectPaymentTypeActivity
  extends MyActivity
{
  private static final String MAP_URL = "file:///android_asset/map.htm";
  public static final int PAY_CASH_DELIVERY = 1;
  public static final int PAY_ONLINE = 4;
  public static final int PAY_POST = 2;
  public static final int PAY_SELF = 3;
  private static final String TAG = "SelectPaymentTypeActivity";
  protected final int BY_ID = 0;
  protected final int BY_String = 1;
  private RadioGroup ConfirmRG = null;
  private final int OPERATING_BIG_SEND_TIME = 4;
  private final int OPERATING_PAYMENT_TYPE = 1;
  private final int OPERATING_PAYMENT_WAY = 5;
  private final int OPERATING_SELF = 6;
  private final int OPERATING_SEND_TIME = 3;
  private final int OPERATING_SEND_TYPE = 2;
  private ImageButton bigDeliveryTimeButton = null;
  private TextView bigDeliveryTimeTip = null;
  private TextView bigDeliveryTimeTv = null;
  private Button comfirmPayment = null;
  private TextView confirmTip = null;
  private Context context = null;
  private ImageButton deliveryTimeButton = null;
  private TextView deliveryTimeTip = null;
  private TextView deliveryTimeTv = null;
  private ImageButton distributionTypeButton = null;
  private TextView distributionTypeTv = null;
  private String errorTips = "获取数据失败";
  private Handler hd = new Handler();
  boolean isNoRegisterOrder = false;
  private boolean isPhoneConfirm = false;
  JSONObject jdBody = null;
  JSONObject jdCart = null;
  JSONObject jdOrder = null;
  private String lsPin;
  private BigHouseholdappliancesInfo mBigInfo = null;
  private int mCurrPayMonyTypesId;
  private int mCurrPaymentId;
  private int mCurrSelfId;
  private int mCurrSendTimeId;
  private int mCurrSendTypeId = 70;
  private Dialog mDialog = null;
  private JSONObject mPayMentJSON = null;
  private JSONObject mPickSitesJSON = null;
  PromiseTime mPromiseTime;
  private JSONObject mSendTimeJSON = null;
  private ImageButton paymentTypeArrowButton = null;
  private TextView paymentTypeTv = null;
  private TextView paymentTypesTip = null;
  private TextView paymentTypesTv = null;
  private ImageButton paymentTypesbutton = null;
  private RelativeLayout paymentsContentLayout = null;
  private ImageButton selfButton = null;
  private TextView selfTv = null;
  
  private void OrderPut(JSONObject paramJSONObject, String paramString, Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) && (paramObject2 != null)) {}
    try
    {
      paramJSONObject.put(paramString, paramObject2);
      paramJSONObject.put(paramString, paramObject1);
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void compositeOrderStrByAddEasyBuy()
  {
    if (LoginUserBase.hasLogin())
    {
      this.jdOrder = new JSONObject();
      OrderPut(this.jdOrder, "pin", LoginUserBase.getLoginUserName(), "");
      OrderPut(this.jdOrder, "Mobile", LastOrderInfo.mUserInfo.getUserMobile(), "");
      OrderPut(this.jdOrder, "Phone", LastOrderInfo.mUserInfo.getUserPhone(), "");
      OrderPut(this.jdOrder, "Zip", LastOrderInfo.mUserInfo.getUserZip(), "");
      JSONObject localJSONObject1 = LastOrderInfo.mUserInfo.getUserAddr();
      OrderPut(this.jdOrder, "IdProvince", getOrderInfoForKey(localJSONObject1, "IdProvince"), Integer.valueOf(1));
      OrderPut(this.jdOrder, "IdCity", getOrderInfoForKey(localJSONObject1, "IdCity"), Integer.valueOf(72));
      OrderPut(this.jdOrder, "IdArea", getOrderInfoForKey(localJSONObject1, "IdArea"), Integer.valueOf(2819));
      OrderPut(this.jdOrder, "Where", getOrderInfoForKey(localJSONObject1, "Where"), "");
      OrderPut(this.jdOrder, "Email", getOrderInfoForKey(localJSONObject1, "Email"), "");
      OrderPut(this.jdOrder, "UserLevel", getOrderInfoForKey(localJSONObject1, "UserLevel"), Integer.valueOf(0));
      int i = 1;
      if ((LastOrderInfo.mPaymentInfo.type < 5) && (LastOrderInfo.mPaymentInfo.type > 0)) {
        i = LastOrderInfo.mPaymentInfo.type;
      }
      OrderPut(this.jdOrder, "IdPaymentType", Integer.valueOf(i), Integer.valueOf(1));
      JSONObject localJSONObject2 = LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type);
      Object localObject = Integer.valueOf(0);
      if (getOrderInfoForKey(localJSONObject2, "PaymentWay") != null) {
        localObject = getOrderInfoForKey(localJSONObject2, "PaymentWay");
      }
      OrderPut(this.jdOrder, "PaymentWay", localObject, Integer.valueOf(0));
    }
  }
  
  private void createAlertDiglog(final int paramInt, JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return;
    }
    Object localObject = null;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    if (paramInt == 1) {}
    try
    {
      localObject = getOpeartingData(paramJSONObject.getJSONArray("paymentInfo"), this.mCurrPaymentId, null, "Name", "Id", 0);
      localBuilder.setTitle(2131166270);
      label55:
      OperatingBean localOperatingBean;
      for (;;)
      {
        if ((localObject == null) || (((OperatingBean)localObject).items == null) || (((OperatingBean)localObject).items.length <= 0))
        {
          Toast.makeText(this.context, this.errorTips, 0).show();
          return;
          if (paramInt == 5)
          {
            localObject = getOpeartingData(paramJSONObject.getJSONArray("ShipmentTypes").getJSONObject(0).getJSONArray("SupPaymentWay"), this.mCurrPayMonyTypesId, null, "Name", "Id", 0);
            localBuilder.setTitle(2131166271);
            continue;
          }
          if (paramInt == 3)
          {
            localObject = getOpeartingData(paramJSONObject.getJSONArray("ShipmentTypes").getJSONObject(0).getJSONArray("SupCodTime"), this.mCurrSendTimeId, null, "Name", "Id", 0);
            localBuilder.setTitle(2131166272);
            continue;
          }
          if (paramInt == 4)
          {
            localObject = getOpeartingData(paramJSONObject.getJSONArray("ShipmentTypes").getJSONObject(0).getJSONArray("bigItemCodDate"), 0, this.mBigInfo.getName(), "Name", "Id", 1);
            localBuilder.setTitle(2131166273);
            continue;
          }
          localObject = null;
          if (paramInt == 2) {
            localOperatingBean = new OperatingBean();
          }
        }
        try
        {
          localOperatingBean.items = new String[] { paramJSONObject.getJSONArray("ShipmentTypes").getJSONObject(0).getString("Name") };
          localBuilder.setTitle(2131166274);
          localObject = localOperatingBean;
        }
        catch (Exception localException2)
        {
          final int i;
          localObject = localOperatingBean;
        }
        localObject = null;
        if (paramInt == 6)
        {
          localObject = getOpeartingData(paramJSONObject.getJSONArray("PickSites"), this.mCurrSelfId, null, "Name", "Id", 0);
          localBuilder.setTitle(2131166275);
          continue;
          i = ((OperatingBean)localObject).defaultSelect;
          localBuilder.setSingleChoiceItems(((OperatingBean)localObject).items, i, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              if (i != paramAnonymousInt) {
                SelectPaymentTypeActivity.this.selectChange(paramInt, paramAnonymousInt);
              }
              paramAnonymousDialogInterface.dismiss();
            }
          }).show();
          return;
        }
      }
    }
    catch (Exception localException1)
    {
      break label55;
    }
  }
  
  public static ArrayList<Day> createDaysList(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    JSONArray localJSONArray1 = paramJSONObject.optJSONArray("days");
    ArrayList localArrayList = null;
    int j;
    if (localJSONArray1 != null)
    {
      int i = localJSONArray1.length();
      localArrayList = null;
      if (i > 0)
      {
        localArrayList = new ArrayList();
        j = 0;
        if (j < localJSONArray1.length()) {
          break label53;
        }
      }
    }
    return localArrayList;
    label53:
    JSONObject localJSONObject1 = localJSONArray1.optJSONObject(j);
    Day localDay;
    JSONArray localJSONArray2;
    if (localJSONObject1 != null)
    {
      localDay = new Day();
      localDay.date = localJSONObject1.optString("date");
      localDay.week = localJSONObject1.optString("week");
      localJSONArray2 = localJSONObject1.optJSONArray("hours");
      if (localJSONArray2 != null) {
        localDay.hours = new ArrayList();
      }
    }
    for (int k = 0;; k++)
    {
      if (k >= localJSONArray2.length())
      {
        localArrayList.add(localDay);
        j++;
        break;
      }
      JSONObject localJSONObject2 = localJSONArray2.optJSONObject(k);
      if ((localJSONObject2 != null) && (localJSONObject2.optBoolean("isCanSelected")))
      {
        Hour localHour = new Hour();
        localHour.promiseSendPay = localJSONObject2.optString("promiseSendPay");
        localHour.isCanSelected = true;
        localHour.promiseTimeRange = localJSONObject2.optString("promiseTimeRange");
        localDay.hours.add(localHour);
      }
    }
  }
  
  private void createPickAlertDiglog()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131166275);
    View localView = ImageUtil.inflate(this.context, 2130903374, null);
    final WebView localWebView = (WebView)localView.findViewById(2131495635);
    localWebView.setVisibility(8);
    localWebView.getSettings().setJavaScriptEnabled(true);
    localWebView.setWebChromeClient(new WebChromeClient());
    localWebView.addJavascriptInterface(new JavaScriptInterface(null), "android");
    localWebView.setInitialScale(150);
    final ListView localListView = (ListView)localView.findViewById(2131495637);
    localListView.setAdapter(new ArrayAdapter(this, 17367058, 16908308, getPicks())
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        ((TextView)localView.findViewById(16908308)).setTextColor(ColorStateList.valueOf(-16777216));
        return localView;
      }
    });
    localListView.setChoiceMode(1);
    localListView.setItemChecked(getCurrPickPostionId(this.mCurrSelfId), true);
    final Button localButton = (Button)localView.findViewById(2131495636);
    localButton.setText(2131166277);
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (localWebView.getVisibility() == 8)
        {
          localListView.setVisibility(8);
          localWebView.setVisibility(0);
          localButton.setText(2131166276);
          SelectPaymentTypeActivity.this.post(new Runnable()
          {
            public void run()
            {
              this.val$webView.loadUrl("file:///android_asset/map.htm");
            }
          });
          return;
        }
        localListView.setVisibility(0);
        localWebView.setVisibility(8);
        localButton.setText(2131166277);
      }
    });
    localBuilder.setView(localView);
    final AlertDialog localAlertDialog = localBuilder.create();
    this.mDialog = localAlertDialog;
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        SelectPaymentTypeActivity.this.pickSitesSelectedByJs(paramAnonymousInt);
        localAlertDialog.dismiss();
      }
    });
    localAlertDialog.show();
    localWebView.setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        try
        {
          String str1 = "javascript:setCity(" + LocManager.provinceId + "," + SelectPaymentTypeActivity.this.jdOrder.getString("IdProvince") + ")";
          String str2 = "javascript:setPickSites(" + SelectPaymentTypeActivity.this.getCurrPickPostionId(SelectPaymentTypeActivity.this.mCurrSelfId) + "," + Build.VERSION.SDK_INT + ")";
          localWebView.loadUrl(str1);
          localWebView.loadUrl(str2);
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        try
        {
          
          label3:
          super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
          return;
        }
        catch (Exception localException)
        {
          break label3;
        }
      }
    });
  }
  
  private void getCartItemInfo()
  {
    if (FillOrderActivity.cartResponseInfo != null) {
      this.jdCart = FillOrderActivity.cartResponseInfo.toCheckedCartStr();
    }
  }
  
  private int getCurrPickPostionId(int paramInt)
  {
    int j;
    do
    {
      try
      {
        localJSONArray = this.mPickSitesJSON.getJSONArray("PickSites");
        if (localJSONArray == null) {
          break;
        }
        j = localJSONArray.length();
        i = 0;
      }
      catch (JSONException localJSONException)
      {
        JSONArray localJSONArray;
        int k;
        break;
      }
      k = localJSONArray.getJSONObject(i).getInt("Id");
      if (paramInt == k) {
        return i;
      }
      i++;
    } while (i < j);
    int i = 0;
    return i;
  }
  
  public static int getFirstVisPos(ArrayList<Day> paramArrayList)
  {
    int i;
    int j;
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      i = 0;
      j = paramArrayList.size();
    }
    for (;;)
    {
      if (i >= j) {
        return 0;
      }
      Day localDay = (Day)paramArrayList.get(i);
      if ((localDay != null) && (localDay.hours != null) && (localDay.hours.size() > 0)) {
        return i;
      }
      i++;
    }
  }
  
  private OperatingBean getOpeartingData(JSONArray paramJSONArray, int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2)
  {
    if (paramJSONArray != null) {}
    try
    {
      OperatingBean localOperatingBean = new OperatingBean();
      localOperatingBean.items = new String[paramJSONArray.length()];
      for (int i = 0;; i++)
      {
        if (i >= localOperatingBean.items.length) {
          return localOperatingBean;
        }
        JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
        localOperatingBean.items[i] = localJSONObject.getString(paramString2);
        if (paramInt2 == 0)
        {
          if (paramInt1 - localJSONObject.getInt(paramString3) == 0) {
            localOperatingBean.defaultSelect = i;
          }
        }
        else if ((paramInt2 == 1) && (localOperatingBean.items[i] != null) && (localOperatingBean.items[i].equals(paramString1)))
        {
          localOperatingBean.defaultSelect = i;
          continue;
          Toast.makeText(this.context, this.errorTips, 0).show();
          break;
        }
      }
      return null;
    }
    catch (JSONException localJSONException) {}
  }
  
  private Object getOrderInfoForKey(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject == null) {
      return null;
    }
    try
    {
      Object localObject = paramJSONObject.get(paramString);
      return localObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }
  
  private void getPaymentTypes()
  {
    String str;
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
      str = "easyBuyPaymentType";
    }
    for (;;)
    {
      try
      {
        this.jdBody = new JSONObject();
        this.jdBody.put("OrderStr", this.jdOrder);
        setUpConnAndGetData(str, this.jdBody, "paymentType");
        return;
      }
      catch (JSONException localJSONException1)
      {
        localJSONException1.printStackTrace();
        continue;
      }
      str = "paymentType";
      updatCcomositeBody();
      try
      {
        this.jdBody.put("isCurrentOrder", true);
      }
      catch (JSONException localJSONException2)
      {
        localJSONException2.printStackTrace();
      }
    }
  }
  
  private String[] getPicks()
  {
    int i;
    String[] arrayOfString;
    int j;
    label63:
    do
    {
      JSONArray localJSONArray;
      try
      {
        localJSONArray = this.mPickSitesJSON.getJSONArray("PickSites");
        if ((localJSONArray == null) || (localJSONArray.length() <= 0)) {
          break label63;
        }
        i = localJSONArray.length();
        arrayOfString = new String[i];
        j = 0;
      }
      catch (JSONException localJSONException) {}
      arrayOfString[j] = localJSONArray.getJSONObject(j).getString("Name");
      j++;
      continue;
      return null;
    } while (j < i);
    return arrayOfString;
  }
  
  private void getPositions()
  {
    String str;
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
      str = "easyBuyPickSites";
    }
    for (;;)
    {
      try
      {
        this.jdBody = new JSONObject();
        this.jdBody.put("OrderStr", this.jdOrder);
        setUpConnAndGetData(str, this.jdBody, "pickSites");
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        continue;
      }
      str = "pickSites";
      updatCcomositeBody();
    }
  }
  
  private void getSendTypes()
  {
    String str;
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
      str = "easyBuyShipmentTypes";
    }
    for (;;)
    {
      try
      {
        this.jdBody = new JSONObject();
        this.jdBody.put("OrderStr", this.jdOrder);
        setUpConnAndGetData(str, this.jdBody, "shipmentTypes");
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        continue;
      }
      str = "shipmentTypes";
      updatCcomositeBody();
    }
  }
  
  private boolean handle311And411()
  {
    if (this.mSendTimeJSON == null) {}
    JSONObject localJSONObject1;
    final ArrayList localArrayList;
    do
    {
      do
      {
        return false;
        JSONArray localJSONArray = this.mSendTimeJSON.optJSONArray("ShipmentTypes");
        localJSONObject1 = null;
        if (localJSONArray != null)
        {
          int i = localJSONArray.length();
          localJSONObject1 = null;
          if (i > 0) {
            localJSONObject1 = localJSONArray.optJSONObject(0);
          }
        }
      } while (localJSONObject1 == null);
      JSONObject localJSONObject2 = localJSONObject1.optJSONObject("Promise311");
      localArrayList = null;
      if (localJSONObject2 != null)
      {
        boolean bool = localJSONObject2.optBoolean("support");
        localArrayList = null;
        if (bool)
        {
          localArrayList = null;
          if (0 == 0) {
            localArrayList = new ArrayList();
          }
          Type localType2 = new Type();
          localType2.localType = 311;
          localType2.promiseType = localJSONObject2.optInt("promiseType");
          localType2.support = true;
          localType2.promise311Tip = localJSONObject2.optString("promise311Tip");
          localType2.days = createDaysList(localJSONObject2);
          localType2.firstVisPos = getFirstVisPos(localType2.days);
          localType2.show311Text = localJSONObject2.optString("show311Text");
          localArrayList.add(localType2);
        }
      }
      JSONObject localJSONObject3 = localJSONObject1.optJSONObject("Promise411");
      if ((localJSONObject3 != null) && (localJSONObject3.optBoolean("support")) && (!localJSONObject3.optBoolean("grayFlag")))
      {
        if (localArrayList == null) {
          localArrayList = new ArrayList();
        }
        Type localType1 = new Type();
        localType1.localType = 411;
        localType1.promiseType = localJSONObject3.optInt("promiseType");
        localType1.promiseSendPay = localJSONObject3.optString("promiseSendPay");
        localType1.support = true;
        localType1.grayFlag = false;
        localType1.promiseMsg = localJSONObject3.optString("promiseMsg");
        localType1.sendMsg = localJSONObject3.optString("sendMsg");
        localArrayList.add(localType1);
      }
    } while ((localArrayList == null) || (localArrayList.size() <= 0));
    this.mPromiseTime = null;
    if ((handle311And411(localJSONObject1, this.mCurrSendTimeId)) && (this.mPromiseTime != null) && (this.mPromiseTime.isVisibility()))
    {
      this.mPromiseTime.updateShowText(localJSONObject1);
      if (this.deliveryTimeTv != null) {
        this.deliveryTimeTv.setText(this.mPromiseTime.showText);
      }
    }
    View.OnClickListener local23 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if ((localArrayList != null) && (localArrayList.size() > 0))
        {
          if (localArrayList.size() == 1)
          {
            SelectPaymentTypeActivity.Type localType2 = (SelectPaymentTypeActivity.Type)localArrayList.get(0);
            if ((localType2 != null) && (localType2.localType == 311)) {
              SelectPaymentTypeActivity.this.show311Dialog(localType2.days, localType2.firstVisPos, localType2.promiseType);
            }
          }
        }
        else {
          return;
        }
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(SelectPaymentTypeActivity.this);
        localBuilder.setTitle("选择送货时间");
        int i = 0;
        int j = localArrayList.size();
        int k = 0;
        label121:
        String[] arrayOfString;
        if (i >= j) {
          arrayOfString = new String[localArrayList.size()];
        }
        for (int m = 0;; m++)
        {
          if (m >= arrayOfString.length)
          {
            localBuilder.setSingleChoiceItems(arrayOfString, k, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                try
                {
                  localType = (SelectPaymentTypeActivity.Type)this.val$list.get(paramAnonymous2Int);
                  if (localType != null)
                  {
                    if (localType.localType != 311) {
                      break label65;
                    }
                    SelectPaymentTypeActivity.this.show311Dialog(localType.days, localType.firstVisPos, localType.promiseType);
                  }
                  for (;;)
                  {
                    if (paramAnonymous2DialogInterface != null) {
                      paramAnonymous2DialogInterface.dismiss();
                    }
                    return;
                    label65:
                    if (localType.localType == 411)
                    {
                      SelectPaymentTypeActivity.this.mPromiseTime = new SelectPaymentTypeActivity.PromiseTime();
                      SelectPaymentTypeActivity.this.mPromiseTime.localType = 411;
                      SelectPaymentTypeActivity.this.mPromiseTime.isManual = 1;
                      SelectPaymentTypeActivity.this.mPromiseTime.fromWitch = 200;
                      SelectPaymentTypeActivity.this.mPromiseTime.promiseType = localType.promiseType;
                      SelectPaymentTypeActivity.this.mPromiseTime.promiseSendPay = localType.promiseSendPay;
                      SelectPaymentTypeActivity.this.mPromiseTime.showText = localType.sendMsg;
                      if (SelectPaymentTypeActivity.this.deliveryTimeTv != null) {
                        SelectPaymentTypeActivity.this.deliveryTimeTv.setText(SelectPaymentTypeActivity.this.mPromiseTime.showText);
                      }
                    }
                  }
                }
                catch (Exception localException)
                {
                  for (;;)
                  {
                    SelectPaymentTypeActivity.Type localType = null;
                  }
                }
              }
            }).show();
            return;
            SelectPaymentTypeActivity.Type localType1 = (SelectPaymentTypeActivity.Type)localArrayList.get(i);
            if (localType1 != null)
            {
              if ((SelectPaymentTypeActivity.this.mPromiseTime == null) || (!SelectPaymentTypeActivity.this.mPromiseTime.isVisibility()))
              {
                if (localType1.localType != 311) {
                  break label254;
                }
                k = i;
                break label121;
              }
              if (localType1.localType == SelectPaymentTypeActivity.this.mPromiseTime.localType)
              {
                k = i;
                break label121;
              }
            }
            label254:
            i++;
            break;
          }
          arrayOfString[m] = ((SelectPaymentTypeActivity.Type)localArrayList.get(m)).toString();
        }
      }
    };
    if (this.deliveryTimeTv != null) {
      this.deliveryTimeTv.setOnClickListener(local23);
    }
    if (this.deliveryTimeButton != null) {
      this.deliveryTimeButton.setOnClickListener(local23);
    }
    return true;
  }
  
  private boolean handle311And411(JSONObject paramJSONObject, int paramInt)
  {
    if (this.mPromiseTime != null) {}
    for (boolean bool = this.mPromiseTime.isCanSelected(paramJSONObject);; bool = false)
    {
      if (!bool)
      {
        this.mPromiseTime = PromiseTime.selectDefaultPromiseTime(paramInt, paramJSONObject);
        if ((this.mPromiseTime != null) && (this.mPromiseTime.isVisibility())) {
          bool = true;
        }
      }
      if (!bool) {
        this.mPromiseTime = null;
      }
      return bool;
    }
  }
  
  private void handleDatas(HttpGroup.HttpResponse paramHttpResponse, String paramString)
  {
    if ("paymentType".equals(paramString))
    {
      this.mPayMentJSON = paramHttpResponse.getJSONObject();
      updatePayments(LastOrderInfo.mPaymentInfo.nSelected);
    }
    do
    {
      return;
      if ("shipmentTypes".equals(paramString)) {
        try
        {
          this.mPickSitesJSON = null;
          this.mSendTimeJSON = paramHttpResponse.getJSONObject().getJSONObject("shipmentTypesInfo");
          this.hd.post(new Runnable()
          {
            public void run()
            {
              try
              {
                SelectPaymentTypeActivity.this.updatePayMentsData(SelectPaymentTypeActivity.this.mSendTimeJSON.getJSONArray("ShipmentTypes").getJSONObject(0));
                return;
              }
              catch (JSONException localJSONException)
              {
                localJSONException.printStackTrace();
              }
            }
          });
          return;
        }
        catch (JSONException localJSONException2)
        {
          return;
        }
      }
    } while (!"pickSites".equals(paramString));
    this.mSendTimeJSON = null;
    try
    {
      this.mPickSitesJSON = paramHttpResponse.getJSONObject().getJSONObject("pickSitesInfo");
      label107:
      this.hd.post(new Runnable()
      {
        public void run()
        {
          try
          {
            SelectPaymentTypeActivity.this.updatePickSitesData(SelectPaymentTypeActivity.this.mPickSitesJSON.getJSONArray("PickSites"));
            return;
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
          }
        }
      });
      return;
    }
    catch (JSONException localJSONException1)
    {
      break label107;
    }
  }
  
  private boolean handlePromiseTime()
  {
    boolean bool = handle311And411();
    if (!bool) {
      this.mPromiseTime = null;
    }
    return bool;
  }
  
  private void handlerClickResult(JSONArray paramJSONArray, String[] paramArrayOfString, int paramInt, IDialogClickListener paramIDialogClickListener)
  {
    if (paramJSONArray != null) {}
    try
    {
      int i = paramJSONArray.length();
      for (int j = 0; j < i; j++)
      {
        JSONObject localJSONObject = paramJSONArray.getJSONObject(j);
        if (paramInt == j)
        {
          HashMap localHashMap = new HashMap();
          int k = paramArrayOfString.length;
          for (int m = 0;; m++)
          {
            if (m >= k)
            {
              paramIDialogClickListener.onCall(localHashMap);
              return;
            }
            String str = paramArrayOfString[m];
            localHashMap.put(str, localJSONObject.get(str));
          }
        }
      }
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void initOrderJson()
  {
    this.jdOrder = new JSONObject();
    OrderPut(this.jdOrder, "pin", this.lsPin, "");
    OrderPut(this.jdOrder, "Mobile", LastOrderInfo.mUserInfo.getUserMobile(), "");
    OrderPut(this.jdOrder, "Phone", LastOrderInfo.mUserInfo.getUserPhone(), "");
    OrderPut(this.jdOrder, "Zip", LastOrderInfo.mUserInfo.getUserZip(), "");
    OrderPut(this.jdOrder, "IdProvince", getOrderInfoForKey(LastOrderInfo.mUserInfo.getUserAddr(), "IdProvince"), Integer.valueOf(1));
    OrderPut(this.jdOrder, "IdCity", getOrderInfoForKey(LastOrderInfo.mUserInfo.getUserAddr(), "IdCity"), Integer.valueOf(72));
    OrderPut(this.jdOrder, "IdArea", getOrderInfoForKey(LastOrderInfo.mUserInfo.getUserAddr(), "IdArea"), Integer.valueOf(2819));
    OrderPut(this.jdOrder, "IdTown", getOrderInfoForKey(LastOrderInfo.mUserInfo.getUserAddr(), "IdTown"), null);
    OrderPut(this.jdOrder, "Where", getOrderInfoForKey(LastOrderInfo.mUserInfo.getUserAddr(), "Where"), "");
    OrderPut(this.jdOrder, "Email", getOrderInfoForKey(LastOrderInfo.mUserInfo.getUserAddr(), "Email"), "");
    OrderPut(this.jdOrder, "UserLevel", getOrderInfoForKey(LastOrderInfo.mUserInfo.getUserAddr(), "UserLevel"), Integer.valueOf(0));
    OrderPut(this.jdOrder, "IdInvoiceType", getOrderInfoForKey(LastOrderInfo.mInvoiceInfo.getInvoiceInfo(), "IdInvoiceType"), Integer.valueOf(0));
    OrderPut(this.jdOrder, "IdInvoiceHeaderType", getOrderInfoForKey(LastOrderInfo.mInvoiceInfo.getInvoiceInfo(), "IdInvoiceHeaderType"), Integer.valueOf(0));
    OrderPut(this.jdOrder, "IdInvoiceContentTypeBook", getOrderInfoForKey(LastOrderInfo.mInvoiceInfo.getInvoiceInfo(), "IdInvoiceContentTypeBook"), Integer.valueOf(0));
    OrderPut(this.jdOrder, "IdCompanyBranch", getOrderInfoForKey(LastOrderInfo.mInvoiceInfo.getInvoiceInfo(), "IdCompanyBranch"), Integer.valueOf(0));
    OrderPut(this.jdOrder, "IdInvoiceContentsType", getOrderInfoForKey(LastOrderInfo.mInvoiceInfo.getInvoiceInfo(), "IdInvoiceContentsType"), Integer.valueOf(0));
    if ((LastOrderInfo.mPaymentInfo.nSelected < 5) && (LastOrderInfo.mPaymentInfo.nSelected > 0)) {}
    for (int i = LastOrderInfo.mPaymentInfo.nSelected;; i = 1)
    {
      OrderPut(this.jdOrder, "IdPaymentType", Integer.valueOf(i), Integer.valueOf(1));
      JSONObject localJSONObject = LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type);
      OrderPut(this.jdOrder, "PaymentWay", getOrderInfoForKey(localJSONObject, "PaymentWay"), Integer.valueOf(0));
      double d1 = 0.0D;
      if (LastOrderInfo.dPromotionPrice >= 0.0D) {
        d1 = LastOrderInfo.dPromotionPrice;
      }
      OrderPut(this.jdOrder, "PromotionPrice", Double.valueOf(d1), Integer.valueOf(0));
      double d2 = LastOrderInfo.dPrice;
      if (LastOrderInfo.dPrice >= 0.0D) {
        d2 = LastOrderInfo.dPrice;
      }
      OrderPut(this.jdOrder, "Price", Double.valueOf(d2), Integer.valueOf(0));
      return;
    }
  }
  
  private void initSelID()
  {
    PaymentInfo localPaymentInfo = LastOrderInfo.mPaymentInfo;
    if (localPaymentInfo != null)
    {
      if ((localPaymentInfo.type > 5) || (localPaymentInfo.type <= 0)) {
        break label89;
      }
      this.mCurrPaymentId = localPaymentInfo.nSelected;
    }
    for (;;)
    {
      JSONObject localJSONObject = localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected);
      if ((localJSONObject == null) || (!localJSONObject.isNull("PaymentWay"))) {}
      try
      {
        this.mCurrPayMonyTypesId = localJSONObject.getInt("PaymentWay");
        if (!localJSONObject.isNull("CODTime")) {}
        try
        {
          this.mCurrSendTimeId = localJSONObject.getInt("CODTime");
          return;
        }
        catch (JSONException localJSONException1)
        {
          label89:
          localJSONException1.printStackTrace();
        }
        this.mCurrPaymentId = 1;
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
  
  private void initView()
  {
    this.paymentTypeTv = ((TextView)findViewById(2131494432));
    this.paymentTypeArrowButton = ((ImageButton)findViewById(2131494433));
    this.paymentsContentLayout = ((RelativeLayout)findViewById(2131494434));
    this.comfirmPayment = ((Button)findViewById(2131494435));
    ((TextView)findViewById(2131492990)).setText(2131165944);
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SelectPaymentTypeActivity.this.createAlertDiglog(1, SelectPaymentTypeActivity.this.mPayMentJSON);
      }
    };
    this.paymentTypeTv.setOnClickListener(local1);
    this.paymentTypeArrowButton.setOnClickListener(local1);
    this.comfirmPayment.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent();
        if (SelectPaymentTypeActivity.this.mCurrPaymentId == 3) {
          localIntent.putExtra("IdPickSite", SelectPaymentTypeActivity.this.mCurrSelfId);
        }
        for (;;)
        {
          localIntent.putExtra("IdPaymentType", SelectPaymentTypeActivity.this.mCurrPaymentId);
          localIntent.putExtra("selectBigitem", SelectPaymentTypeActivity.this.mBigInfo);
          localIntent.putExtra("PromiseTime", SelectPaymentTypeActivity.this.mPromiseTime);
          SelectPaymentTypeActivity.this.setResult(3, localIntent);
          SelectPaymentTypeActivity.this.finish();
          return;
          localIntent.putExtra("IdShipmentType", SelectPaymentTypeActivity.this.mCurrSendTypeId);
          localIntent.putExtra("CODTime", SelectPaymentTypeActivity.this.mCurrSendTimeId);
          localIntent.putExtra("IsCodInform", SelectPaymentTypeActivity.this.isPhoneConfirm);
          if (SelectPaymentTypeActivity.this.mCurrPaymentId == 1) {
            localIntent.putExtra("PaymentWay", SelectPaymentTypeActivity.this.mCurrPayMonyTypesId);
          }
        }
      }
    });
  }
  
  private void pickSitesSelectedByJs(int paramInt)
  {
    for (;;)
    {
      try
      {
        localJSONArray = this.mPickSitesJSON.getJSONArray("PickSites");
        if (localJSONArray != null)
        {
          int i = localJSONArray.length();
          j = 0;
          if (j < i) {
            continue;
          }
        }
      }
      catch (JSONException localJSONException)
      {
        JSONArray localJSONArray;
        int j;
        JSONObject localJSONObject;
        String str;
        continue;
      }
      if (this.mDialog != null)
      {
        this.mDialog.dismiss();
        this.mDialog = null;
      }
      return;
      localJSONObject = localJSONArray.getJSONObject(j);
      if (paramInt == j)
      {
        str = localJSONObject.getString("Name");
        this.mCurrSelfId = localJSONObject.getInt("Id");
        this.selfTv.setText(str);
      }
      j++;
    }
  }
  
  private void requestSendInfo(int paramInt)
  {
    if (paramInt == 3) {
      getPositions();
    }
    while ((paramInt != 4) && (paramInt != 2) && (paramInt != 1)) {
      return;
    }
    getSendTypes();
  }
  
  private void resetRightAdapter(ListView paramListView, Day paramDay)
  {
    if (paramListView == null) {
      return;
    }
    if ((paramDay == null) || (paramDay.hours == null) || (paramDay.hours.size() <= 0))
    {
      paramListView.setAdapter(null);
      return;
    }
    paramListView.setAdapter(new ArrayAdapter(this, 2130903291, paramDay.hours)
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        if (localView != null) {
          localView.setEnabled(isEnabled(paramAnonymousInt));
        }
        return localView;
      }
      
      public boolean isEnabled(int paramAnonymousInt)
      {
        SelectPaymentTypeActivity.Hour localHour = (SelectPaymentTypeActivity.Hour)getItem(paramAnonymousInt);
        if (localHour != null) {
          return localHour.isCanSelected;
        }
        return false;
      }
    });
  }
  
  private void selectChange(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 1) {}
    do
    {
      try
      {
        final String[] arrayOfString5 = { "Id", "Name" };
        handlerClickResult(this.mPayMentJSON.getJSONArray("paymentInfo"), arrayOfString5, paramInt2, new IDialogClickListener()
        {
          public void onCall(Map<String, Object> paramAnonymousMap)
          {
            SelectPaymentTypeActivity.this.mCurrPaymentId = Integer.parseInt(paramAnonymousMap.get(arrayOfString5[0]).toString());
            SelectPaymentTypeActivity.this.paymentTypeTv.setText(String.valueOf(paramAnonymousMap.get(arrayOfString5[1])).trim());
            if (SelectPaymentTypeActivity.this.jdOrder == null) {
              SelectPaymentTypeActivity.this.initOrderJson();
            }
            try
            {
              SelectPaymentTypeActivity.this.jdOrder.put("IdPaymentType", SelectPaymentTypeActivity.this.mCurrPaymentId);
              SelectPaymentTypeActivity.this.requestSendInfo(SelectPaymentTypeActivity.this.mCurrPaymentId);
              return;
            }
            catch (JSONException localJSONException)
            {
              localJSONException.printStackTrace();
            }
          }
        });
        return;
      }
      catch (JSONException localJSONException5)
      {
        localJSONException5.printStackTrace();
        return;
      }
      if (paramInt1 == 5) {
        try
        {
          final String[] arrayOfString4 = { "Id", "Name" };
          handlerClickResult(this.mSendTimeJSON.getJSONArray("ShipmentTypes").getJSONObject(0).getJSONArray("SupPaymentWay"), arrayOfString4, paramInt2, new IDialogClickListener()
          {
            public void onCall(Map<String, Object> paramAnonymousMap)
            {
              SelectPaymentTypeActivity.this.mCurrPayMonyTypesId = Integer.parseInt(paramAnonymousMap.get(arrayOfString4[0]).toString());
              SelectPaymentTypeActivity.this.paymentTypesTv.setText(String.valueOf(paramAnonymousMap.get(arrayOfString4[1])).trim());
            }
          });
          return;
        }
        catch (JSONException localJSONException4)
        {
          localJSONException4.printStackTrace();
          return;
        }
      }
      if (paramInt1 == 3) {
        try
        {
          final String[] arrayOfString3 = { "Id", "Name" };
          handlerClickResult(this.mSendTimeJSON.getJSONArray("ShipmentTypes").getJSONObject(0).getJSONArray("SupCodTime"), arrayOfString3, paramInt2, new IDialogClickListener()
          {
            public void onCall(Map<String, Object> paramAnonymousMap)
            {
              SelectPaymentTypeActivity.this.mCurrSendTimeId = Integer.parseInt(paramAnonymousMap.get(arrayOfString3[0]).toString());
              SelectPaymentTypeActivity.this.deliveryTimeTv.setText(String.valueOf(paramAnonymousMap.get(arrayOfString3[1])).trim());
            }
          });
          return;
        }
        catch (JSONException localJSONException3)
        {
          localJSONException3.printStackTrace();
          return;
        }
      }
      if (paramInt1 == 4) {
        try
        {
          final String[] arrayOfString2 = { "Name", "Value" };
          handlerClickResult(this.mSendTimeJSON.getJSONArray("ShipmentTypes").getJSONObject(0).getJSONArray("bigItemCodDate"), arrayOfString2, paramInt2, new IDialogClickListener()
          {
            public void onCall(Map<String, Object> paramAnonymousMap)
            {
              String str1 = paramAnonymousMap.get(arrayOfString2[0]).toString().trim();
              String str2 = paramAnonymousMap.get(arrayOfString2[1]).toString().trim();
              SelectPaymentTypeActivity.this.bigDeliveryTimeTv.setText(str1);
              if (SelectPaymentTypeActivity.this.mBigInfo == null) {
                SelectPaymentTypeActivity.this.mBigInfo = new BigHouseholdappliancesInfo();
              }
              SelectPaymentTypeActivity.this.mBigInfo.setName(str1);
              SelectPaymentTypeActivity.this.mBigInfo.setValue(str2);
            }
          });
          return;
        }
        catch (JSONException localJSONException2)
        {
          localJSONException2.printStackTrace();
          return;
        }
      }
    } while ((paramInt1 == 2) || (paramInt1 != 6));
    try
    {
      final String[] arrayOfString1 = { "Id", "Name" };
      handlerClickResult(this.mPickSitesJSON.getJSONArray("PickSites"), arrayOfString1, paramInt2, new IDialogClickListener()
      {
        public void onCall(Map<String, Object> paramAnonymousMap)
        {
          SelectPaymentTypeActivity.this.mCurrSelfId = Integer.parseInt(paramAnonymousMap.get(arrayOfString1[0]).toString());
          SelectPaymentTypeActivity.this.selfTv.setText(String.valueOf(paramAnonymousMap.get(arrayOfString1[1])).trim());
        }
      });
      return;
    }
    catch (JSONException localJSONException1)
    {
      localJSONException1.printStackTrace();
    }
  }
  
  private void setUpConnAndGetData(String paramString1, JSONObject paramJSONObject, final String paramString2)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(paramString1);
    localHttpSetting.setJsonParams(paramJSONObject);
    if (LoginUserBase.hasLogin()) {
      localHttpSetting.setUseCookies(true);
    }
    for (;;)
    {
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          SelectPaymentTypeActivity.this.handleDatas(paramAnonymousHttpResponse, paramString2);
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      localHttpSetting.setUseCookies(false);
    }
  }
  
  private void show311Dialog(ArrayList<Day> paramArrayList, int paramInt1, final int paramInt2)
  {
    if ((paramArrayList == null) || (paramArrayList.size() <= 0)) {
      return;
    }
    View localView = getLayoutInflater().inflate(2130903289, null);
    final ListView localListView1 = (ListView)localView.findViewById(2131494436);
    localListView1.setAdapter(new ArrayAdapter(this, 2130903290, paramArrayList));
    localListView1.setItemsCanFocus(false);
    localListView1.setChoiceMode(1);
    localListView1.setDivider(null);
    final ListView localListView2 = (ListView)localView.findViewById(2131494437);
    localListView2.setSelector(17170445);
    localListView2.setItemsCanFocus(false);
    localListView2.setChoiceMode(1);
    localListView2.setDivider(null);
    localListView2.setEmptyView(localView.findViewById(2131494330));
    localListView1.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        ListView localListView;
        if ((paramAnonymousAdapterView != null) && ((paramAnonymousAdapterView instanceof ListView)))
        {
          localListView = (ListView)paramAnonymousAdapterView;
          if (!localListView.isItemChecked(paramAnonymousInt)) {}
        }
        try
        {
          Object localObject = localListView.getItemAtPosition(paramAnonymousInt);
          localDay = null;
          if (localObject != null)
          {
            boolean bool = localObject instanceof SelectPaymentTypeActivity.Day;
            localDay = null;
            if (bool) {
              localDay = (SelectPaymentTypeActivity.Day)localObject;
            }
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            SelectPaymentTypeActivity.Day localDay = null;
          }
        }
        SelectPaymentTypeActivity.this.resetRightAdapter(localListView2, localDay);
      }
    });
    final AlertDialog localAlertDialog = new AlertDialog.Builder(this).setTitle("选择指定送货时间").create();
    localAlertDialog.setView(localView, 0, 0, 0, 0);
    localListView2.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        int i;
        if ((localListView1 != null) && (localListView2 != null))
        {
          i = localListView1.getCheckedItemPosition();
          if (i < 0) {}
        }
        try
        {
          Object localObject2 = localListView1.getItemAtPosition(i);
          localDay = null;
          if (localObject2 != null)
          {
            boolean bool2 = localObject2 instanceof SelectPaymentTypeActivity.Day;
            localDay = null;
            if (bool2) {
              localDay = (SelectPaymentTypeActivity.Day)localObject2;
            }
          }
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            int j;
            SelectPaymentTypeActivity.Day localDay = null;
          }
        }
        if (localDay != null)
        {
          j = localListView2.getCheckedItemPosition();
          if (j < 0) {}
        }
        try
        {
          Object localObject1 = localListView2.getItemAtPosition(j);
          localHour = null;
          if (localObject1 != null)
          {
            boolean bool1 = localObject1 instanceof SelectPaymentTypeActivity.Hour;
            localHour = null;
            if (bool1) {
              localHour = (SelectPaymentTypeActivity.Hour)localObject1;
            }
          }
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            SelectPaymentTypeActivity.Hour localHour = null;
          }
        }
        if (localHour != null)
        {
          SelectPaymentTypeActivity.this.mPromiseTime = new SelectPaymentTypeActivity.PromiseTime();
          SelectPaymentTypeActivity.this.mPromiseTime.localType = 311;
          SelectPaymentTypeActivity.this.mPromiseTime.isManual = 1;
          SelectPaymentTypeActivity.this.mPromiseTime.fromWitch = 200;
          SelectPaymentTypeActivity.this.mPromiseTime.promiseType = paramInt2;
          SelectPaymentTypeActivity.this.mPromiseTime.promiseSendPay = localHour.promiseSendPay;
          SelectPaymentTypeActivity.this.mPromiseTime.promiseDate = localDay.date;
          SelectPaymentTypeActivity.this.mPromiseTime.promiseTimeRange = localHour.promiseTimeRange;
          SelectPaymentTypeActivity.this.mPromiseTime.showText = (localDay.toString() + " " + localHour.toString());
          if (SelectPaymentTypeActivity.this.deliveryTimeTv != null) {
            SelectPaymentTypeActivity.this.deliveryTimeTv.setText(SelectPaymentTypeActivity.this.mPromiseTime.showText);
          }
        }
        localAlertDialog.dismiss();
      }
    });
    localListView1.setItemChecked(paramInt1, true);
    resetRightAdapter(localListView2, (Day)paramArrayList.get(paramInt1));
    localAlertDialog.show();
  }
  
  private void updatePayMentsData(JSONObject paramJSONObject)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)ImageUtil.inflate(2130903244, null);
    this.distributionTypeTv = ((TextView)localRelativeLayout.findViewById(2131494047));
    this.distributionTypeButton = ((ImageButton)localRelativeLayout.findViewById(2131494048));
    this.deliveryTimeTip = ((TextView)localRelativeLayout.findViewById(2131494049));
    this.deliveryTimeTv = ((TextView)localRelativeLayout.findViewById(2131494050));
    this.deliveryTimeButton = ((ImageButton)localRelativeLayout.findViewById(2131494051));
    this.bigDeliveryTimeTip = ((TextView)localRelativeLayout.findViewById(2131494052));
    this.bigDeliveryTimeTv = ((TextView)localRelativeLayout.findViewById(2131494053));
    this.bigDeliveryTimeButton = ((ImageButton)localRelativeLayout.findViewById(2131494054));
    this.paymentTypesTv = ((TextView)localRelativeLayout.findViewById(2131494060));
    this.paymentTypesTip = ((TextView)localRelativeLayout.findViewById(2131494059));
    this.paymentTypesbutton = ((ImageButton)localRelativeLayout.findViewById(2131494061));
    this.ConfirmRG = ((RadioGroup)localRelativeLayout.findViewById(2131494056));
    this.confirmTip = ((TextView)localRelativeLayout.findViewById(2131494055));
    if (paramJSONObject == null) {
      return;
    }
    try
    {
      if (this.mCurrPaymentId != 1)
      {
        this.paymentTypesbutton.setVisibility(8);
        this.paymentTypesTv.setVisibility(8);
        this.paymentTypesTip.setVisibility(8);
      }
      for (;;)
      {
        this.mCurrSendTypeId = paramJSONObject.getInt("Id");
        String str = paramJSONObject.getString("Name");
        if (!TextUtils.isEmpty(str))
        {
          this.distributionTypeTv.setText(str);
          View.OnClickListener local18 = new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              SelectPaymentTypeActivity.this.createAlertDiglog(2, SelectPaymentTypeActivity.this.mSendTimeJSON);
            }
          };
          this.distributionTypeTv.setOnClickListener(local18);
          this.distributionTypeButton.setOnClickListener(local18);
        }
        if (!handlePromiseTime())
        {
          if ((paramJSONObject.isNull("SupCodTime")) || (paramJSONObject.isNull("CanShipTime")) || (!paramJSONObject.getBoolean("CanShipTime"))) {
            break label834;
          }
          localJSONArray2 = paramJSONObject.getJSONArray("SupCodTime");
          m = localJSONArray2.length();
          n = 0;
          break label979;
          if (i1 == 0)
          {
            JSONObject localJSONObject3 = localJSONArray2.getJSONObject(0);
            this.deliveryTimeTv.setText(localJSONObject3.getString("Name"));
            this.mCurrSendTimeId = localJSONObject3.getInt("Id");
          }
          View.OnClickListener local19 = new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              SelectPaymentTypeActivity.this.createAlertDiglog(3, SelectPaymentTypeActivity.this.mSendTimeJSON);
            }
          };
          this.deliveryTimeTv.setOnClickListener(local19);
          this.deliveryTimeButton.setOnClickListener(local19);
        }
        label425:
        if ((paramJSONObject.isNull("bigItemCodDate")) || (paramJSONObject.getJSONArray("bigItemCodDate").length() <= 0)) {
          break label915;
        }
        localJSONArray1 = paramJSONObject.getJSONArray("bigItemCodDate");
        i = 0;
        int j = localJSONArray1.length();
        k = 0;
        if (i < j) {
          break label864;
        }
        label477:
        if (k == 0)
        {
          JSONObject localJSONObject2 = localJSONArray1.getJSONObject(0);
          if (this.mBigInfo == null) {
            this.mBigInfo = new BigHouseholdappliancesInfo();
          }
          this.bigDeliveryTimeTv.setText(localJSONObject2.getString("Name"));
          this.mBigInfo.setName(localJSONObject2.getString("Name"));
          this.mBigInfo.setValue(localJSONObject2.getString("Value"));
        }
        View.OnClickListener local20 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            SelectPaymentTypeActivity.this.createAlertDiglog(4, SelectPaymentTypeActivity.this.mSendTimeJSON);
          }
        };
        this.bigDeliveryTimeTv.setOnClickListener(local20);
        this.bigDeliveryTimeButton.setOnClickListener(local20);
        label581:
        if (paramJSONObject.isNull("SupInforms")) {
          break label958;
        }
        if (!this.isPhoneConfirm) {
          break label945;
        }
        this.ConfirmRG.check(2131494057);
        label608:
        this.ConfirmRG.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener()
        {
          public void onCheckedChanged(RadioGroup paramAnonymousRadioGroup, int paramAnonymousInt)
          {
            if (paramAnonymousInt == 2131494057)
            {
              SelectPaymentTypeActivity.this.isPhoneConfirm = true;
              return;
            }
            SelectPaymentTypeActivity.this.isPhoneConfirm = false;
          }
        });
        label623:
        this.paymentsContentLayout.removeAllViews();
        this.paymentsContentLayout.addView(localRelativeLayout);
        return;
        if (paramJSONObject.isNull("SupPaymentWay")) {
          break label759;
        }
        JSONArray localJSONArray3 = paramJSONObject.getJSONArray("SupPaymentWay");
        int i2 = localJSONArray3.length();
        i3 = 0;
        if (i3 < i2)
        {
          JSONObject localJSONObject5 = localJSONArray3.getJSONObject(i3);
          if (this.mCurrPayMonyTypesId != localJSONObject5.getInt("Id")) {
            break;
          }
          this.paymentTypesTv.setText(localJSONObject5.getString("Name"));
          View.OnClickListener local17 = new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              SelectPaymentTypeActivity.this.createAlertDiglog(5, SelectPaymentTypeActivity.this.mSendTimeJSON);
            }
          };
          this.paymentTypesTv.setOnClickListener(local17);
          this.paymentTypesbutton.setOnClickListener(local17);
        }
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        JSONArray localJSONArray2;
        int m;
        int n;
        int i1;
        JSONArray localJSONArray1;
        int i;
        int k;
        int i3;
        localJSONException.printStackTrace();
        continue;
        i3++;
        continue;
        label759:
        this.paymentTypesbutton.setVisibility(8);
        this.paymentTypesTv.setVisibility(8);
        this.paymentTypesTip.setVisibility(8);
        continue;
        label834:
        label864:
        label996:
        for (;;)
        {
          JSONObject localJSONObject4 = localJSONArray2.getJSONObject(n);
          if (this.mCurrSendTimeId == localJSONObject4.getInt("Id"))
          {
            this.deliveryTimeTv.setText(localJSONObject4.getString("Name"));
            i1 = 1;
            break;
            this.deliveryTimeTip.setVisibility(8);
            this.deliveryTimeTv.setVisibility(8);
            this.deliveryTimeButton.setVisibility(8);
            break label425;
            JSONObject localJSONObject1 = localJSONArray1.getJSONObject(i);
            if (!localJSONObject1.getString("Name").equals(this.mBigInfo.getName())) {
              break label998;
            }
            this.bigDeliveryTimeTv.setText(localJSONObject1.getString("Name"));
            k = 1;
            break label477;
            this.bigDeliveryTimeTip.setVisibility(8);
            this.bigDeliveryTimeTv.setVisibility(8);
            this.bigDeliveryTimeButton.setVisibility(8);
            break label581;
            this.ConfirmRG.check(2131494058);
            break label608;
            this.confirmTip.setVisibility(8);
            this.ConfirmRG.setVisibility(8);
            break label623;
          }
          for (;;)
          {
            if (n < m) {
              break label996;
            }
            i1 = 0;
            break;
            n++;
          }
        }
        label915:
        label945:
        label958:
        label979:
        label998:
        i++;
      }
    }
  }
  
  private void updatePayments(int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        int i;
        int j;
        do
        {
          try
          {
            if ((SelectPaymentTypeActivity.this.mPayMentJSON == null) || (SelectPaymentTypeActivity.this.mPayMentJSON.getJSONArray("paymentInfo") == null)) {
              break;
            }
            localJSONArray = SelectPaymentTypeActivity.this.mPayMentJSON.getJSONArray("paymentInfo");
            i = localJSONArray.length();
            j = 0;
          }
          catch (JSONException localJSONException)
          {
            JSONArray localJSONArray;
            JSONObject localJSONObject;
            localJSONException.printStackTrace();
            return;
          }
          localJSONObject = localJSONArray.getJSONObject(j);
          if ((localJSONObject != null) && (localJSONObject.getInt("Id") == LastOrderInfo.mPaymentInfo.nSelected))
          {
            if (TextUtils.isEmpty(localJSONObject.getString("Name"))) {
              break;
            }
            SelectPaymentTypeActivity.this.paymentTypeTv.setText(localJSONObject.getString("Name").trim());
            SelectPaymentTypeActivity.this.mCurrPaymentId = LastOrderInfo.mPaymentInfo.nSelected;
            return;
          }
          j++;
        } while (j < i);
      }
    });
    requestSendInfo(paramInt);
  }
  
  private void updatePickSitesData(JSONArray paramJSONArray)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)ImageUtil.inflate(2130903243, null);
    this.selfTv = ((TextView)localRelativeLayout.findViewById(2131494044));
    this.selfButton = ((ImageButton)localRelativeLayout.findViewById(2131494045));
    if (paramJSONArray != null) {}
    for (;;)
    {
      try
      {
        if (paramJSONArray.length() <= 0)
        {
          Toast.makeText(this.context, this.errorTips, 0).show();
          return;
        }
        if (this.jdOrder == null) {
          initOrderJson();
        }
        i = 0;
        int j = paramJSONArray.length();
        k = 0;
        if (k < j) {
          continue;
        }
        if (i == 0)
        {
          JSONObject localJSONObject2 = paramJSONArray.getJSONObject(0);
          this.mCurrSelfId = localJSONObject2.getInt("Id");
          this.selfTv.setText(localJSONObject2.getString("Name"));
          this.jdOrder.put("IdPickSite", this.mCurrSelfId);
        }
        View.OnClickListener local12 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            SelectPaymentTypeActivity.this.createPickAlertDiglog();
          }
        };
        this.selfTv.setOnClickListener(local12);
        this.selfButton.setOnClickListener(local12);
      }
      catch (JSONException localJSONException)
      {
        int i;
        int k;
        JSONObject localJSONObject1;
        continue;
      }
      this.paymentsContentLayout.removeAllViews();
      this.paymentsContentLayout.addView(localRelativeLayout);
      return;
      localJSONObject1 = paramJSONArray.getJSONObject(k);
      if (this.mCurrSelfId == localJSONObject1.getInt("Id"))
      {
        this.selfTv.setText(localJSONObject1.getString("Name"));
        this.mCurrSelfId = localJSONObject1.getInt("Id");
        this.jdOrder.put("IdPickSite", this.mCurrSelfId);
        i = 1;
      }
      k++;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903288);
    this.context = this;
    Intent localIntent = getIntent();
    this.isNoRegisterOrder = localIntent.getBooleanExtra("isNoRegisterOrder", false);
    this.mCurrSelfId = localIntent.getIntExtra("IdPickSite", -1);
    this.lsPin = localIntent.getStringExtra("pin");
    try
    {
      this.mPromiseTime = ((PromiseTime)localIntent.getParcelableExtra("PromiseTime"));
      label71:
      this.isPhoneConfirm = Constants.bPhone;
      this.mBigInfo = ((BigHouseholdappliancesInfo)localIntent.getSerializableExtra("selectBigitem"));
      initView();
      initSelID();
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
        compositeOrderStrByAddEasyBuy();
      }
      for (;;)
      {
        getPaymentTypes();
        return;
        initOrderJson();
        getCartItemInfo();
      }
    }
    catch (Exception localException)
    {
      break label71;
    }
  }
  
  public void updatCcomositeBody()
  {
    this.jdBody = new JSONObject();
    try
    {
      this.jdBody.put("OrderStr", this.jdOrder);
      this.jdBody.put("CartStr", this.jdCart);
      this.jdBody.put("pin", this.lsPin);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  static class Day
  {
    String date;
    ArrayList<SelectPaymentTypeActivity.Hour> hours;
    String week;
    
    public String toString()
    {
      return this.date + " " + "(" + this.week + ")";
    }
  }
  
  static class Hour
  {
    boolean isCanSelected;
    String promiseSendPay;
    String promiseTimeRange;
    
    public String toString()
    {
      return this.promiseTimeRange;
    }
  }
  
  private static abstract interface IDialogClickListener
  {
    public abstract void onCall(Map<String, Object> paramMap);
  }
  
  private class JavaScriptInterface
  {
    private JavaScriptInterface() {}
    
    public double getLatitude()
    {
      return LocManager.lati;
    }
    
    public double getLongitude()
    {
      return LocManager.longi;
    }
    
    public String getPickSitesInfo()
    {
      return SelectPaymentTypeActivity.this.mPickSitesJSON.toString();
    }
    
    public void pickSitesSelected(String paramString)
    {
      final int i = Integer.parseInt(paramString);
      SelectPaymentTypeActivity.this.post(new Runnable()
      {
        public void run()
        {
          SelectPaymentTypeActivity.this.pickSitesSelectedByJs(i);
        }
      });
    }
  }
  
  class OperatingBean
  {
    int defaultSelect = 0;
    String[] items;
    
    OperatingBean() {}
  }
  
  public static class PromiseTime
    implements Parcelable
  {
    public static final int BY_DEFAULT_SELECT = 2;
    public static final int BY_SERVER = 0;
    public static final int BY_USER = 1;
    public static final Parcelable.Creator<PromiseTime> CREATOR = new Parcelable.Creator()
    {
      public SelectPaymentTypeActivity.PromiseTime createFromParcel(Parcel paramAnonymousParcel)
      {
        int i = 1;
        SelectPaymentTypeActivity.PromiseTime localPromiseTime = new SelectPaymentTypeActivity.PromiseTime();
        localPromiseTime.promiseType = paramAnonymousParcel.readInt();
        localPromiseTime.promiseSendPay = paramAnonymousParcel.readString();
        localPromiseTime.promiseDate = paramAnonymousParcel.readString();
        localPromiseTime.promiseTimeRange = paramAnonymousParcel.readString();
        localPromiseTime.showText = paramAnonymousParcel.readString();
        localPromiseTime.fromWitch = paramAnonymousParcel.readInt();
        localPromiseTime.isManual = paramAnonymousParcel.readInt();
        if (paramAnonymousParcel.readInt() == i) {}
        for (;;)
        {
          localPromiseTime.isUploading = i;
          localPromiseTime.localType = paramAnonymousParcel.readInt();
          return localPromiseTime;
          i = 0;
        }
      }
      
      public SelectPaymentTypeActivity.PromiseTime[] newArray(int paramAnonymousInt)
      {
        return new SelectPaymentTypeActivity.PromiseTime[paramAnonymousInt];
      }
    };
    public static final int FROM_LASTODER = 100;
    public static final int FROM_SHIPMENTTYPES = 200;
    int fromWitch;
    public int isManual = 0;
    public boolean isUploading = false;
    public int localType;
    public String promiseDate;
    public String promiseSendPay;
    public String promiseTimeRange;
    public int promiseType;
    public String showText;
    
    public static PromiseTime selectDefaultPromiseTime(int paramInt, JSONObject paramJSONObject)
    {
      if (paramJSONObject == null) {}
      JSONObject localJSONObject;
      SelectPaymentTypeActivity.Day localDay;
      SelectPaymentTypeActivity.Hour localHour;
      do
      {
        do
        {
          ArrayList localArrayList;
          int i;
          do
          {
            do
            {
              return null;
              localJSONObject = paramJSONObject.optJSONObject("Promise311");
            } while ((localJSONObject == null) || (!localJSONObject.optBoolean("support")));
            PromiseTime localPromiseTime1 = new PromiseTime();
            localPromiseTime1.localType = 311;
            localPromiseTime1.isManual = 2;
            localPromiseTime1.promiseType = localJSONObject.optInt("promiseType");
            localPromiseTime1.promiseSendPay = localJSONObject.optString("promiseSendPay");
            localPromiseTime1.promiseDate = localJSONObject.optString("promiseDate");
            localPromiseTime1.promiseTimeRange = localJSONObject.optString("promiseTimeRange");
            if (localPromiseTime1.isVisibility())
            {
              localPromiseTime1.showText = localJSONObject.optString("show311Text");
              return localPromiseTime1;
            }
            localArrayList = SelectPaymentTypeActivity.createDaysList(localJSONObject);
            i = SelectPaymentTypeActivity.getFirstVisPos(localArrayList);
          } while ((localArrayList == null) || (localArrayList.size() <= 0));
          localDay = (SelectPaymentTypeActivity.Day)localArrayList.get(i);
        } while ((localDay == null) || (localDay.hours == null) || (localDay.hours.size() <= 0));
        localHour = (SelectPaymentTypeActivity.Hour)localDay.hours.get(0);
      } while (localHour == null);
      PromiseTime localPromiseTime2 = new PromiseTime();
      localPromiseTime2.localType = 311;
      localPromiseTime2.isManual = 2;
      localPromiseTime2.promiseType = localJSONObject.optInt("promiseType");
      localPromiseTime2.promiseSendPay = localHour.promiseSendPay;
      localPromiseTime2.promiseDate = localDay.date;
      localPromiseTime2.promiseTimeRange = localHour.promiseTimeRange;
      if (localPromiseTime2.isVisibility())
      {
        localPromiseTime2.showText = (localDay.toString() + " " + localHour.toString());
        return localPromiseTime2;
      }
      return null;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public boolean isCanSelected(JSONObject paramJSONObject)
    {
      if (paramJSONObject == null) {}
      JSONObject localJSONObject2;
      do
      {
        do
        {
          return false;
        } while (!isVisibility());
        JSONObject localJSONObject1 = paramJSONObject.optJSONObject("Promise311");
        if ((localJSONObject1 != null) && (localJSONObject1.optBoolean("support")) && (this.localType == 311)) {
          return true;
        }
        localJSONObject2 = paramJSONObject.optJSONObject("Promise411");
      } while ((localJSONObject2 == null) || (!localJSONObject2.optBoolean("support")) || (localJSONObject2.optBoolean("grayFlag")) || (this.localType != 411));
      return true;
    }
    
    public boolean isVisibility()
    {
      if (this.localType == 311)
      {
        if ((TextUtils.isEmpty(this.promiseSendPay)) || (TextUtils.isEmpty(this.promiseDate)) || (TextUtils.isEmpty(this.promiseTimeRange))) {}
      }
      else {
        while ((this.localType == 411) && (!TextUtils.isEmpty(this.promiseSendPay))) {
          return true;
        }
      }
      return false;
    }
    
    public String toString()
    {
      return getClass().getName() + "[" + "promiseType=" + this.promiseType + ", " + "promiseSendPay=" + this.promiseSendPay + ", " + "promiseDate=" + this.promiseDate + ", " + "promiseTimeRange=" + this.promiseTimeRange + ", " + "showText=" + this.showText + ", " + "fromWitch=" + this.fromWitch + ", " + "isManual=" + this.isManual + ", " + "isUploading=" + this.isUploading + ", " + "localType=" + this.localType + "]";
    }
    
    public boolean updateShowText(JSONObject paramJSONObject)
    {
      if (this.isManual != 0) {}
      JSONObject localJSONObject1;
      do
      {
        do
        {
          JSONObject localJSONObject2;
          do
          {
            do
            {
              return false;
            } while (paramJSONObject == null);
            if (this.localType != 311) {
              break;
            }
            localJSONObject2 = paramJSONObject.optJSONObject("Promise311");
          } while ((localJSONObject2 == null) || (!localJSONObject2.optBoolean("support")));
          this.promiseType = localJSONObject2.optInt("promiseType");
          this.promiseSendPay = localJSONObject2.optString("promiseSendPay");
          this.promiseDate = localJSONObject2.optString("promiseDate");
          this.promiseTimeRange = localJSONObject2.optString("promiseTimeRange");
          this.showText = localJSONObject2.optString("show311Text");
          return true;
        } while (this.localType != 411);
        localJSONObject1 = paramJSONObject.optJSONObject("Promise411");
      } while ((localJSONObject1 == null) || (!localJSONObject1.optBoolean("support")) || (localJSONObject1.optBoolean("grayFlag")));
      this.promiseType = localJSONObject1.optInt("promiseType");
      this.promiseSendPay = localJSONObject1.optString("promiseSendPay");
      this.showText = localJSONObject1.optString("sendMsg");
      return true;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.promiseType);
      paramParcel.writeString(this.promiseSendPay);
      paramParcel.writeString(this.promiseDate);
      paramParcel.writeString(this.promiseTimeRange);
      paramParcel.writeString(this.showText);
      paramParcel.writeInt(this.fromWitch);
      paramParcel.writeInt(this.isManual);
      if (this.isUploading) {}
      for (int i = 1;; i = 0)
      {
        paramParcel.writeInt(i);
        paramParcel.writeInt(this.localType);
        return;
      }
    }
  }
  
  public class Type
  {
    public static final int TYPE_FOUR = 411;
    public static final int TYPE_THREE = 311;
    ArrayList<SelectPaymentTypeActivity.Day> days = null;
    int firstVisPos = 0;
    boolean grayFlag;
    String grayMsg;
    int localType;
    String promise311Tip;
    String promiseMsg;
    String promiseSendPay;
    int promiseType;
    String sendMsg;
    String show311Text;
    boolean support;
    
    public Type() {}
    
    public String toString()
    {
      String str;
      if (this.localType == 311) {
        str = this.promise311Tip;
      }
      int i;
      do
      {
        return str;
        i = this.localType;
        str = null;
      } while (i != 411);
      return this.promiseMsg;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.SelectPaymentTypeActivity
 * JD-Core Version:    0.7.0.1
 */