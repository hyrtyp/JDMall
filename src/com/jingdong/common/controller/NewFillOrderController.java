package com.jingdong.common.controller;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.common.MyApplication;
import com.jingdong.common.entity.CouponInfo;
import com.jingdong.common.entity.GiftCartInfo;
import com.jingdong.common.entity.NewCurrentOrder;
import com.jingdong.common.entity.SubmitOrderInfo;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.Md5Encrypt;
import com.jingdong.common.utils.MyHandlerList;
import com.jingdong.common.utils.MyHandlerList.MyHandler;
import com.jingdong.common.utils.StatisticsReportUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class NewFillOrderController
{
  public static final int MODIFY_TYPE_INVOICE = 3;
  public static final int MODIFY_TYPE_PAYMENT = 2;
  public static final int MODIFY_TYPE_RECEIVER = 1;
  public static final int PAYMENT_TYPE_CASH_DELIVERY = 1;
  public static final int PAYMENT_TYPE_ON_LINE = 4;
  public static final int PAYMENT_TYPE_POST = 2;
  public static final int PAYMENT_TYPE_SELF = 3;
  public static final String TAG = NewFillOrderController.class.getSimpleName();
  private boolean balanceChangeFlag;
  private CartResponseInfo cartResponseInfo;
  private HttpGroup httpGroup;
  private boolean isLastOrder = true;
  private boolean jdBeanChangeFlag;
  private NewCurrentOrder mNewCurrentOrder;
  private int modifyType = -1;
  
  public NewFillOrderController(HttpGroup paramHttpGroup, CartResponseInfo paramCartResponseInfo, NewCurrentOrder paramNewCurrentOrder)
    throws IllegalAccessException
  {
    if (paramNewCurrentOrder == null) {
      throw new IllegalAccessException("NewCurrentOrder can not be empty !!!");
    }
    this.httpGroup = paramHttpGroup;
    this.cartResponseInfo = paramCartResponseInfo;
    this.mNewCurrentOrder = paramNewCurrentOrder;
  }
  
  public NewCurrentOrder getmNewCurrentOrder()
  {
    return this.mNewCurrentOrder;
  }
  
  public void modifyInvoice(NewFillOrderListener paramNewFillOrderListener)
  {
    this.modifyType = 3;
    syncFillOrder(paramNewFillOrderListener);
  }
  
  public void modifyPayment(NewFillOrderListener paramNewFillOrderListener)
  {
    this.modifyType = 2;
    syncFillOrder(paramNewFillOrderListener);
  }
  
  public void modifyReceiver(NewFillOrderListener paramNewFillOrderListener)
  {
    this.modifyType = 1;
    syncFillOrder(paramNewFillOrderListener);
  }
  
  public void setBalanceChangeFlag(boolean paramBoolean)
  {
    this.balanceChangeFlag = paramBoolean;
  }
  
  public void setJdBeanChangeFlag(boolean paramBoolean)
  {
    this.jdBeanChangeFlag = paramBoolean;
  }
  
  public void submitOrder(NewFillOrderListener paramNewFillOrderListener)
  {
    FillOrderMyHandlerList localFillOrderMyHandlerList = new FillOrderMyHandlerList();
    localFillOrderMyHandlerList.setEvent(6);
    localFillOrderMyHandlerList.setListener(paramNewFillOrderListener);
    localFillOrderMyHandlerList.start();
  }
  
  public void syncFillOrder(NewFillOrderListener paramNewFillOrderListener)
  {
    FillOrderMyHandlerList localFillOrderMyHandlerList = new FillOrderMyHandlerList();
    localFillOrderMyHandlerList.setEvent(0);
    localFillOrderMyHandlerList.setListener(paramNewFillOrderListener);
    localFillOrderMyHandlerList.start();
  }
  
  public class FillOrderMyHandlerList
    extends MyHandlerList
  {
    public static final int EVENT_QUERY_CURRENT_ORDER = 0;
    public static final int EVENT_SUBMIT = 6;
    public int event = -1;
    private NewFillOrderController.NewFillOrderListener newFillOrderListener;
    
    public FillOrderMyHandlerList()
    {
      super();
    }
    
    public FillOrderMyHandlerList(boolean paramBoolean)
    {
      super();
    }
    
    private void init()
    {
      add(new QueryCurrentOrderMyHandler(null));
      add(new QueryCouponsMyHandler(null));
      add(new QueryGiftCartMyHandler(null));
      add(new SubmitOrderMyHandler(null));
      add(new FinalTask(null));
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
    
    private void onFinish(int paramInt, boolean paramBoolean)
    {
      if (this.newFillOrderListener != null)
      {
        if (Log.D) {
          Log.d(NewFillOrderController.TAG, " onFinish() -->>  ResultCode" + paramInt + ", isSucceed:" + paramBoolean);
        }
        this.newFillOrderListener.onFinish(NewFillOrderController.this.mNewCurrentOrder, paramInt, paramBoolean);
      }
    }
    
    public void setArg1(Object paramObject) {}
    
    public void setEvent(int paramInt)
    {
      this.event = paramInt;
    }
    
    public void setListener(NewFillOrderController.NewFillOrderListener paramNewFillOrderListener)
    {
      this.newFillOrderListener = paramNewFillOrderListener;
    }
    
    public void start()
    {
      if (this.event == -1) {
        return;
      }
      if (Log.D) {
        Log.d(NewFillOrderController.TAG, " PageManageMyHandlerList start... -->> " + this.event);
      }
      init();
      super.start();
    }
    
    private class FinalTask
      implements MyHandlerList.MyHandler
    {
      private FinalTask() {}
      
      public void run()
      {
        if (Log.D) {
          Log.d(NewFillOrderController.TAG, " FinalTask -->>  run");
        }
        NewFillOrderController.FillOrderMyHandlerList.this.onFinish(0, true);
      }
    }
    
    private class QueryCouponsMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryCouponsMyHandler() {}
      
      public void run()
      {
        if (NewFillOrderController.FillOrderMyHandlerList.this.event != 0)
        {
          NewFillOrderController.FillOrderMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("usedElecCoupons");
        localHttpSetting.putJsonParam("pin", NewFillOrderController.this.mNewCurrentOrder.getPin());
        localHttpSetting.putJsonParam("CartStr", NewFillOrderController.this.cartResponseInfo.toCheckedCartStr());
        localHttpSetting.putJsonParam("OrderStr", NewFillOrderController.this.mNewCurrentOrder.toOrderStr());
        localHttpSetting.setListener(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            try
            {
              ArrayList localArrayList = CouponInfo.toList(paramAnonymousHttpResponse.getJSONObject().getJSONObject("usedElecCoupons").getJSONArray("Coupons"), 0);
              if (localArrayList != null) {
                NewFillOrderController.this.mNewCurrentOrder.setCouponInfo(localArrayList);
              }
            }
            catch (Exception localException)
            {
              for (;;)
              {
                if (Log.D)
                {
                  Log.d(NewFillOrderController.TAG, "GetCouponInfoListTask JSONException -->> " + localException);
                  localException.printStackTrace();
                }
              }
            }
            NewFillOrderController.FillOrderMyHandlerList.this.doNext();
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            NewFillOrderController.FillOrderMyHandlerList.this.doNext();
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        localHttpSetting.setNotifyUser(false);
        localHttpSetting.setEffect(0);
        NewFillOrderController.this.httpGroup.add(localHttpSetting);
      }
    }
    
    private class QueryCurrentOrderMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryCurrentOrderMyHandler() {}
      
      public void run()
      {
        if (NewFillOrderController.FillOrderMyHandlerList.this.event != 0)
        {
          NewFillOrderController.FillOrderMyHandlerList.this.doNext();
          return;
        }
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("isLastOrder", NewFillOrderController.this.isLastOrder);
          switch (NewFillOrderController.this.modifyType)
          {
          default: 
          case 1: 
            for (;;)
            {
              localJSONObject.put("balanceChangeFlag", NewFillOrderController.this.balanceChangeFlag);
              localJSONObject.put("jdBeanChangeFlag", NewFillOrderController.this.jdBeanChangeFlag);
              localJSONObject.put("liPinKaChangeFlag", NewFillOrderController.this.mNewCurrentOrder.isChangeLipin());
              localJSONObject.put("couponChangeFlag", NewFillOrderController.this.mNewCurrentOrder.isChangeJingOrDongQuan());
              if (!NewFillOrderController.this.isLastOrder) {
                localJSONObject.put("OrderStr", NewFillOrderController.this.mNewCurrentOrder.toOrderStr());
              }
              if (Log.D) {
                Log.d(NewFillOrderController.TAG, " QueryCurrentOrderMyHandler -->> " + NewFillOrderController.this.mNewCurrentOrder.getIdInvoiceContentTypeBook());
              }
              if (NewFillOrderController.this.cartResponseInfo != null) {
                localJSONObject.put("CartStr", NewFillOrderController.this.cartResponseInfo.toCheckedCartStr());
              }
              if (NewFillOrderController.this.isLastOrder) {
                NewFillOrderController.this.isLastOrder = false;
              }
              HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
              localHttpSetting.setFunctionId("currentOrder");
              localHttpSetting.setJsonParams(localJSONObject);
              localHttpSetting.setListener(new HttpGroup.OnAllListener()
              {
                public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
                {
                  if (paramAnonymousHttpResponse != null) {
                    NewFillOrderController.this.mNewCurrentOrder.update(paramAnonymousHttpResponse.getJSONObject(), 1);
                  }
                  NewFillOrderController.this.mNewCurrentOrder.setChangeJingOrDongQuan(false);
                  NewFillOrderController.this.mNewCurrentOrder.setChangeLipin(false);
                  NewFillOrderController.this.balanceChangeFlag = false;
                  NewFillOrderController.this.jdBeanChangeFlag = false;
                  if (NewFillOrderController.this.mNewCurrentOrder.getIdProvince().intValue() != 0)
                  {
                    CommonUtil.setProvinceIDToSharedPreferences(NewFillOrderController.this.mNewCurrentOrder.getIdProvince());
                    if (NewFillOrderController.this.mNewCurrentOrder.getIdCity().intValue() == 0) {
                      break label326;
                    }
                    CommonUtil.setCityIDToSharedPreferences(NewFillOrderController.this.mNewCurrentOrder.getIdCity());
                    if (NewFillOrderController.this.mNewCurrentOrder.getIdArea().intValue() == 0) {
                      break label333;
                    }
                    CommonUtil.setDistrictIdToSharedPreferences(NewFillOrderController.this.mNewCurrentOrder.getIdArea());
                    label249:
                    if (NewFillOrderController.this.mNewCurrentOrder.getIdTown().intValue() == 0) {
                      break label340;
                    }
                    CommonUtil.setTownIdToSharedPreferences(NewFillOrderController.this.mNewCurrentOrder.getIdTown());
                  }
                  for (;;)
                  {
                    NewFillOrderController.FillOrderMyHandlerList.this.onFinish(1, true);
                    NewFillOrderController.FillOrderMyHandlerList.this.doNext();
                    return;
                    label326:
                    CommonUtil.setCityIDToSharedPreferences(null);
                    break;
                    label333:
                    CommonUtil.setDistrictIdToSharedPreferences(null);
                    break label249;
                    label340:
                    CommonUtil.setTownIdToSharedPreferences(null);
                  }
                }
                
                public void onError(HttpGroup.HttpError paramAnonymousHttpError)
                {
                  NewFillOrderController.FillOrderMyHandlerList.this.onFinish(1, false);
                }
                
                public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
                
                public void onStart() {}
              });
              localHttpSetting.setNotifyUser(true);
              NewFillOrderController.this.httpGroup.add(localHttpSetting);
              return;
              localJSONObject.put("consigneeChangeFlag", true);
            }
          }
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
            continue;
            localJSONObject.put("paymentShipmentChangeFlag", true);
            continue;
            localJSONObject.put("invoiceChangeFlag", true);
          }
        }
      }
    }
    
    private class QueryGiftCartMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryGiftCartMyHandler() {}
      
      public void run()
      {
        if (NewFillOrderController.FillOrderMyHandlerList.this.event != 0)
        {
          NewFillOrderController.FillOrderMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("getGiftCart");
        localHttpSetting.putJsonParam("pin", NewFillOrderController.this.mNewCurrentOrder.getPin());
        localHttpSetting.putJsonParam("CartStr", NewFillOrderController.this.cartResponseInfo.toCheckedCartStr());
        localHttpSetting.putJsonParam("OrderStr", NewFillOrderController.this.mNewCurrentOrder.toOrderStr());
        localHttpSetting.setListener(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            try
            {
              ArrayList localArrayList = GiftCartInfo.toList(paramAnonymousHttpResponse.getJSONObject().getJSONObject("getGiftCard").getJSONArray("GiftCards"), 1);
              if (localArrayList != null) {
                NewFillOrderController.this.mNewCurrentOrder.setGiftInfo(localArrayList);
              }
            }
            catch (Exception localException)
            {
              for (;;)
              {
                if (Log.D)
                {
                  Log.d(NewFillOrderController.TAG, "GetCouponInfoListTask JSONException -->> " + localException);
                  localException.printStackTrace();
                }
              }
            }
            NewFillOrderController.FillOrderMyHandlerList.this.onFinish(2, true);
            NewFillOrderController.FillOrderMyHandlerList.this.doNext();
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            NewFillOrderController.FillOrderMyHandlerList.this.onFinish(2, false);
            NewFillOrderController.FillOrderMyHandlerList.this.doNext();
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        localHttpSetting.setNotifyUser(false);
        localHttpSetting.setEffect(0);
        NewFillOrderController.this.httpGroup.add(localHttpSetting);
      }
    }
    
    private class SubmitOrderMyHandler
      implements MyHandlerList.MyHandler
    {
      private SubmitOrderMyHandler() {}
      
      public void run()
      {
        if (NewFillOrderController.FillOrderMyHandlerList.this.event != 6)
        {
          NewFillOrderController.FillOrderMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setPost(true);
        localHttpSetting.setFunctionId("submitOrder");
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("SupportJdBean", true);
          localJSONObject.put("OrderStr", NewFillOrderController.this.mNewCurrentOrder.toOrderStr());
          localJSONObject.put("CartStr", NewFillOrderController.this.cartResponseInfo.toCheckedCartStr());
          localJSONObject.put("statisticsStr", NewFillOrderController.this.cartResponseInfo.toCheckedStatisticsStr());
          localJSONObject.put("totalPrice", NewFillOrderController.this.mNewCurrentOrder.getTotalPrice());
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.putJsonParam("syntype", "1");
          localHttpSetting.putJsonParam("cartuuid", StatisticsReportUtil.readCartUUID());
          if (NewFillOrderController.this.mNewCurrentOrder.getMiaoSha().booleanValue())
          {
            String str = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
            localHttpSetting.putJsonParam("sign", NewFillOrderController.FillOrderMyHandlerList.this.miaoShaoMd5Encrypt("submitOrder", str));
            localHttpSetting.putJsonParam("timestamp", str);
          }
          localHttpSetting.setNotifyUser(true);
          if (!TextUtils.isEmpty(NewFillOrderController.this.mNewCurrentOrder.getSubmitOrderInfo().getCaptchaCode())) {
            localHttpSetting.putJsonParam("resultCode", NewFillOrderController.this.mNewCurrentOrder.getSubmitOrderInfo().getCaptchaCode());
          }
          if (!TextUtils.isEmpty(NewFillOrderController.this.mNewCurrentOrder.getSubmitOrderInfo().getCaptchaKey())) {
            localHttpSetting.putJsonParam("key", NewFillOrderController.this.mNewCurrentOrder.getSubmitOrderInfo().getCaptchaKey());
          }
          if (!TextUtils.isEmpty(NewFillOrderController.this.mNewCurrentOrder.getUsid())) {
            localHttpSetting.putMapParams("usid", NewFillOrderController.this.mNewCurrentOrder.getUsid());
          }
          localHttpSetting.setListener(new HttpGroup.OnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              try
              {
                JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
                NewFillOrderController.this.mNewCurrentOrder.getSubmitOrderInfo().update(localJSONObjectProxy, 0);
                if (!TextUtils.isEmpty(NewFillOrderController.this.mNewCurrentOrder.getSubmitOrderInfo().getCaptchaUrl())) {
                  NewFillOrderController.FillOrderMyHandlerList.this.onFinish(3, false);
                }
                for (;;)
                {
                  NewFillOrderController.FillOrderMyHandlerList.this.doNext();
                  return;
                  String str = NewFillOrderController.this.mNewCurrentOrder.getSubmitOrderInfo().getOrderId();
                  if ((!TextUtils.isEmpty(str)) && (!TextUtils.equals(str, "0")))
                  {
                    DBHelperUtil localDBHelperUtil = new DBHelperUtil(MyApplication.getInstance().getApplicationContext());
                    localDBHelperUtil.delAllCart();
                    localDBHelperUtil.delAllPacksCart();
                  }
                  NewFillOrderController.FillOrderMyHandlerList.this.onFinish(3, true);
                }
              }
              catch (Exception localException)
              {
                for (;;)
                {
                  if (Log.D)
                  {
                    Log.d(NewFillOrderController.TAG, "submitOrder JSONException -->> " + localException);
                    localException.printStackTrace();
                  }
                }
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              if (Log.D) {
                Log.d(NewFillOrderController.TAG, "SubmitOrderTask error -->> " + paramAnonymousHttpError);
              }
              NewFillOrderController.FillOrderMyHandlerList.this.onFinish(3, false);
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          NewFillOrderController.this.httpGroup.add(localHttpSetting);
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
  
  public static abstract interface NewFillOrderListener
  {
    public static final int RESULT_CODE_0 = 0;
    public static final int RESULT_CODE_1_CURRENT_ORDER = 1;
    public static final int RESULT_CODE_2_QUERY_COUPONS_GIFT_CART = 2;
    public static final int RESULT_CODE_3_SUBMIT_ORDER = 3;
    
    public abstract void onFinish(NewCurrentOrder paramNewCurrentOrder, int paramInt, boolean paramBoolean);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.controller.NewFillOrderController
 * JD-Core Version:    0.7.0.1
 */