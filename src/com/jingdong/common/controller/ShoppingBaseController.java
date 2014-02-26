package com.jingdong.common.controller;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.jingdong.common.MyApplication;
import com.jingdong.common.database.table.DB_CartTable;
import com.jingdong.common.database.table.DB_PacksTable;
import com.jingdong.common.entity.Pack;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.entity.cart.CartPackSummary;
import com.jingdong.common.entity.cart.CartRequest;
import com.jingdong.common.entity.cart.CartRequestCommon;
import com.jingdong.common.entity.cart.CartRequestOperate;
import com.jingdong.common.entity.cart.CartResonseYBSelected;
import com.jingdong.common.entity.cart.CartResponse;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.entity.cart.CartResponseSku;
import com.jingdong.common.entity.cart.CartResponseYBDetail;
import com.jingdong.common.entity.cart.CartSkuSummary;
import com.jingdong.common.frame.IMainActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.ui.DialogController;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.HttpTaskListener;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ICommon;
import com.jingdong.common.utils.StatisticsReportUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ShoppingBaseController
{
  private static final String SHARED_PREFERENCES_SHOPPING_CART_COUNT = "shoppingCartCount";
  private static final String TAG = "ShoppingController";
  private static ICommon iCommon;
  
  public static void addOneGiftToPack(IMyActivity paramIMyActivity, CartSkuSummary paramCartSkuSummary, CartPackSummary paramCartPackSummary, ShoppingListener paramShoppingListener)
  {
    if (paramCartPackSummary != null) {
      paramCartPackSummary.addGift(paramCartSkuSummary);
    }
    syncCart(paramIMyActivity, new CartRequest(new CartRequestOperate(null, paramCartPackSummary, "2")), new ShoppingHttpListener(paramShoppingListener));
  }
  
  public static void addOnePack(IMyActivity paramIMyActivity, final Pack paramPack)
  {
    if ((paramIMyActivity == null) || (paramPack == null) || (paramPack.getId() == null)) {
      return;
    }
    AddShoppingListener local2 = new AddShoppingListener(paramIMyActivity)
    {
      public void onEnd(CartResponse paramAnonymousCartResponse)
      {
        super.onEnd(paramAnonymousCartResponse);
        if (paramAnonymousCartResponse.getInfo() != null) {
          new Thread(new Runnable()
          {
            public void run()
            {
              DB_PacksTable.insertSingletonPacksCart(this.val$addPack);
            }
          }).start();
        }
      }
      
      public void onError(String paramAnonymousString)
      {
        super.onError(paramAnonymousString);
      }
    };
    CartPackSummary localCartPackSummary = new CartPackSummary(String.valueOf(paramPack.getId()), Integer.valueOf(1));
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localCartPackSummary);
    CartRequest localCartRequest = new CartRequest(new CartRequestCommon(null, localArrayList));
    localCartRequest.setNoResponse(Boolean.valueOf(true));
    syncCart(paramIMyActivity, localCartRequest, new ShoppingHttpListener(local2), true, true);
  }
  
  public static void addOneProduct(final IMyActivity paramIMyActivity, final Product paramProduct, final Runnable paramRunnable)
  {
    if ((paramIMyActivity == null) || (paramProduct == null)) {
      return;
    }
    AddShoppingListener local1 = new AddShoppingListener(paramIMyActivity)
    {
      public void onEnd(CartResponse paramAnonymousCartResponse)
      {
        super.onEnd(paramAnonymousCartResponse);
        if (paramAnonymousCartResponse.getInfo() != null) {
          new Thread()
          {
            public void run()
            {
              setName("ShoppingController_addOneProduct");
              DB_CartTable.insertSingletonCart(this.val$product);
            }
          }.start();
        }
        if (paramRunnable != null) {
          paramIMyActivity.post(paramRunnable);
        }
      }
      
      public void onError(String paramAnonymousString)
      {
        super.onError(paramAnonymousString);
      }
    };
    if (TextUtils.equals(paramProduct.getJdPrice(), StringUtil.no_price))
    {
      local1.onError(StringUtil.product_canot_add_to_car);
      return;
    }
    Boolean localBoolean = paramProduct.getProvinceStockFlag();
    if ((localBoolean == null) || (!localBoolean.booleanValue()))
    {
      local1.onError(StringUtil.product_no_stock);
      return;
    }
    CartSkuSummary localCartSkuSummary = new CartSkuSummary(paramProduct.getId(), Integer.valueOf(1));
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localCartSkuSummary);
    CartRequest localCartRequest = new CartRequest(new CartRequestCommon(localArrayList, null));
    localCartRequest.setNoResponse(Boolean.valueOf(true));
    syncCart(paramIMyActivity, localCartRequest, new ShoppingHttpListener(local1), true, true);
  }
  
  public static void addOrDeleteYb(IMyActivity paramIMyActivity, ArrayList<CartResponseYBDetail> paramArrayList, ArrayList<CartResonseYBSelected> paramArrayList1, ShoppingListener paramShoppingListener)
  {
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator5;
    ArrayList localArrayList2;
    Iterator localIterator3;
    label48:
    ArrayList localArrayList3;
    CartRequest localCartRequest;
    CartResponseYBDetail localCartResponseYBDetail1;
    CartPackSummary localCartPackSummary2;
    label133:
    Iterator localIterator2;
    label140:
    CartResonseYBSelected localCartResonseYBSelected1;
    CartPackSummary localCartPackSummary1;
    label227:
    Iterator localIterator1;
    if (paramArrayList != null)
    {
      localIterator5 = paramArrayList.iterator();
      if (localIterator5.hasNext()) {}
    }
    else
    {
      localArrayList2 = new ArrayList();
      if (paramArrayList1 != null)
      {
        localIterator3 = paramArrayList1.iterator();
        if (localIterator3.hasNext()) {
          break label389;
        }
      }
      localArrayList3 = new ArrayList();
      localCartRequest = new CartRequest(localArrayList3);
      if (localArrayList1.size() > 0)
      {
        localCartResponseYBDetail1 = (CartResponseYBDetail)localArrayList1.get(0);
        if (TextUtils.isEmpty(localCartResponseYBDetail1.getrSuitId())) {
          break label485;
        }
        localCartPackSummary2 = new CartPackSummary(localCartResponseYBDetail1.getrWid(), localCartResponseYBDetail1.getrSuitId(), Integer.valueOf(1), "7");
        localIterator2 = localArrayList1.iterator();
        if (localIterator2.hasNext()) {
          break label508;
        }
        CartRequestOperate localCartRequestOperate2 = new CartRequestOperate(null, localCartPackSummary2, "2");
        localArrayList3.add(localCartRequestOperate2);
      }
      if (localArrayList2.size() > 0)
      {
        localCartResonseYBSelected1 = (CartResonseYBSelected)localArrayList2.get(0);
        if (TextUtils.isEmpty(localCartResonseYBSelected1.getrSuitId())) {
          break label540;
        }
        localCartPackSummary1 = new CartPackSummary(localCartResonseYBSelected1.getrWid(), localCartResonseYBSelected1.getrSuitId(), Integer.valueOf(1), "7");
        localIterator1 = localArrayList2.iterator();
      }
    }
    for (;;)
    {
      if (!localIterator1.hasNext())
      {
        CartRequestOperate localCartRequestOperate1 = new CartRequestOperate(null, localCartPackSummary1, "4");
        localArrayList3.add(localCartRequestOperate1);
        if (localArrayList3.size() > 0)
        {
          ShoppingHttpListener localShoppingHttpListener = new ShoppingHttpListener(paramShoppingListener);
          syncCart(paramIMyActivity, localCartRequest, localShoppingHttpListener);
        }
        return;
        CartResponseYBDetail localCartResponseYBDetail3 = (CartResponseYBDetail)localIterator5.next();
        int j = 1;
        Iterator localIterator6;
        if (paramArrayList1 != null)
        {
          localIterator6 = paramArrayList1.iterator();
          label318:
          if (localIterator6.hasNext()) {
            break label344;
          }
        }
        for (;;)
        {
          if (j == 0) {
            break label387;
          }
          localArrayList1.add(localCartResponseYBDetail3);
          break;
          label344:
          CartResonseYBSelected localCartResonseYBSelected3 = (CartResonseYBSelected)localIterator6.next();
          if ((localCartResonseYBSelected3.getYbSku() == null) || (!TextUtils.equals(localCartResonseYBSelected3.getYbSku().getSkuId(), localCartResponseYBDetail3.getId()))) {
            break label318;
          }
          j = 0;
        }
        label387:
        break;
        label389:
        CartResonseYBSelected localCartResonseYBSelected2 = (CartResonseYBSelected)localIterator3.next();
        int i = 1;
        Iterator localIterator4;
        if (paramArrayList != null)
        {
          localIterator4 = paramArrayList.iterator();
          label414:
          if (localIterator4.hasNext()) {
            break label440;
          }
        }
        for (;;)
        {
          if (i == 0) {
            break label483;
          }
          localArrayList2.add(localCartResonseYBSelected2);
          break;
          label440:
          CartResponseYBDetail localCartResponseYBDetail2 = (CartResponseYBDetail)localIterator4.next();
          if ((localCartResonseYBSelected2.getYbSku() == null) || (!TextUtils.equals(localCartResonseYBSelected2.getYbSku().getSkuId(), localCartResponseYBDetail2.getId()))) {
            break label414;
          }
          i = 0;
        }
        label483:
        break label48;
        label485:
        localCartPackSummary2 = new CartPackSummary(localCartResponseYBDetail1.getrWid(), Integer.valueOf(1), "8");
        break label133;
        label508:
        localCartPackSummary2.addSku(new CartSkuSummary(((CartResponseYBDetail)localIterator2.next()).getId(), Integer.valueOf(1)));
        break label140;
        label540:
        localCartPackSummary1 = new CartPackSummary(localCartResonseYBSelected1.getrWid(), Integer.valueOf(1), "8");
        break label227;
      }
      CartResponseSku localCartResponseSku = ((CartResonseYBSelected)localIterator1.next()).getYbSku();
      if (localCartResponseSku != null) {
        localCartPackSummary1.addSku(new CartSkuSummary(localCartResponseSku.getSkuId(), localCartResponseSku.getNum()));
      }
    }
  }
  
  public static void addProductOrPack(IMyActivity paramIMyActivity, String paramString1, int paramInt1, String paramString2, int paramInt2, SourceEntity paramSourceEntity)
  {
    if ((paramIMyActivity == null) || ((TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString2)))) {}
    for (;;)
    {
      return;
      boolean bool1 = TextUtils.isEmpty(paramString1);
      Product localProduct1 = null;
      String str2;
      if (!bool1)
      {
        str2 = paramString1.trim();
        localProduct1 = new Product();
      }
      try
      {
        localProduct1.setId(Long.valueOf(Long.parseLong(str2)));
        localProduct1.setNum(Integer.valueOf(paramInt1));
        if (paramSourceEntity != null) {
          localProduct1.setSourceEntity(paramSourceEntity);
        }
        boolean bool2 = TextUtils.isEmpty(paramString2);
        localPack = null;
        if (!bool2)
        {
          str1 = paramString2.trim();
          localPack = new Pack();
        }
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        for (;;)
        {
          try
          {
            final Pack localPack;
            String str1;
            localPack.setId(Long.valueOf(Long.parseLong(str1)));
            localPack.setNum(Integer.valueOf(paramInt2));
            if (paramSourceEntity != null) {
              localPack.setSourceEntity(paramSourceEntity);
            }
            final Product localProduct2 = localProduct1;
            AddShoppingListener local3 = new AddShoppingListener(paramIMyActivity)
            {
              public void onEnd(CartResponse paramAnonymousCartResponse)
              {
                super.onEnd(paramAnonymousCartResponse);
                if (paramAnonymousCartResponse.getInfo() != null) {
                  new Thread(new Runnable()
                  {
                    public void run()
                    {
                      if (this.val$insertProduct != null) {
                        DB_CartTable.insertSingletonCart(this.val$insertProduct);
                      }
                      if (this.val$insertPack != null) {
                        DB_PacksTable.insertSingletonPacksCart(this.val$insertPack);
                      }
                    }
                  }).start();
                }
              }
              
              public void onError(String paramAnonymousString)
              {
                super.onError(paramAnonymousString);
              }
            };
            ArrayList localArrayList1 = null;
            if (localProduct2 != null)
            {
              CartSkuSummary localCartSkuSummary = new CartSkuSummary(localProduct2.getId(), localProduct2.getNum());
              localArrayList1 = new ArrayList();
              localArrayList1.add(localCartSkuSummary);
            }
            ArrayList localArrayList2 = null;
            if (localPack != null)
            {
              CartPackSummary localCartPackSummary = new CartPackSummary(String.valueOf(localPack.getId()), localPack.getNum());
              localArrayList2 = new ArrayList();
              localArrayList2.add(localCartPackSummary);
            }
            if ((localArrayList1 == null) && (localArrayList2 == null)) {
              break;
            }
            CartRequest localCartRequest = new CartRequest(new CartRequestCommon(localArrayList1, localArrayList2));
            localCartRequest.setNoResponse(Boolean.valueOf(true));
            syncCart(paramIMyActivity, localCartRequest, new ShoppingHttpListener(local3), true, true);
            return;
          }
          catch (NumberFormatException localNumberFormatException1) {}
          localNumberFormatException2 = localNumberFormatException2;
          localProduct1 = null;
        }
      }
    }
  }
  
  public static void addToCart(final IMyActivity paramIMyActivity, String paramString)
  {
    JSONArray localJSONArray = new JSONArray();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("num", "1");
      localJSONObject.put("Id", paramString);
      localJSONArray.put(localJSONObject);
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("cart");
      localHttpSetting.setListener(new HttpGroup.OnCommonListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          paramIMyActivity.post(new Runnable()
          {
            public void run()
            {
              if (ShoppingBaseController.iCommon != null) {
                ShoppingBaseController.iCommon.goToShoppingCartPage(this.val$myActivity.getThisActivity(), false);
              }
            }
          });
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
        {
          paramAnonymousHttpSettingParams.putJsonParam("TheSkus", ShoppingBaseController.this);
          paramAnonymousHttpSettingParams.putJsonParam("pin", LoginUserBase.getLoginUserName());
          paramAnonymousHttpSettingParams.putJsonParam("syntype", "1");
        }
      });
      paramIMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
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
  
  public static void clearLocalCart()
  {
    DB_PacksTable.delAllPacksCart();
    DB_CartTable.delAllCart();
    setProductCount(0);
    validateCartIcon();
  }
  
  public static void deleteOneGiftFormPack(IMyActivity paramIMyActivity, CartSkuSummary paramCartSkuSummary, CartPackSummary paramCartPackSummary, ShoppingListener paramShoppingListener)
  {
    if (paramCartPackSummary != null) {
      paramCartPackSummary.addGift(paramCartSkuSummary);
    }
    syncCart(paramIMyActivity, new CartRequest(new CartRequestOperate(null, paramCartPackSummary, "4")), new ShoppingHttpListener(paramShoppingListener));
  }
  
  public static void deleteOnePack(IMyActivity paramIMyActivity, CartPackSummary paramCartPackSummary, ShoppingListener paramShoppingListener)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramCartPackSummary);
    deleteProductOrPackList(paramIMyActivity, null, localArrayList, paramShoppingListener);
  }
  
  public static void deleteOneProduct(IMyActivity paramIMyActivity, CartSkuSummary paramCartSkuSummary, ShoppingListener paramShoppingListener)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramCartSkuSummary);
    deleteProductOrPackList(paramIMyActivity, localArrayList, null, paramShoppingListener);
  }
  
  public static void deleteProductOrPackList(IMyActivity paramIMyActivity, ArrayList<CartSkuSummary> paramArrayList, ArrayList<CartPackSummary> paramArrayList1, ShoppingListener paramShoppingListener)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new CartRequestOperate(paramArrayList, paramArrayList1, "4"));
    syncCart(paramIMyActivity, new CartRequest(localArrayList), new ShoppingHttpListener(paramShoppingListener));
  }
  
  public static void editProductOrPackList(IMyActivity paramIMyActivity, ArrayList<CartSkuSummary> paramArrayList, ArrayList<CartPackSummary> paramArrayList1, ShoppingListener paramShoppingListener)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new CartRequestOperate(paramArrayList, paramArrayList1, "3"));
    syncCart(paramIMyActivity, new CartRequest(localArrayList), new ShoppingHttpListener(paramShoppingListener));
  }
  
  public static int getProductCount()
  {
    return CommonUtil.getJdSharedPreferences().getInt("shoppingCartCount", 0);
  }
  
  public static void selectAll(IMyActivity paramIMyActivity, ShoppingListener paramShoppingListener)
  {
    syncCart(paramIMyActivity, new CartRequest(new CartRequestOperate("7")), new ShoppingHttpListener(paramShoppingListener));
  }
  
  public static void selectOneProductOrPack(IMyActivity paramIMyActivity, CartSkuSummary paramCartSkuSummary, CartPackSummary paramCartPackSummary, ShoppingListener paramShoppingListener)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new CartRequestOperate(paramCartSkuSummary, paramCartPackSummary, "5"));
    syncCart(paramIMyActivity, new CartRequest(localArrayList), new ShoppingHttpListener(paramShoppingListener));
  }
  
  public static void setCommon(ICommon paramICommon)
  {
    iCommon = paramICommon;
  }
  
  public static void setProductCount(int paramInt)
  {
    CommonUtil.getJdSharedPreferences().edit().putInt("shoppingCartCount", paramInt).commit();
  }
  
  public static void syncCart(IMyActivity paramIMyActivity, ShoppingListener paramShoppingListener, boolean paramBoolean1, boolean paramBoolean2)
  {
    syncCart(paramIMyActivity, null, new ShoppingHttpListener(paramShoppingListener), paramBoolean1, paramBoolean2);
  }
  
  public static void syncCart(IMyActivity paramIMyActivity, CartRequest paramCartRequest, HttpGroup.HttpTaskListener paramHttpTaskListener)
  {
    syncCart(paramIMyActivity, paramCartRequest, paramHttpTaskListener, true, false);
  }
  
  public static void syncCart(IMyActivity paramIMyActivity, CartRequest paramCartRequest, HttpGroup.HttpTaskListener paramHttpTaskListener, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramIMyActivity == null) {
      return;
    }
    Object localObject = null;
    CartRequestCommon localCartRequestCommon = null;
    ArrayList localArrayList = null;
    boolean bool = false;
    if (paramCartRequest != null)
    {
      localCartRequestCommon = paramCartRequest.getCartCommon();
      localArrayList = paramCartRequest.getCartOperates();
      bool = paramCartRequest.getNoResponse().booleanValue();
    }
    if (localCartRequestCommon != null) {}
    for (;;)
    {
      JSONObject localJSONObject1;
      try
      {
        JSONObject localJSONObject2 = localCartRequestCommon.toParams();
        localJSONObject1 = localJSONObject2;
        if (localJSONObject1 != null) {
          continue;
        }
      }
      catch (JSONException localJSONException1)
      {
        JSONArray localJSONArray;
        Iterator localIterator;
        HttpGroup.HttpSetting localHttpSetting;
        continue;
        localHttpSetting.setEffect(0);
        continue;
        localObject = localJSONObject1;
        continue;
      }
      try
      {
        localObject = new JSONObject();
        if ((localArrayList != null) && (localArrayList.size() > 0))
        {
          localJSONArray = new JSONArray();
          localIterator = localArrayList.iterator();
          if (localIterator.hasNext()) {
            continue;
          }
          ((JSONObject)localObject).put("operations", localJSONArray);
        }
        ((JSONObject)localObject).put("syntype", "1");
        ((JSONObject)localObject).put("cartuuid", StatisticsReportUtil.readCartUUID());
        if (bool) {
          ((JSONObject)localObject).put("noResponse", bool);
        }
      }
      catch (JSONException localJSONException2)
      {
        localObject = localJSONObject1;
        continue;
      }
      localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("cart");
      localHttpSetting.setJsonParams((JSONObject)localObject);
      localHttpSetting.setNotifyUser(paramBoolean1);
      if (paramHttpTaskListener != null) {
        localHttpSetting.setListener(paramHttpTaskListener);
      }
      if (!LoginUserBase.hasLogin()) {
        localHttpSetting.setUseCookies(false);
      }
      if (paramBoolean2)
      {
        localHttpSetting.setEffect(1);
        paramIMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
        return;
        localJSONArray.put(((CartRequestOperate)localIterator.next()).toParams());
      }
      else
      {
        localJSONObject1 = null;
      }
    }
  }
  
  public static void syncCartNoResponse(IMyActivity paramIMyActivity)
  {
    CartRequest localCartRequest = new CartRequest();
    localCartRequest.setNoResponse(Boolean.valueOf(true));
    syncCart(paramIMyActivity, localCartRequest, new ShoppingHttpListener(null), true, false);
  }
  
  public static void unSelectAll(IMyActivity paramIMyActivity, ShoppingListener paramShoppingListener)
  {
    syncCart(paramIMyActivity, new CartRequest(new CartRequestOperate("8")), new ShoppingHttpListener(paramShoppingListener));
  }
  
  public static void unSelectOneProductOrPack(IMyActivity paramIMyActivity, CartSkuSummary paramCartSkuSummary, CartPackSummary paramCartPackSummary, ShoppingListener paramShoppingListener)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new CartRequestOperate(paramCartSkuSummary, paramCartPackSummary, "6"));
    syncCart(paramIMyActivity, new CartRequest(localArrayList), new ShoppingHttpListener(paramShoppingListener));
  }
  
  private static void validateCartIcon()
  {
    try
    {
      IMainActivity localIMainActivity = MyApplication.getInstance().getMainFrameActivity();
      if (localIMainActivity != null) {
        localIMainActivity.validateCartIcon();
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private static class AddShoppingListener
    implements ShoppingBaseController.ShoppingListener
  {
    private IMyActivity myActivity;
    
    public AddShoppingListener(IMyActivity paramIMyActivity)
    {
      if (paramIMyActivity == null) {
        throw new RuntimeException("myActivity is null");
      }
      this.myActivity = paramIMyActivity;
    }
    
    public void onEnd(CartResponse paramCartResponse)
    {
      final DialogController local3 = new DialogController()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          default: 
            return;
          case -1: 
            if (ShoppingBaseController.iCommon != null) {
              ShoppingBaseController.iCommon.goToShoppingCartPage(ShoppingBaseController.AddShoppingListener.this.myActivity.getThisActivity(), true);
            }
            this.alertDialog.dismiss();
            return;
          }
          paramAnonymousDialogInterface.dismiss();
        }
      };
      local3.setTitle(StringUtil.product_add_title);
      local3.setMessage(StringUtil.product_add_message);
      local3.setPositiveButton(StringUtil.product_add_positive);
      local3.setNegativeButton(StringUtil.product_add_negative);
      local3.init(this.myActivity.getThisActivity());
      this.myActivity.post(new Runnable()
      {
        public void run()
        {
          local3.show();
        }
      });
    }
    
    public void onError(String paramString)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        final DialogController local1 = new DialogController()
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
        local1.setMessage(paramString);
        local1.setPositiveButton(StringUtil.ok);
        local1.init(this.myActivity.getThisActivity());
        this.myActivity.post(new Runnable()
        {
          public void run()
          {
            local1.show();
          }
        });
      }
    }
    
    public void onStart() {}
  }
  
  public static class ShoppingHttpListener
    implements HttpGroup.CustomOnAllListener
  {
    private ShoppingBaseController.ShoppingListener mShoppingListener;
    
    public ShoppingHttpListener(ShoppingBaseController.ShoppingListener paramShoppingListener)
    {
      this.mShoppingListener = paramShoppingListener;
    }
    
    private void shoppingOnEnd(CartResponse paramCartResponse)
    {
      if (this.mShoppingListener != null) {
        this.mShoppingListener.onEnd(paramCartResponse);
      }
    }
    
    private void shoppingOnError(String paramString)
    {
      if (this.mShoppingListener != null) {
        this.mShoppingListener.onError(paramString);
      }
    }
    
    private void shoppingOnStart()
    {
      if (this.mShoppingListener != null) {
        this.mShoppingListener.onStart();
      }
    }
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      if (paramHttpResponse != null)
      {
        CartResponse localCartResponse = new CartResponse(paramHttpResponse.getJSONObject());
        int i = 0;
        if (!TextUtils.isEmpty(localCartResponse.getErrorMessage()))
        {
          shoppingOnError(localCartResponse.getErrorMessage());
          return;
        }
        if (localCartResponse.getInfo() == null) {
          new Thread(new ShoppingBaseController.UpdateSourceEntityRunnable(null)).start();
        }
        for (;;)
        {
          ShoppingBaseController.setProductCount(i);
          ShoppingBaseController.access$0();
          shoppingOnEnd(localCartResponse);
          if (!LoginUserBase.hasLogin()) {
            break;
          }
          LoginUserBase.setAlreadySyncCart(true);
          return;
          i = localCartResponse.getInfo().getNum().intValue();
          new Thread(new ShoppingBaseController.UpdateSourceEntityRunnable(localCartResponse.getInfo())).start();
        }
      }
      shoppingOnError(null);
    }
    
    public void onError(HttpGroup.HttpError paramHttpError)
    {
      shoppingOnError(null);
    }
    
    public void onProgress(int paramInt1, int paramInt2) {}
    
    public void onStart()
    {
      shoppingOnStart();
    }
  }
  
  public static abstract interface ShoppingListener
  {
    public abstract void onEnd(CartResponse paramCartResponse);
    
    public abstract void onError(String paramString);
    
    public abstract void onStart();
  }
  
  public static class UpdateSourceEntityRunnable
    implements Runnable
  {
    private CartResponseInfo cartResponseInfo;
    
    public UpdateSourceEntityRunnable(CartResponseInfo paramCartResponseInfo)
    {
      this.cartResponseInfo = paramCartResponseInfo;
    }
    
    public void run()
    {
      if (this.cartResponseInfo == null)
      {
        DB_PacksTable.delAllPacksCart();
        DB_CartTable.delAllCart();
      }
      while ((this.cartResponseInfo.getGifts().size() <= 0) && (this.cartResponseInfo.getSkus().size() <= 0) && (this.cartResponseInfo.getSuits().size() <= 0)) {
        return;
      }
      HashMap localHashMap1 = DB_CartTable.getCartListForProduct();
      ArrayList localArrayList1 = this.cartResponseInfo.getAllBuyProduct();
      Iterator localIterator1 = localArrayList1.iterator();
      HashMap localHashMap2;
      ArrayList localArrayList2;
      Iterator localIterator2;
      if (!localIterator1.hasNext())
      {
        DB_CartTable.delAllCart();
        DB_CartTable.insertAllCart(localArrayList1);
        localHashMap2 = DB_PacksTable.getPacksListForPack();
        localArrayList2 = this.cartResponseInfo.getAllBuyPack();
        localIterator2 = localArrayList2.iterator();
      }
      for (;;)
      {
        if (!localIterator2.hasNext())
        {
          DB_PacksTable.delAllPacksCart();
          DB_PacksTable.insertAllPacksCart(localArrayList2);
          return;
          Product localProduct1 = (Product)localIterator1.next();
          Product localProduct2 = (Product)localHashMap1.get(String.valueOf(localProduct1.getId()));
          if (localProduct2 != null)
          {
            localProduct1.setSourceEntity(localProduct2.getSourceEntity());
            break;
          }
          localProduct1.setSourceEntity(new SourceEntity("shoppingCart_webSite", null));
          break;
        }
        Pack localPack1 = (Pack)localIterator2.next();
        Pack localPack2 = (Pack)localHashMap2.get(String.valueOf(localPack1.getId()));
        if (localPack2 != null) {
          localPack1.setSourceEntity(localPack2.getSourceEntity());
        } else {
          localPack1.setSourceEntity(new SourceEntity("shoppingCart_webSite", null));
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.controller.ShoppingBaseController
 * JD-Core Version:    0.7.0.1
 */