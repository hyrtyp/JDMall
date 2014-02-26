package com.jingdong.common.controller;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.jingdong.common.MyApplication;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.database.table.HistoryTable;
import com.jingdong.common.entity.AddressBaseMode;
import com.jingdong.common.entity.CommentCount;
import com.jingdong.common.entity.DefaultAddressMode;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.ProductDetailBasicInfo;
import com.jingdong.common.entity.ProductDetailCruxBasicInfo;
import com.jingdong.common.entity.ProductDetailPrice;
import com.jingdong.common.entity.Province;
import com.jingdong.common.entity.ProvinceMode1;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.lbs.LocManager;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MyHandlerList;
import com.jingdong.common.utils.MyHandlerList.MyHandler;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class ProductDetailController
{
  public static final String QUERY_ADDRESS = "0";
  public static final String QUERY_STOCK = "1";
  private final String CITY = "getCitys";
  private final String COUNTY = "getCountys";
  private final String PROVINCE = "getProvinces";
  private String TAG = "ProductDetailController";
  private final String TOWN = "getTowns";
  private String defaultCityId;
  private String defaultCountyId;
  private String defaultProvinceId;
  private String defaultTownId;
  private HttpGroup httpGroup;
  private long id;
  private boolean isClick = false;
  private boolean isNeedReTryProductDetail = true;
  private int mDefaultCityId;
  private int mDefaultProvinceId;
  private int mProvinceSelectId;
  private SourceEntity mSourceEntity;
  private long needDelHistoryId;
  private Product product = new Product();
  
  public ProductDetailController(HttpGroup paramHttpGroup)
  {
    this.product.setProvinceName(getProvinceNameFromSharedPreferences());
    this.product.setProvinceID(getProvinceIDFromSharedPreferences());
    this.httpGroup = paramHttpGroup;
  }
  
  private int cityId2SelectId(int paramInt)
  {
    Integer localInteger = ((ProvinceMode1)this.product.getProvinceMode1List().get(this.mProvinceSelectId)).getCityMode1IndexById(paramInt);
    if (localInteger == null) {
      return 0;
    }
    return localInteger.intValue();
  }
  
  private int getDefaultCityId()
  {
    if (this.mDefaultCityId != 0) {
      return this.mDefaultCityId;
    }
    this.mDefaultCityId = CommonUtil.getJdSharedPreferences().getInt("CITY_ID_MODE_1", 0);
    return this.mDefaultCityId;
  }
  
  private int getDefaultCitySelectId()
  {
    return cityId2SelectId(getDefaultCityId());
  }
  
  private int getDefaultProvinceId()
  {
    if (this.mDefaultProvinceId != 0) {
      return this.mDefaultProvinceId;
    }
    this.mDefaultProvinceId = CommonUtil.getJdSharedPreferences().getInt("PROVINCE_ID_MODE_1", 0);
    return this.mDefaultProvinceId;
  }
  
  private int getDefaultProvinceSelectId()
  {
    return provinceId2SelectId(getDefaultProvinceId());
  }
  
  private String getProvinceIDFromSharedPreferences()
  {
    return CommonUtil.getJdSharedPreferences().getString("provinceID", LocManager.provinceId);
  }
  
  private String getProvinceNameFromSharedPreferences()
  {
    return CommonUtil.getJdSharedPreferences().getString("provinceName", LocManager.provinceName);
  }
  
  public static void onProductShareClick(HttpGroup paramHttpGroup, long paramLong)
  {
    if (paramHttpGroup == null) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("productDetailShare");
    localHttpSetting.putJsonParam("wareId", paramLong);
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setEffect(0);
    paramHttpGroup.add(localHttpSetting);
  }
  
  private int provinceId2SelectId(int paramInt)
  {
    Integer localInteger = this.product.getProvinceMode1IndexById(paramInt);
    if (localInteger == null) {
      return -1;
    }
    return localInteger.intValue();
  }
  
  private void setProvinceIDToSharedPreferences(String paramString)
  {
    CommonUtil.getJdSharedPreferences().edit().putString("provinceID", paramString).commit();
  }
  
  private void setProvinceNameToSharedPreferences(String paramString)
  {
    CommonUtil.getJdSharedPreferences().edit().putString("provinceName", paramString).commit();
  }
  
  public void addFavorite(long paramLong, ProductDetailListener paramProductDetailListener)
  {
    this.id = paramLong;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(4);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public boolean canUseEasyByStock(Product paramProduct)
  {
    String str = paramProduct.getProvinceStockContent();
    Boolean localBoolean = paramProduct.getProvinceStockFlag();
    if ((str != null) && (localBoolean != null)) {
      return localBoolean.booleanValue();
    }
    return false;
  }
  
  public void cancelFavorite(long paramLong, ProductDetailListener paramProductDetailListener)
  {
    this.id = paramLong;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(12);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void destroy()
  {
    this.product = null;
  }
  
  public Product getProduct()
  {
    return this.product;
  }
  
  public void queryCanEasybuy(ProductDetailListener paramProductDetailListener)
  {
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(6);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryCommentCount(long paramLong, SourceEntity paramSourceEntity, ProductDetailListener paramProductDetailListener)
  {
    this.id = paramLong;
    this.mSourceEntity = paramSourceEntity;
    this.isNeedReTryProductDetail = true;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(13);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryDirectStock(ProductDetailListener paramProductDetailListener)
  {
    this.product.setCheckNext(false);
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(3);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryProduct(long paramLong, SourceEntity paramSourceEntity, ProductDetailListener paramProductDetailListener)
  {
    this.id = paramLong;
    this.mSourceEntity = paramSourceEntity;
    this.isNeedReTryProductDetail = true;
    this.isClick = false;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(0);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryProvince(ProductDetailListener paramProductDetailListener)
  {
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(1);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryProvinceStock(ProductDetailListener paramProductDetailListener)
  {
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(2);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryThirdAddressCity(boolean paramBoolean, ProductDetailListener paramProductDetailListener)
  {
    this.isClick = paramBoolean;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(9);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryThirdAddressCounty(boolean paramBoolean, ProductDetailListener paramProductDetailListener)
  {
    this.isClick = paramBoolean;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(10);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryThirdAddressProvince(boolean paramBoolean, ProductDetailListener paramProductDetailListener)
  {
    this.isClick = paramBoolean;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(8);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void queryThirdAddressTown(boolean paramBoolean, ProductDetailListener paramProductDetailListener)
  {
    this.isClick = paramBoolean;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(11);
    localPageManageMyHandlerList.setListener(paramProductDetailListener);
    localPageManageMyHandlerList.start();
  }
  
  public void statClick(long paramLong)
  {
    this.id = paramLong;
    PageManageMyHandlerList localPageManageMyHandlerList = new PageManageMyHandlerList();
    localPageManageMyHandlerList.setEvent(5);
    localPageManageMyHandlerList.start();
  }
  
  public class PageManageMyHandlerList
    extends MyHandlerList
  {
    public static final int EVENT_ADD_FAVORITE = 4;
    public static final int EVENT_CANCEL_FAVORITE = 12;
    public static final int EVENT_COMMENT_COUNT = 13;
    public static final int EVENT_QUERY_DELIVER = 7;
    public static final int EVENT_QUERY_DIRECT_STOCK = 3;
    public static final int EVENT_QUERY_EASYBUY = 6;
    public static final int EVENT_QUERY_PRODUCT = 0;
    public static final int EVENT_QUERY_PROVINCE = 1;
    public static final int EVENT_QUERY_PROVINCE_STOCK = 2;
    public static final int EVENT_QUERY_THIRDADDRESS_CITY = 9;
    public static final int EVENT_QUERY_THIRDADDRESS_COUNTY = 10;
    public static final int EVENT_QUERY_THIRDADDRESS_PROVINCE = 8;
    public static final int EVENT_QUERY_THIRDADDRESS_TOWN = 11;
    public static final int EVENT_STAT_CLICK = 5;
    public int event = -1;
    private ProductDetailController.ProductDetailListener productDetailListener;
    
    public PageManageMyHandlerList()
    {
      super();
    }
    
    public PageManageMyHandlerList(boolean paramBoolean)
    {
      super();
    }
    
    private void QueryDatas(final String paramString1, String paramString2, final String paramString3, String paramString4, String paramString5, String paramString6, final boolean paramBoolean)
    {
      HttpGroup.OnAllListener local1 = new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
          if (localJSONObjectProxy == null) {
            return;
          }
          if (paramBoolean)
          {
            ProductDetailController.PageManageMyHandlerList.this.handleDatas(paramString1, localJSONObjectProxy);
            ProductDetailController.PageManageMyHandlerList.this.onFinish(1, true);
          }
          for (;;)
          {
            ProductDetailController.PageManageMyHandlerList.this.doNext();
            return;
            ProductDetailController.PageManageMyHandlerList.this.handleAllDatas(paramString1, localJSONObjectProxy, paramString3);
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          ProductDetailController.PageManageMyHandlerList.this.onFinish(1, false);
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      };
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("thirdAddress");
      localHttpSetting.putJsonParam("action", paramString1);
      localHttpSetting.putJsonParam("skuId", paramString2);
      localHttpSetting.putJsonParam("provinceId", paramString3);
      localHttpSetting.putJsonParam("cityId", paramString4);
      localHttpSetting.putJsonParam("countyId", paramString5);
      localHttpSetting.putJsonParam("townId", paramString6);
      localHttpSetting.setLocalFileCache(true);
      localHttpSetting.setLocalFileCacheTime(86400000L);
      localHttpSetting.setListener(local1);
      if (!paramBoolean) {
        localHttpSetting.setAlertErrorDialogType(2);
      }
      localHttpSetting.setNotifyUser(true);
      ProductDetailController.this.httpGroup.add(localHttpSetting);
    }
    
    private void handleAllDatas(String paramString1, JSONObjectProxy paramJSONObjectProxy, String paramString2)
    {
      for (;;)
      {
        int i3;
        int i1;
        int m;
        int j;
        try
        {
          if ("".equals(paramString1))
          {
            DefaultAddressMode localDefaultAddressMode;
            if (TextUtils.equals(paramString2, "0"))
            {
              ProductDetailController.this.product.setDefaultAddressModeList(DefaultAddressMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("defaultAddress"), 0));
              ArrayList localArrayList5 = ProductDetailController.this.product.getDefaultAddressModeList();
              localDefaultAddressMode = null;
              if (localArrayList5 != null)
              {
                int i4 = localArrayList5.size();
                localDefaultAddressMode = null;
                if (i4 > 0) {
                  localDefaultAddressMode = (DefaultAddressMode)localArrayList5.get(0);
                }
              }
              if (localDefaultAddressMode != null)
              {
                ProductDetailController.this.product.setProvinceID(localDefaultAddressMode.getProvinceId());
                ProductDetailController.this.product.setCityId(localDefaultAddressMode.getCityId());
                ProductDetailController.this.product.setCountyID(localDefaultAddressMode.getCountyId());
                ProductDetailController.this.product.setTownID(localDefaultAddressMode.getTownId());
                ProductDetailController.this.product.setStockFunction(localDefaultAddressMode.getFunctionId());
                ProductDetailController.this.product.setProvinceName(localDefaultAddressMode.getProvinceName());
                ProductDetailController.this.product.setCityName(localDefaultAddressMode.getCityName());
                ProductDetailController.this.product.setCountyName(localDefaultAddressMode.getCountyName());
                ProductDetailController.this.product.setTownName(localDefaultAddressMode.getTownName());
              }
            }
            else
            {
              ProductDetailController.this.product.setDefaultAddressMode(new DefaultAddressMode(paramJSONObjectProxy.getJSONObjectOrNull("defaultAddress"), 0, null));
              localDefaultAddressMode = ProductDetailController.this.product.getDefaultAddressMode();
              continue;
            }
          }
          else if ("getProvinces".equals(paramString1))
          {
            ProductDetailController.this.product.setProvinceModeList(AddressBaseMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("addressList"), 0));
            if (ProductDetailController.this.defaultProvinceId != null)
            {
              ArrayList localArrayList4 = ProductDetailController.this.product.getProvinceModeList();
              int i2 = localArrayList4.size();
              if ((localArrayList4 != null) && (i2 > 0))
              {
                i3 = 0;
                if (i3 < i2)
                {
                  AddressBaseMode localAddressBaseMode4 = (AddressBaseMode)localArrayList4.get(i3);
                  if (!ProductDetailController.this.defaultProvinceId.equals(localAddressBaseMode4.getId())) {
                    break label1147;
                  }
                  ProductDetailController.this.product.setProvinceID(localAddressBaseMode4.getId());
                  ProductDetailController.this.product.setProvinceName(localAddressBaseMode4.getName());
                  ProductDetailController.this.product.setStockFunction(localAddressBaseMode4.getFunctionId());
                }
              }
            }
          }
          else if ("getCitys".equals(paramString1))
          {
            ProductDetailController.this.product.setCityModeList(AddressBaseMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("addressList"), 0));
            ArrayList localArrayList3 = ProductDetailController.this.product.getCityModeList();
            int n = localArrayList3.size();
            if ((localArrayList3 != null) && (n > 0)) {
              if ((!TextUtils.isEmpty(ProductDetailController.this.defaultCityId)) && (!TextUtils.equals(ProductDetailController.this.defaultCityId, "0")))
              {
                i1 = 0;
                if (i1 < n)
                {
                  AddressBaseMode localAddressBaseMode3 = (AddressBaseMode)localArrayList3.get(i1);
                  if (!ProductDetailController.this.defaultCityId.equals(localAddressBaseMode3.getId())) {
                    break label1153;
                  }
                  ProductDetailController.this.product.setCityId(localAddressBaseMode3.getId());
                  ProductDetailController.this.product.setStockFunction(localAddressBaseMode3.getFunctionId());
                  ProductDetailController.this.product.setCityName(localAddressBaseMode3.getName());
                }
              }
              else
              {
                ProductDetailController.this.product.setCityName(((AddressBaseMode)localArrayList3.get(0)).getName());
                ProductDetailController.this.product.setCityId(((AddressBaseMode)localArrayList3.get(0)).getId());
                ProductDetailController.this.product.setStockFunction(((AddressBaseMode)localArrayList3.get(0)).getFunctionId());
              }
            }
          }
          else if ("getCountys".equals(paramString1))
          {
            ProductDetailController.this.product.setCountyModeList(AddressBaseMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("addressList"), 0));
            ArrayList localArrayList2 = ProductDetailController.this.product.getCountyModeList();
            int k = localArrayList2.size();
            if ((localArrayList2 != null) && (k > 0)) {
              if ((!TextUtils.isEmpty(ProductDetailController.this.defaultCountyId)) && (!TextUtils.equals(ProductDetailController.this.defaultCountyId, "0")))
              {
                m = 0;
                if (m < k)
                {
                  AddressBaseMode localAddressBaseMode2 = (AddressBaseMode)localArrayList2.get(m);
                  if (!ProductDetailController.this.defaultCountyId.equals(localAddressBaseMode2.getId())) {
                    break label1159;
                  }
                  ProductDetailController.this.product.setCountyID(localAddressBaseMode2.getId());
                  ProductDetailController.this.product.setCountyName(localAddressBaseMode2.getName());
                  ProductDetailController.this.product.setStockFunction(localAddressBaseMode2.getFunctionId());
                }
              }
              else
              {
                ProductDetailController.this.product.setCountyName(((AddressBaseMode)localArrayList2.get(0)).getName());
                ProductDetailController.this.product.setStockFunction(((AddressBaseMode)localArrayList2.get(0)).getFunctionId());
                ProductDetailController.this.product.setCountyID(((AddressBaseMode)localArrayList2.get(0)).getId());
              }
            }
          }
          else if ("getTowns".equals(paramString1))
          {
            ProductDetailController.this.product.setTownModeList(AddressBaseMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("addressList"), 0));
            ArrayList localArrayList1 = ProductDetailController.this.product.getTownModeList();
            int i = localArrayList1.size();
            if ((localArrayList1 != null) && (i > 0)) {
              if ((!TextUtils.isEmpty(ProductDetailController.this.defaultTownId)) && (!TextUtils.equals(ProductDetailController.this.defaultTownId, "0")))
              {
                j = 0;
                if (j < i)
                {
                  AddressBaseMode localAddressBaseMode1 = (AddressBaseMode)localArrayList1.get(j);
                  if (!ProductDetailController.this.defaultTownId.equals(localAddressBaseMode1.getId())) {
                    break label1165;
                  }
                  ProductDetailController.this.product.setTownID(localAddressBaseMode1.getId());
                  ProductDetailController.this.product.setTownName(localAddressBaseMode1.getName());
                  ProductDetailController.this.product.setStockFunction(localAddressBaseMode1.getFunctionId());
                }
              }
              else
              {
                ProductDetailController.this.product.setTownName(((AddressBaseMode)localArrayList1.get(0)).getName());
                ProductDetailController.this.product.setStockFunction(((AddressBaseMode)localArrayList1.get(0)).getFunctionId());
                ProductDetailController.this.product.setTownID(((AddressBaseMode)localArrayList1.get(0)).getId());
              }
            }
          }
          return;
        }
        catch (Exception localException)
        {
          return;
        }
        label1147:
        i3++;
        continue;
        label1153:
        i1++;
        continue;
        label1159:
        m++;
        continue;
        label1165:
        j++;
      }
    }
    
    private void handleDatas(String paramString, JSONObjectProxy paramJSONObjectProxy)
    {
      try
      {
        if ("getProvinces".equals(paramString))
        {
          ProductDetailController.this.product.setProvinceModeList(AddressBaseMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("addressList"), 0));
          return;
        }
        if ("getCitys".equals(paramString))
        {
          ProductDetailController.this.product.setCityModeList(AddressBaseMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("addressList"), 0));
          return;
        }
        if ("getCountys".equals(paramString))
        {
          ProductDetailController.this.product.setCountyModeList(AddressBaseMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("addressList"), 0));
          return;
        }
        if ("getTowns".equals(paramString)) {
          ProductDetailController.this.product.setTownModeList(AddressBaseMode.toList(paramJSONObjectProxy.getJSONArrayOrNull("addressList"), 0));
        }
        return;
      }
      catch (Exception localException) {}
    }
    
    private void handleNewBusiness(String paramString1, String paramString2)
    {
      if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)) && (!TextUtils.equals(paramString1, paramString2))) {}
      try
      {
        long l = Long.valueOf(paramString2).longValue();
        ProductDetailController.this.product.setId(Long.valueOf(l));
        ProductDetailController.this.product.setShowId(Long.valueOf(l));
        onFinish(11, true);
        return;
      }
      catch (Exception localException) {}
      onFinish(1, true);
      return;
    }
    
    private void init()
    {
      add(new QueryProductMyHandler(null));
      add(new QueryCruxProductMyHandler(null));
      add(new QueryThirdAddressProvinceMyHandler(null));
      add(new QueryThirdAddressCityMyHandler(null));
      add(new QueryThirdAddressCountyMyHandler(null));
      add(new QueryThirdAddressTownMyHandler(null));
      add(new QueryDirectStockMyHandler(null));
      add(new QueryCommentCountMyHandler(null));
      add(new AddFavoriteMyHandler(null));
      add(new CancelFavoriteMyHandler(null));
      add(new QueryProvinceMyHandler(null));
      add(new StatClickMyHandler(null));
      add(new FinalTask(null));
    }
    
    private void onFinish(int paramInt, boolean paramBoolean)
    {
      if (this.productDetailListener != null) {
        this.productDetailListener.onFinish(ProductDetailController.this.product, paramInt, paramBoolean);
      }
    }
    
    public void setArg1(Object paramObject) {}
    
    public void setEvent(int paramInt)
    {
      this.event = paramInt;
    }
    
    public void setListener(ProductDetailController.ProductDetailListener paramProductDetailListener)
    {
      this.productDetailListener = paramProductDetailListener;
    }
    
    public void start()
    {
      if (this.event == -1) {
        return;
      }
      init();
      super.start();
    }
    
    private class AddFavoriteMyHandler
      implements MyHandlerList.MyHandler
    {
      private AddFavoriteMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 4)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("addFavorite");
        localHttpSetting.putJsonParam("wareId", ProductDetailController.this.id);
        localHttpSetting.putJsonParam("isNewText", Boolean.valueOf(true));
        localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
        localHttpSetting.setListener(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            String str = localJSONObjectProxy.getStringOrNull("addFavorite");
            Boolean localBoolean = localJSONObjectProxy.getBooleanOrNull("flag");
            if (!TextUtils.isEmpty(str)) {
              ProductDetailController.this.product.setAddFavoriteMsg(str);
            }
            if ((localBoolean != null) && (localBoolean.booleanValue())) {
              ProductDetailController.this.product.setFavorited(true);
            }
            ProductDetailController.PageManageMyHandlerList.this.doNext();
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            ProductDetailController.PageManageMyHandlerList.this.doNext();
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        localHttpSetting.setNotifyUser(true);
        ProductDetailController.this.httpGroup.add(localHttpSetting);
      }
    }
    
    private class CancelFavoriteMyHandler
      implements MyHandlerList.MyHandler
    {
      private CancelFavoriteMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 12)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("cancelFavorite");
        localHttpSetting.putJsonParam("wareId", ProductDetailController.this.id);
        localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
        localHttpSetting.setListener(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            String str = localJSONObjectProxy.getStringOrNull("message");
            Boolean localBoolean = localJSONObjectProxy.getBooleanOrNull("flag");
            if (!TextUtils.isEmpty(str)) {
              ProductDetailController.this.product.setAddFavoriteMsg(str);
            }
            if ((localBoolean != null) && (localBoolean.booleanValue())) {
              ProductDetailController.this.product.setFavorited(false);
            }
            ProductDetailController.PageManageMyHandlerList.this.doNext();
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            ProductDetailController.PageManageMyHandlerList.this.doNext();
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        localHttpSetting.setNotifyUser(true);
        ProductDetailController.this.httpGroup.add(localHttpSetting);
      }
    }
    
    private class FinalTask
      implements MyHandlerList.MyHandler
    {
      private FinalTask() {}
      
      public void run()
      {
        ProductDetailController.PageManageMyHandlerList.this.onFinish(0, true);
      }
    }
    
    private class QueryCanEasyBuyWareMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryCanEasyBuyWareMyHandler() {}
      
      public void run()
      {
        if ((ProductDetailController.PageManageMyHandlerList.this.event != 0) && (ProductDetailController.PageManageMyHandlerList.this.event != 6))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if (ProductDetailController.this.product.getMiaoSha().booleanValue())
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if ((!LoginUserBase.hasLogin()) || (!Constants.canSeeEasyBuyBtn(MyApplication.getInstance().getCurrentMyActivity())) || (!ProductDetailController.this.canUseEasyByStock(ProductDetailController.this.product)))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("wareId", ProductDetailController.this.id);
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("easyBuySwitch");
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.setEffect(0);
          localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
              if (localJSONObjectProxy != null) {}
              try
              {
                if (localJSONObjectProxy.toString().contains("easyBuy"))
                {
                  if ((localJSONObjectProxy.getString("easyBuy") == null) || (localJSONObjectProxy.getString("easyBuy").compareTo("true") != 0)) {
                    break label74;
                  }
                  ProductDetailController.this.product.setCanEasyBuy(true);
                }
                for (;;)
                {
                  ProductDetailController.PageManageMyHandlerList.this.onFinish(4, true);
                  return;
                  label74:
                  ProductDetailController.this.product.setCanEasyBuy(false);
                }
              }
              catch (Exception localException)
              {
                for (;;)
                {
                  localException.printStackTrace();
                }
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              ProductDetailController.PageManageMyHandlerList.this.onFinish(4, false);
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          ProductDetailController.PageManageMyHandlerList.this.doNext();
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
    
    private class QueryCommentCountMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryCommentCountMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 13)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("wareId", ProductDetailController.this.id);
          label58:
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("commentCount");
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.setEffect(0);
          localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("scoreList");
              ProductDetailController.this.product.setCommentCountList(CommentCount.toList(localJSONArrayPoxy, 0));
              ProductDetailController.PageManageMyHandlerList.this.onFinish(6, true);
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              ProductDetailController.PageManageMyHandlerList.this.onFinish(6, false);
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          return;
        }
        catch (JSONException localJSONException)
        {
          break label58;
        }
      }
    }
    
    private class QueryConsultationCountMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryConsultationCountMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 0)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("wareId", ProductDetailController.this.id);
          label56:
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("consultationCount");
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.setEffect(0);
          localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              ProductDetailController.this.product.setConsultationCount(paramAnonymousHttpResponse.getJSONObject().getStringOrNull("totalCount"));
              ProductDetailController.PageManageMyHandlerList.this.onFinish(7, true);
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              ProductDetailController.PageManageMyHandlerList.this.onFinish(7, false);
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        catch (JSONException localJSONException)
        {
          break label56;
        }
      }
    }
    
    private class QueryCruxProductMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryCruxProductMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 0)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if (ProductDetailController.this.needDelHistoryId != 0L) {
          HistoryTable.delHistoryById(ProductDetailController.this.needDelHistoryId);
        }
        final String str = ProductDetailController.this.id;
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("skuId", str);
          if (ProductDetailController.this.mSourceEntity != null)
          {
            localJSONObject.put("source_type", ProductDetailController.this.mSourceEntity.getSourceType());
            localJSONObject.put("source_value", ProductDetailController.this.mSourceEntity.getSourceValue());
          }
          label139:
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("skuDetail");
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.setListener(new HttpGroup.OnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              try
              {
                JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject().getJSONObject("basicInfo");
                if (ProductDetailController.this.product == null) {
                  ProductDetailController.this.product = new Product(localJSONObjectProxy, null, 28);
                }
                for (;;)
                {
                  label52:
                  ProductDetailController.this.product.setCheckNext(false);
                  ProductDetailCruxBasicInfo localProductDetailCruxBasicInfo = ProductDetailController.this.product.getProductDetailCruxBasicInfo();
                  ProductDetailController.this.product.setFavorited(localProductDetailCruxBasicInfo.isStore().booleanValue());
                  ProductDetailController.this.product.setPostByJd(localProductDetailCruxBasicInfo.getIsPostByJd());
                  ProductDetailController.this.product.setDeliver(localProductDetailCruxBasicInfo.getService());
                  ProductDetailController.this.product.setPromotionInfo(localProductDetailCruxBasicInfo.getProInfo());
                  ProductDetailController.this.product.setPromotionTitle(localProductDetailCruxBasicInfo.getProTitle());
                  ProductDetailBasicInfo localProductDetailBasicInfo = ProductDetailController.this.product.getProductDetailBasicInfo();
                  if (localProductDetailBasicInfo != null)
                  {
                    String str = localProductDetailBasicInfo.getWareId();
                    ProductDetailController.PageManageMyHandlerList.this.handleNewBusiness(str, str);
                  }
                  ProductDetailController.PageManageMyHandlerList.this.doNext();
                  return;
                  ProductDetailController.this.product.update(localJSONObjectProxy, null, 28);
                }
              }
              catch (JSONException localJSONException)
              {
                break label52;
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          localHttpSetting.setNotifyUser(true);
          localHttpSetting.setAlertErrorDialogType(2);
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          return;
        }
        catch (JSONException localJSONException)
        {
          break label139;
        }
      }
    }
    
    private class QueryDeliverMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryDeliverMyHandler() {}
      
      public void run()
      {
        if ((ProductDetailController.PageManageMyHandlerList.this.event != 0) && (ProductDetailController.PageManageMyHandlerList.this.event != 3))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("vender");
        localHttpSetting.putJsonParam("skuId", ProductDetailController.this.id);
        localHttpSetting.setEffect(0);
        localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            ProductDetailController.this.product.update(localJSONObjectProxy, null, 19);
            ProductDetailController.PageManageMyHandlerList.this.onFinish(9, true);
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            ProductDetailController.PageManageMyHandlerList.this.onFinish(9, false);
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        ProductDetailController.this.httpGroup.add(localHttpSetting);
        ProductDetailController.PageManageMyHandlerList.this.doNext();
      }
    }
    
    private class QueryDirectStockMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryDirectStockMyHandler() {}
      
      public void run()
      {
        if ((ProductDetailController.PageManageMyHandlerList.this.event != 3) && (ProductDetailController.PageManageMyHandlerList.this.event != 0))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        final String str1 = ProductDetailController.this.product.getStockFunction();
        if ((TextUtils.isEmpty(str1)) || (ProductDetailController.this.product.getCheckNext()))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.OnAllListener local1 = new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            if (localJSONObjectProxy == null) {
              return;
            }
            ProductDetailController.this.product.setStockFunction("");
            if (!"stock".equals(str1)) {
              ProductDetailController.this.product.setJdPrice(localJSONObjectProxy.getStringOrNull("jdPrice"));
            }
            ProductDetailController.this.product.setProvinceStockContent(localJSONObjectProxy.getStringOrNull("stockStatus"));
            ProductDetailController.this.product.setDeliveryFlag(localJSONObjectProxy.getStringOrNull("flag"));
            ProductDetailController.this.product.setDeliveryCommentFlag(localJSONObjectProxy.getStringOrNull("deliveryFlag"));
            String str1 = localJSONObjectProxy.getStringOrNull("skuId");
            if (!TextUtils.isEmpty(str1)) {
              ProductDetailController.this.product.setSkuId(str1);
            }
            String str2 = ProductDetailController.this.product.getDeliveryFlag();
            if ((!TextUtils.isEmpty(str2)) && ("true".equals(str2))) {
              ProductDetailController.this.product.setProvinceStockFlag(Boolean.valueOf(true));
            }
            for (;;)
            {
              String str3 = ProductDetailController.this.product.getSkuId();
              ProductDetailController.PageManageMyHandlerList.this.handleNewBusiness(this.val$skuOld, str3);
              ProductDetailController.PageManageMyHandlerList.this.doNext();
              return;
              ProductDetailController.this.product.setProvinceStockFlag(Boolean.valueOf(false));
            }
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            ProductDetailController.PageManageMyHandlerList.this.onFinish(1, false);
            ProductDetailController.PageManageMyHandlerList.this.doNext();
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        };
        String str2 = ProductDetailController.this.product.getProvinceID();
        String str3 = ProductDetailController.this.product.getCityId();
        String str4 = ProductDetailController.this.product.getCountyID();
        String str5 = ProductDetailController.this.product.getTownID();
        String str6 = "";
        String str7 = "";
        if ("stock".equals(str1))
        {
          str6 = "skuId";
          str7 = "provinceId";
        }
        for (;;)
        {
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId(str1);
          localHttpSetting.putJsonParam(str6, ProductDetailController.this.product.getId());
          if (str2 == null) {
            str2 = "0";
          }
          localHttpSetting.putJsonParam(str7, str2);
          if (str3 == null) {
            str3 = "0";
          }
          localHttpSetting.putJsonParam("idCity", str3);
          if (str4 == null) {
            str4 = "0";
          }
          localHttpSetting.putJsonParam("idCounty", str4);
          if (str5 == null) {
            str5 = "0";
          }
          localHttpSetting.putJsonParam("idTown", str5);
          localHttpSetting.setListener(local1);
          localHttpSetting.setNotifyUser(true);
          if (ProductDetailController.PageManageMyHandlerList.this.event == 3) {
            localHttpSetting.setEffect(0);
          }
          if (!ProductDetailController.this.isClick) {
            localHttpSetting.setAlertErrorDialogType(2);
          }
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          return;
          if ("directStock".equals(str1))
          {
            str6 = "wareId";
            str7 = "idProvince";
          }
        }
      }
    }
    
    private class QueryOptionsMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryOptionsMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 0)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("wareId", ProductDetailController.this.id);
          label56:
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("sku");
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.setEffect(0);
          localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              ProductDetailController.this.product.update(paramAnonymousHttpResponse.getJSONObject(), null, 15);
              ProductDetailController.PageManageMyHandlerList.this.onFinish(3, true);
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              ProductDetailController.PageManageMyHandlerList.this.onFinish(3, false);
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        catch (JSONException localJSONException)
        {
          break label56;
        }
      }
    }
    
    private class QueryOrderCommentCountMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryOrderCommentCountMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 0)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("wareId", ProductDetailController.this.id);
          label56:
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("orderCommentCount");
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.setEffect(0);
          localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              ProductDetailController.this.product.setOrderCommentCount(paramAnonymousHttpResponse.getJSONObject().getStringOrNull("totalCount"));
              ProductDetailController.PageManageMyHandlerList.this.onFinish(8, true);
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              ProductDetailController.PageManageMyHandlerList.this.onFinish(8, false);
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        catch (JSONException localJSONException)
        {
          break label56;
        }
      }
    }
    
    private class QueryPacksMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryPacksMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 0)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("wareId", ProductDetailController.this.id);
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setPost(true);
          localHttpSetting.setFunctionId("packs");
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.setEffect(0);
          localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              for (;;)
              {
                try
                {
                  JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("data");
                  if ((localJSONArrayPoxy == null) || (localJSONArrayPoxy.length() <= 0)) {
                    continue;
                  }
                  ProductDetailController.this.product.setHasPacks(true);
                }
                catch (Exception localException)
                {
                  localException.printStackTrace();
                  continue;
                }
                ProductDetailController.PageManageMyHandlerList.this.onFinish(5, true);
                return;
                ProductDetailController.this.product.setHasPacks(false);
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              ProductDetailController.PageManageMyHandlerList.this.onFinish(5, false);
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          ProductDetailController.PageManageMyHandlerList.this.doNext();
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
    
    private class QueryProductMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryProductMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 0)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if (!ProductDetailController.this.isNeedReTryProductDetail)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        ProductDetailController.this.isNeedReTryProductDetail = false;
        if (ProductDetailController.this.needDelHistoryId != 0L) {
          HistoryTable.delHistoryById(ProductDetailController.this.needDelHistoryId);
        }
        HistoryTable.insertOrUpdateBrowseHistory(ProductDetailController.this.id);
        JSONObject localJSONObject = new JSONObject();
        String str = ProductDetailController.this.id;
        try
        {
          localJSONObject.put("skuId", str);
          if (ProductDetailController.this.mSourceEntity != null)
          {
            localJSONObject.put("source_type", ProductDetailController.this.mSourceEntity.getSourceType());
            localJSONObject.put("source_value", ProductDetailController.this.mSourceEntity.getSourceValue());
          }
          label197:
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("newSkuDetail");
          localHttpSetting.setJsonParams(localJSONObject);
          localHttpSetting.setListener(new HttpGroup.OnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              for (;;)
              {
                try
                {
                  localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
                  if (ProductDetailController.this.product != null) {
                    continue;
                  }
                  ProductDetailController.this.product = new Product(localJSONObjectProxy, null, 3);
                  DefaultAddressMode localDefaultAddressMode = ProductDetailController.this.product.getProductDetailDefaultAddress();
                  ProductDetailController.this.product.setProvinceName(localDefaultAddressMode.getProvinceName());
                  ProductDetailController.this.product.setCityName(localDefaultAddressMode.getCityName());
                  ProductDetailController.this.product.setCountyName(localDefaultAddressMode.getCountyName());
                  ProductDetailController.this.product.setTownName(localDefaultAddressMode.getTownName());
                  ProductDetailBasicInfo localProductDetailBasicInfo = ProductDetailController.this.product.getProductDetailBasicInfo();
                  ProductDetailController.this.product.setProvinceStockContent(localProductDetailBasicInfo.getStock());
                  ProductDetailController.this.product.setProvinceStockFlag(Boolean.valueOf(localProductDetailBasicInfo.isCartFlag()));
                  ProductDetailPrice localProductDetailPrice1 = ProductDetailController.this.product.getProductDetailJprice();
                  ProductDetailController.this.product.setJdPrice(localProductDetailPrice1.getValue());
                  ProductDetailPrice localProductDetailPrice2 = ProductDetailController.this.product.getProductDetailMprice();
                  ProductDetailController.this.product.setShowMarketPrice(localProductDetailPrice2.getDisplay());
                }
                catch (Exception localException)
                {
                  JSONObjectProxy localJSONObjectProxy;
                  continue;
                }
                ProductDetailController.PageManageMyHandlerList.this.doNext();
                return;
                ProductDetailController.this.product.update(localJSONObjectProxy, null, 3);
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          localHttpSetting.setNotifyUser(true);
          localHttpSetting.setAlertErrorDialogType(2);
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          return;
        }
        catch (JSONException localJSONException)
        {
          break label197;
        }
      }
    }
    
    private class QueryPromotionInfoMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryPromotionInfoMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 0)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("promotionInfo");
        localHttpSetting.putJsonParam("wareId", ProductDetailController.this.product.getShowId());
        localHttpSetting.setEffect(0);
        localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            ProductDetailController.this.product.update(localJSONObjectProxy, null, 18);
            ProductDetailController.PageManageMyHandlerList.this.onFinish(2, true);
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            ProductDetailController.PageManageMyHandlerList.this.onFinish(2, false);
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        ProductDetailController.this.httpGroup.add(localHttpSetting);
        ProductDetailController.PageManageMyHandlerList.this.doNext();
      }
    }
    
    private class QueryProvinceMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryProvinceMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 1)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if ((ProductDetailController.this.product.getProvinceList() != null) && (ProductDetailController.this.product.getProvinceList().size() > 0))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.OnAllListener local1 = new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            try
            {
              JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArray("provinces");
              if (localJSONArrayPoxy != null) {
                ProductDetailController.this.product.setProvinceList(Province.toList(localJSONArrayPoxy, 0));
              }
            }
            catch (JSONException localJSONException)
            {
              label35:
              break label35;
            }
            ProductDetailController.PageManageMyHandlerList.this.doNext();
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            ProductDetailController.PageManageMyHandlerList.this.doNext();
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        };
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("selectedProvince");
        localHttpSetting.setListener(local1);
        localHttpSetting.setLocalFileCache(true);
        localHttpSetting.setLocalFileCacheTime(259200000L);
        localHttpSetting.setNotifyUser(true);
        ProductDetailController.this.httpGroup.add(localHttpSetting);
      }
    }
    
    private class QueryProvinceStockMyHandler
      implements MyHandlerList.MyHandler
    {
      private QueryProvinceStockMyHandler() {}
      
      public void run()
      {
        if ((ProductDetailController.PageManageMyHandlerList.this.event != 0) && (ProductDetailController.PageManageMyHandlerList.this.event != 2))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if (ProductDetailController.this.product.getProvinceStockMode().intValue() == 1)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if (ProductDetailController.PageManageMyHandlerList.this.event == 2)
        {
          ProductDetailController.this.setProvinceIDToSharedPreferences(ProductDetailController.this.product.getProvinceID());
          ProductDetailController.this.setProvinceNameToSharedPreferences(ProductDetailController.this.product.getProvinceName());
        }
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("skuId", ProductDetailController.this.id);
          localJSONObject.put("provinceId", ProductDetailController.this.product.getProvinceID());
          label172:
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("stock");
          localHttpSetting.setJsonParams(localJSONObject);
          if (ProductDetailController.PageManageMyHandlerList.this.event == 2) {
            localHttpSetting.setEffect(0);
          }
          localHttpSetting.setListener(new HttpGroup.OnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
              ProductDetailController.this.product.setProvinceStockContent(localJSONObjectProxy.getStringOrNull("stockStatus"));
              ProductDetailController.this.product.setProvinceStockFlag(localJSONObjectProxy.getBooleanOrNull("flag"));
              ProductDetailController.PageManageMyHandlerList.this.doNext();
              ProductDetailController.PageManageMyHandlerList.this.onFinish(1, true);
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              ProductDetailController.PageManageMyHandlerList.this.doNext();
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          localHttpSetting.setNotifyUser(true);
          localHttpSetting.setAlertErrorDialogType(2);
          ProductDetailController.this.httpGroup.add(localHttpSetting);
          return;
        }
        catch (JSONException localJSONException)
        {
          break label172;
        }
      }
    }
    
    private class QueryThirdAddressCityMyHandler
      implements MyHandlerList.MyHandler
    {
      String action = "";
      String city = "0";
      String county = "0";
      String province = "0";
      String town = "0";
      
      private QueryThirdAddressCityMyHandler() {}
      
      public void run()
      {
        if ((ProductDetailController.PageManageMyHandlerList.this.event != 9) && (ProductDetailController.PageManageMyHandlerList.this.event != 0))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if ((!TextUtils.isEmpty(ProductDetailController.this.product.getStockFunction())) || (!ProductDetailController.this.product.getCheckNext()))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        this.action = "getCitys";
        this.province = ProductDetailController.this.product.getProvinceID();
        ProductDetailController.PageManageMyHandlerList.this.QueryDatas(this.action, ProductDetailController.this.product.getSkuId(), this.province, this.city, this.county, this.town, ProductDetailController.this.isClick);
      }
    }
    
    private class QueryThirdAddressCountyMyHandler
      implements MyHandlerList.MyHandler
    {
      String action = "";
      String city = "0";
      String county = "0";
      String province = "0";
      String town = "0";
      
      private QueryThirdAddressCountyMyHandler() {}
      
      public void run()
      {
        if ((ProductDetailController.PageManageMyHandlerList.this.event != 10) && (ProductDetailController.PageManageMyHandlerList.this.event != 0))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if ((!TextUtils.isEmpty(ProductDetailController.this.product.getStockFunction())) || (!ProductDetailController.this.product.getCheckNext()))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        this.action = "getCountys";
        this.city = ProductDetailController.this.product.getCityId();
        this.province = ProductDetailController.this.product.getProvinceID();
        ProductDetailController.PageManageMyHandlerList.this.QueryDatas(this.action, ProductDetailController.this.product.getSkuId(), this.province, this.city, this.county, this.town, ProductDetailController.this.isClick);
        ProductDetailController.this.product.setTownName("");
      }
    }
    
    private class QueryThirdAddressProvinceMyHandler
      implements MyHandlerList.MyHandler
    {
      String action = "";
      String city = "0";
      String county = "0";
      String province = "0";
      String town = "0";
      
      private QueryThirdAddressProvinceMyHandler() {}
      
      public void run()
      {
        if ((ProductDetailController.PageManageMyHandlerList.this.event != 8) && (ProductDetailController.PageManageMyHandlerList.this.event != 0))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if ((!TextUtils.isEmpty(ProductDetailController.this.product.getStockFunction())) || (!ProductDetailController.this.product.getCheckNext()))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        ProductDetailController.this.defaultProvinceId = CommonUtil.getProvinceIDFromSharedPreferences();
        ProductDetailController.this.defaultCityId = CommonUtil.getCityIDFromSharedPreferences();
        ProductDetailController.this.defaultCountyId = CommonUtil.getDistrictIdFromSharedPreferences();
        ProductDetailController.this.defaultTownId = CommonUtil.getTownIdFromSharedPreferences();
        if ((TextUtils.isEmpty(ProductDetailController.this.defaultProvinceId)) && (LocManager.isLocateSuccess))
        {
          ProductDetailController.this.defaultProvinceId = LocManager.provinceId;
          ProductDetailController.this.defaultCityId = LocManager.cityId;
          ProductDetailController.this.defaultCountyId = LocManager.districtId;
          ProductDetailController.this.defaultTownId = "0";
        }
        if (ProductDetailController.this.isClick) {
          this.action = "getProvinces";
        }
        for (;;)
        {
          ProductDetailController.PageManageMyHandlerList.this.QueryDatas(this.action, ProductDetailController.this.product.getSkuId(), this.province, this.city, this.county, this.town, ProductDetailController.this.isClick);
          return;
          if (!TextUtils.isEmpty(ProductDetailController.this.defaultProvinceId))
          {
            this.action = "";
            this.province = ProductDetailController.this.defaultProvinceId;
            this.city = ProductDetailController.this.defaultCityId;
            this.county = ProductDetailController.this.defaultCountyId;
            this.town = ProductDetailController.this.defaultTownId;
          }
          else
          {
            this.action = "";
          }
        }
      }
    }
    
    private class QueryThirdAddressTownMyHandler
      implements MyHandlerList.MyHandler
    {
      String action = "";
      String city = "0";
      String county = "0";
      String province = "0";
      String town = "0";
      
      private QueryThirdAddressTownMyHandler() {}
      
      public void run()
      {
        if ((ProductDetailController.PageManageMyHandlerList.this.event != 11) && (ProductDetailController.PageManageMyHandlerList.this.event != 0))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        if ((!TextUtils.isEmpty(ProductDetailController.this.product.getStockFunction())) || (!ProductDetailController.this.product.getCheckNext()))
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        this.action = "getTowns";
        this.county = ProductDetailController.this.product.getCountyID();
        this.city = ProductDetailController.this.product.getCityId();
        this.province = ProductDetailController.this.product.getProvinceID();
        ProductDetailController.PageManageMyHandlerList.this.QueryDatas(this.action, ProductDetailController.this.product.getSkuId(), this.province, this.city, this.county, this.town, ProductDetailController.this.isClick);
      }
    }
    
    private class StatClickMyHandler
      implements MyHandlerList.MyHandler
    {
      private StatClickMyHandler() {}
      
      public void run()
      {
        if (ProductDetailController.PageManageMyHandlerList.this.event != 5)
        {
          ProductDetailController.PageManageMyHandlerList.this.doNext();
          return;
        }
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("click");
        localHttpSetting.putJsonParam("wareId", ProductDetailController.this.id);
        localHttpSetting.putJsonParam("type", "1");
        localHttpSetting.setEffect(0);
        ProductDetailController.this.httpGroup.add(localHttpSetting);
        ProductDetailController.PageManageMyHandlerList.this.doNext();
      }
    }
  }
  
  public static abstract interface ProductDetailListener
  {
    public static final int RESULT_CODE_0 = 0;
    public static final int RESULT_CODE_11_DETAIL_ALL = 11;
    public static final int RESULT_CODE_1_DETAIL = 10;
    public static final int RESULT_CODE_1_DETAIL_STOCK = 1;
    public static final int RESULT_CODE_2_PROMOTION = 2;
    public static final int RESULT_CODE_3_OPTION = 3;
    public static final int RESULT_CODE_4_EASYBUY = 4;
    public static final int RESULT_CODE_5_PACKS = 5;
    public static final int RESULT_CODE_6_COMMENT_COUNT = 6;
    public static final int RESULT_CODE_7_CONSULTATION_COUNT = 7;
    public static final int RESULT_CODE_8_ORDER_COMMENT_COUNT = 8;
    public static final int RESULT_CODE_9_DELIVER = 9;
    
    public abstract void onFinish(Product paramProduct, int paramInt, boolean paramBoolean);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.controller.ProductDetailController
 * JD-Core Version:    0.7.0.1
 */