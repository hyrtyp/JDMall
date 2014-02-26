package com.jingdong.app.mall.product;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.controller.ProductDetailController;
import com.jingdong.common.controller.ProductDetailController.ProductDetailListener;
import com.jingdong.common.entity.AddressBaseMode;
import com.jingdong.common.entity.Product;
import java.util.ArrayList;

public class ProductThridAddress
{
  private static final String CONST_NULL = null;
  private static final long DELAY_TIME = 600L;
  private static final String TAG = ProductThridAddress.class.getSimpleName();
  private String cityID = null;
  private ArrayList<AddressBaseMode> cityList = null;
  private DialogInterface.OnClickListener cityOnClickListener = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      String str;
      if (System.currentTimeMillis() - ProductThridAddress.this.clickTime > 600L)
      {
        ProductThridAddress.this.clickTime = System.currentTimeMillis();
        if (!ProductThridAddress.this.isCityClicked)
        {
          ProductThridAddress.this.isCityClicked = true;
          ProductThridAddress.this.mCitySelectId = paramAnonymousInt;
          ProductThridAddress.this.cityID = ((AddressBaseMode)ProductThridAddress.this.cityList.get(ProductThridAddress.this.mCitySelectId)).getId();
          ProductThridAddress.this.mProduct.setCityId(ProductThridAddress.this.cityID);
          ProductThridAddress.this.mProduct.setCityName(((AddressBaseMode)ProductThridAddress.this.cityList.get(ProductThridAddress.this.mCitySelectId)).getName());
          ProductThridAddress.this.mProduct.setStockFunction(((AddressBaseMode)ProductThridAddress.this.cityList.get(ProductThridAddress.this.mCitySelectId)).getFunctionId());
          ProductThridAddress.this.mProduct.setCountyID("0");
          ProductThridAddress.this.mProduct.setCountyName("");
          ProductThridAddress.this.mProduct.setTownID("0");
          ProductThridAddress.this.mProduct.setTownName("");
          str = ((AddressBaseMode)ProductThridAddress.this.cityList.get(ProductThridAddress.this.mCitySelectId)).getFlag();
          if (!"1".equals(str)) {
            break label296;
          }
          CommonUtil.setProvinceIDToSharedPreferences(ProductThridAddress.this.provinceID);
          CommonUtil.setCityIDToSharedPreferences(ProductThridAddress.this.cityID);
          CommonUtil.setDistrictIdToSharedPreferences(ProductThridAddress.CONST_NULL);
          CommonUtil.setTownIdToSharedPreferences(ProductThridAddress.CONST_NULL);
          ProductThridAddress.this.handleStock(true);
          ProductThridAddress.this.closeDialog();
        }
      }
      label296:
      while (!"0".equals(str)) {
        return;
      }
      ProductThridAddress.this.mMyActivity.post(new Runnable()
      {
        public void run()
        {
          ProductThridAddress.this.mProductDetailController.queryThirdAddressCounty(true, new ProductDetailController.ProductDetailListener()
          {
            public void onFinish(Product paramAnonymous3Product, int paramAnonymous3Int, boolean paramAnonymous3Boolean)
            {
              ProductThridAddress.this.isCityClicked = false;
              if (!paramAnonymous3Boolean) {
                ProductThridAddress.this.closeDialog();
              }
              final String[] arrayOfString;
              do
              {
                do
                {
                  do
                  {
                    return;
                  } while (paramAnonymous3Int == 0);
                  ProductThridAddress.this.countyList = ProductThridAddress.this.mProduct.getCountyModeList();
                } while (ProductThridAddress.this.countyList == null);
                arrayOfString = ProductThridAddress.this.getAddressStringArray(ProductThridAddress.this.countyList);
              } while (arrayOfString.length <= 0);
              ProductThridAddress.this.mMyActivity.post(new Runnable()
              {
                public void run()
                {
                  int i = ProductThridAddress.this.getDefaultPosition(CommonUtil.getDistrictIdFromSharedPreferences(), ProductThridAddress.this.countyList);
                  ProductThridAddress.this.countySelectorDialog = ProductThridAddress.this.showSelector(arrayOfString, i, ProductThridAddress.this.countyOnClickListener);
                }
              });
            }
          });
        }
      });
    }
  };
  private AlertDialog citySelectorDialog;
  private long clickTime = 0L;
  private String countyID = null;
  private ArrayList<AddressBaseMode> countyList = null;
  private DialogInterface.OnClickListener countyOnClickListener = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      String str1;
      if (System.currentTimeMillis() - ProductThridAddress.this.clickTime > 600L)
      {
        ProductThridAddress.this.clickTime = System.currentTimeMillis();
        ProductThridAddress.this.mCountySelectId = paramAnonymousInt;
        ProductThridAddress.this.countyID = ((AddressBaseMode)ProductThridAddress.this.countyList.get(ProductThridAddress.this.mCountySelectId)).getId();
        ProductThridAddress.this.mProduct.setCountyID(ProductThridAddress.this.countyID);
        ProductThridAddress.this.mProduct.setCountyName(((AddressBaseMode)ProductThridAddress.this.countyList.get(ProductThridAddress.this.mCountySelectId)).getName());
        ProductThridAddress.this.mProduct.setStockFunction(((AddressBaseMode)ProductThridAddress.this.countyList.get(ProductThridAddress.this.mCountySelectId)).getFunctionId());
        ProductThridAddress.this.mProduct.setTownID("0");
        ProductThridAddress.this.mProduct.setTownName("");
        str1 = ((AddressBaseMode)ProductThridAddress.this.countyList.get(ProductThridAddress.this.mCountySelectId)).getFlag();
        if (!"1".equals(str1)) {
          break label405;
        }
        str2 = ((AddressBaseMode)ProductThridAddress.this.countyList.get(ProductThridAddress.this.mCountySelectId)).getSkuId();
        str3 = ProductThridAddress.this.mProduct.getSkuId();
        if ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty(str3)) && (!TextUtils.equals(str2, str3))) {
          ProductThridAddress.this.mProduct.setSkuId(str2);
        }
        str4 = ProductThridAddress.this.mProduct.getSkuId();
      }
      label352:
      while (!"0".equals(str1)) {
        try
        {
          String str2;
          String str3;
          String str4;
          if ((!TextUtils.isEmpty(str3)) && (!TextUtils.isEmpty(str4)) && (!TextUtils.equals(str3, str4)))
          {
            long l = Long.valueOf(str4).longValue();
            ProductThridAddress.this.updataUIListener.onFinish(21, l);
            ProductThridAddress.this.closeDialog();
          }
          for (;;)
          {
            CommonUtil.setProvinceIDToSharedPreferences(ProductThridAddress.this.provinceID);
            CommonUtil.setCityIDToSharedPreferences(ProductThridAddress.this.cityID);
            CommonUtil.setDistrictIdToSharedPreferences(ProductThridAddress.this.countyID);
            CommonUtil.setTownIdToSharedPreferences(ProductThridAddress.CONST_NULL);
            return;
            ProductThridAddress.this.handleStock(true);
          }
        }
        catch (Exception localException)
        {
          break label352;
        }
      }
      label405:
      ProductThridAddress.this.queryTown();
    }
  };
  private AlertDialog countySelectorDialog;
  private boolean isCityClicked = false;
  private boolean isCountyClicked = false;
  private boolean isProvinceClicked = false;
  private boolean isTownClicked = false;
  private int mCitySelectId;
  private int mCountySelectId;
  private MyActivity mMyActivity;
  private Product mProduct;
  private ProductDetailController mProductDetailController;
  private int mProvinceSelectId;
  private int mTownSelectId;
  private TextView productStockProvinceChoosed;
  private String provinceID = null;
  private ArrayList<AddressBaseMode> provinceList = null;
  private DialogInterface.OnClickListener provinceOnClickListener = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      String str;
      if (System.currentTimeMillis() - ProductThridAddress.this.clickTime > 600L)
      {
        ProductThridAddress.this.clickTime = System.currentTimeMillis();
        if (!ProductThridAddress.this.isProvinceClicked)
        {
          ProductThridAddress.this.isProvinceClicked = true;
          ProductThridAddress.this.mProvinceSelectId = paramAnonymousInt;
          ProductThridAddress.this.provinceID = ((AddressBaseMode)ProductThridAddress.this.provinceList.get(ProductThridAddress.this.mProvinceSelectId)).getId();
          ProductThridAddress.this.mProduct.setProvinceID(ProductThridAddress.this.provinceID);
          ProductThridAddress.this.mProduct.setProvinceName(((AddressBaseMode)ProductThridAddress.this.provinceList.get(ProductThridAddress.this.mProvinceSelectId)).getName());
          ProductThridAddress.this.mProduct.setStockFunction(((AddressBaseMode)ProductThridAddress.this.provinceList.get(ProductThridAddress.this.mProvinceSelectId)).getFunctionId());
          ProductThridAddress.this.mProduct.setCityId("0");
          ProductThridAddress.this.mProduct.setCityName("");
          ProductThridAddress.this.mProduct.setCountyID("0");
          ProductThridAddress.this.mProduct.setCountyName("");
          ProductThridAddress.this.mProduct.setTownID("0");
          ProductThridAddress.this.mProduct.setTownName("");
          str = ((AddressBaseMode)ProductThridAddress.this.provinceList.get(ProductThridAddress.this.mProvinceSelectId)).getFlag();
          if (!"1".equals(str)) {
            break label317;
          }
          CommonUtil.setProvinceIDToSharedPreferences(ProductThridAddress.this.provinceID);
          CommonUtil.setCityIDToSharedPreferences(ProductThridAddress.CONST_NULL);
          CommonUtil.setDistrictIdToSharedPreferences(ProductThridAddress.CONST_NULL);
          CommonUtil.setTownIdToSharedPreferences(ProductThridAddress.CONST_NULL);
          ProductThridAddress.this.handleStock(true);
          ProductThridAddress.this.isProvinceClicked = false;
        }
      }
      label317:
      while (!"0".equals(str)) {
        return;
      }
      ProductThridAddress.this.mMyActivity.post(new Runnable()
      {
        public void run()
        {
          ProductThridAddress.this.mProductDetailController.queryThirdAddressCity(true, new ProductDetailController.ProductDetailListener()
          {
            public void onFinish(Product paramAnonymous3Product, int paramAnonymous3Int, boolean paramAnonymous3Boolean)
            {
              ProductThridAddress.this.isProvinceClicked = false;
              if (!paramAnonymous3Boolean) {
                ProductThridAddress.this.closeDialog();
              }
              final String[] arrayOfString;
              do
              {
                do
                {
                  do
                  {
                    return;
                  } while (paramAnonymous3Int == 0);
                  ProductThridAddress.this.cityList = ProductThridAddress.this.mProduct.getCityModeList();
                } while (ProductThridAddress.this.cityList == null);
                arrayOfString = ProductThridAddress.this.getAddressStringArray(ProductThridAddress.this.cityList);
              } while (arrayOfString.length <= 0);
              ProductThridAddress.this.mMyActivity.post(new Runnable()
              {
                public void run()
                {
                  int i = ProductThridAddress.this.getDefaultPosition(CommonUtil.getCityIDFromSharedPreferences(), ProductThridAddress.this.cityList);
                  ProductThridAddress.this.citySelectorDialog = ProductThridAddress.this.showSelector(arrayOfString, i, ProductThridAddress.this.cityOnClickListener);
                }
              });
            }
          });
        }
      });
    }
  };
  private AlertDialog provinceSelectorDialog;
  private String townID = null;
  private ArrayList<AddressBaseMode> townList = null;
  private DialogInterface.OnClickListener townOnClickListener = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      if (System.currentTimeMillis() - ProductThridAddress.this.clickTime > 600L)
      {
        ProductThridAddress.this.clickTime = System.currentTimeMillis();
        if (!ProductThridAddress.this.isTownClicked)
        {
          ProductThridAddress.this.isTownClicked = true;
          ProductThridAddress.this.mTownSelectId = paramAnonymousInt;
          ProductThridAddress.this.townID = ((AddressBaseMode)ProductThridAddress.this.townList.get(ProductThridAddress.this.mTownSelectId)).getId();
          ProductThridAddress.this.mProduct.setTownID(ProductThridAddress.this.townID);
          ProductThridAddress.this.mProduct.setTownName(((AddressBaseMode)ProductThridAddress.this.townList.get(ProductThridAddress.this.mTownSelectId)).getName());
          ProductThridAddress.this.mProduct.setStockFunction(((AddressBaseMode)ProductThridAddress.this.townList.get(ProductThridAddress.this.mTownSelectId)).getFunctionId());
          String str1 = ((AddressBaseMode)ProductThridAddress.this.townList.get(ProductThridAddress.this.mTownSelectId)).getSkuId();
          String str2 = ProductThridAddress.this.mProduct.getSkuId();
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)) && (!TextUtils.equals(str1, str2))) {
            ProductThridAddress.this.mProduct.setSkuId(str1);
          }
          String str3 = ProductThridAddress.this.mProduct.getSkuId();
          try
          {
            CommonUtil.setProvinceIDToSharedPreferences(ProductThridAddress.this.provinceID);
            CommonUtil.setCityIDToSharedPreferences(ProductThridAddress.this.cityID);
            CommonUtil.setDistrictIdToSharedPreferences(ProductThridAddress.this.countyID);
            CommonUtil.setTownIdToSharedPreferences(ProductThridAddress.this.townID);
            if ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty(str3)) && (!TextUtils.equals(str2, str3)))
            {
              long l = Long.valueOf(str3).longValue();
              ProductThridAddress.this.closeDialog();
              ProductThridAddress.this.updataUIListener.onFinish(21, l);
              ProductThridAddress.this.isTownClicked = false;
              return;
            }
            ProductThridAddress.this.handleStock(true);
            return;
          }
          catch (Exception localException) {}
        }
      }
    }
  };
  private AlertDialog townSelectorDialog;
  private ProductDetailUpdataUIListener updataUIListener;
  
  public ProductThridAddress(MyActivity paramMyActivity, ProductDetailController paramProductDetailController, Product paramProduct, TextView paramTextView)
  {
    this.mMyActivity = paramMyActivity;
    this.mProductDetailController = paramProductDetailController;
    this.mProduct = paramProduct;
    this.productStockProvinceChoosed = paramTextView;
  }
  
  private void closeDialog()
  {
    if ((this.citySelectorDialog != null) && (this.citySelectorDialog.isShowing())) {
      this.citySelectorDialog.dismiss();
    }
    if ((this.provinceSelectorDialog != null) && (this.provinceSelectorDialog.isShowing())) {
      this.provinceSelectorDialog.dismiss();
    }
    if ((this.countySelectorDialog != null) && (this.countySelectorDialog.isShowing())) {
      this.countySelectorDialog.dismiss();
    }
    if ((this.townSelectorDialog != null) && (this.townSelectorDialog.isShowing())) {
      this.townSelectorDialog.dismiss();
    }
  }
  
  private String[] getAddressStringArray(ArrayList<AddressBaseMode> paramArrayList)
  {
    String[] arrayOfString = new String[paramArrayList.size()];
    for (int i = 0;; i++)
    {
      if (i >= paramArrayList.size()) {
        return arrayOfString;
      }
      arrayOfString[i] = ((AddressBaseMode)paramArrayList.get(i)).getName();
    }
  }
  
  private int getDefaultPosition(String paramString, ArrayList<AddressBaseMode> paramArrayList)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramArrayList == null)) {
      return 0;
    }
    int i = paramArrayList.size();
    for (int j = 0;; j++)
    {
      int k = 0;
      if (j >= i) {}
      for (;;)
      {
        return k;
        if (!paramString.equals(((AddressBaseMode)paramArrayList.get(j)).getId())) {
          break;
        }
        k = j;
      }
    }
  }
  
  private void handleStock(boolean paramBoolean)
  {
    this.mMyActivity.post(new Runnable()
    {
      public void run()
      {
        ProductThridAddress.this.mProductDetailController.queryDirectStock(new ProductDetailController.ProductDetailListener()
        {
          public void onFinish(Product paramAnonymous2Product, int paramAnonymous2Int, boolean paramAnonymous2Boolean)
          {
            if (11 - paramAnonymous2Int == 0)
            {
              ProductThridAddress.this.mMyActivity.post(new Runnable()
              {
                public void run()
                {
                  ProductThridAddress.this.updataUIListener.onFinish(11, ProductThridAddress.this.mProduct.getId().longValue());
                }
              });
              return;
            }
            ProductThridAddress.this.isProvinceClicked = false;
            ProductThridAddress.this.isCityClicked = false;
            ProductThridAddress.this.isCountyClicked = false;
            ProductThridAddress.this.isTownClicked = false;
            if (!paramAnonymous2Boolean)
            {
              ProductThridAddress.this.closeDialog();
              return;
            }
            ProductThridAddress.this.mMyActivity.post(new Runnable()
            {
              public void run()
              {
                ProductThridAddress.this.closeDialog();
                ProductThridAddress.this.updataUIListener.onFinish(20, ProductThridAddress.this.mProduct.getId().longValue());
              }
            });
          }
        });
      }
    });
  }
  
  private void initProvinceClick()
  {
    this.productStockProvinceChoosed.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductThridAddress.this.mProduct.setCheckNext(true);
        if (System.currentTimeMillis() - ProductThridAddress.this.clickTime > 600L)
        {
          ProductThridAddress.this.clickTime = System.currentTimeMillis();
          ProductThridAddress.this.productStockProvinceChoosed.setPressed(false);
          ProductThridAddress.this.queryProvince();
        }
      }
    });
  }
  
  private void queryProvince()
  {
    this.mProductDetailController.queryThirdAddressProvince(true, new ProductDetailController.ProductDetailListener()
    {
      public void onFinish(Product paramAnonymousProduct, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        if ((!paramAnonymousBoolean) || (paramAnonymousInt == 0)) {}
        final String[] arrayOfString;
        do
        {
          do
          {
            return;
            ProductThridAddress.this.provinceList = ProductThridAddress.this.mProduct.getProvinceModeList();
          } while (ProductThridAddress.this.provinceList == null);
          arrayOfString = ProductThridAddress.this.getAddressStringArray(ProductThridAddress.this.provinceList);
        } while (arrayOfString.length <= 0);
        ProductThridAddress.this.mMyActivity.post(new Runnable()
        {
          public void run()
          {
            int i = ProductThridAddress.this.getDefaultPosition(CommonUtil.getProvinceIDFromSharedPreferences(), ProductThridAddress.this.provinceList);
            ProductThridAddress.this.provinceSelectorDialog = ProductThridAddress.this.showSelector(arrayOfString, i, ProductThridAddress.this.provinceOnClickListener);
          }
        });
      }
    });
  }
  
  private void queryTown()
  {
    if (!this.isCountyClicked)
    {
      this.isCountyClicked = true;
      this.mMyActivity.post(new Runnable()
      {
        public void run()
        {
          ProductThridAddress.this.mProductDetailController.queryThirdAddressTown(true, new ProductDetailController.ProductDetailListener()
          {
            public void onFinish(Product paramAnonymous2Product, int paramAnonymous2Int, boolean paramAnonymous2Boolean)
            {
              ProductThridAddress.this.isCountyClicked = false;
              if (!paramAnonymous2Boolean) {
                ProductThridAddress.this.closeDialog();
              }
              final String[] arrayOfString;
              do
              {
                do
                {
                  do
                  {
                    return;
                  } while (paramAnonymous2Int == 0);
                  ProductThridAddress.this.townList = ProductThridAddress.this.mProduct.getTownModeList();
                } while (ProductThridAddress.this.townList == null);
                arrayOfString = ProductThridAddress.this.getAddressStringArray(ProductThridAddress.this.townList);
              } while (arrayOfString.length <= 0);
              ProductThridAddress.this.mMyActivity.post(new Runnable()
              {
                public void run()
                {
                  int i = ProductThridAddress.this.getDefaultPosition(CommonUtil.getTownIdFromSharedPreferences(), ProductThridAddress.this.townList);
                  ProductThridAddress.this.townSelectorDialog = ProductThridAddress.this.showSelector(arrayOfString, i, ProductThridAddress.this.townOnClickListener);
                }
              });
            }
          });
        }
      });
    }
  }
  
  private AlertDialog showSelector(String[] paramArrayOfString, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return new AlertDialog.Builder(this.mMyActivity).setSingleChoiceItems(paramArrayOfString, paramInt, paramOnClickListener).show();
  }
  
  public void handleThirdAddress(ProductDetailUpdataUIListener paramProductDetailUpdataUIListener)
  {
    this.updataUIListener = paramProductDetailUpdataUIListener;
    initProvinceClick();
  }
  
  public static abstract interface ProductDetailUpdataUIListener
  {
    public static final int RESULT_CODE_11_DETAIL_ALL = 11;
    public static final int RESULT_CODE_ADDRESS = 21;
    public static final int RESULT_CODE_ALL = 22;
    public static final int RESULT_CODE_DEFAULT_ADDRESS = 20;
    public static final int RESULT_CODE_DEFAULT_STOCK = 23;
    
    public abstract void onFinish(int paramInt, long paramLong);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.ProductThridAddress
 * JD-Core Version:    0.7.0.1
 */