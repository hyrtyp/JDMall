package com.jingdong.app.mall.shopping;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.LastOrderInfo;
import com.jingdong.common.entity.UserAddress;
import com.jingdong.common.entity.UserInfo;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.lbs.LocManager;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class EditOrderAddressActivity
  extends MyActivity
{
  public static final String INTENT_EXTAS_PAGE_TYPE = "PageType";
  public static final String INTENT_EXTAS_USER_ADDRESS = "UserAddress";
  public static final int PAGE_TYPE_EDIT_CURRENT_ADDRESS = 4;
  public static final int PAGE_TYPE_EDIT_CURRENT_ADDRESS_AND_NEW = 5;
  public static final int PAGE_TYPE_NEW = 1;
  public static final int PAGE_TYPE_SAVE = 2;
  public static final int PAGE_TYPE_SAVE_AS = 3;
  private final String LoadingText = "正在加载...";
  private String TAG = "EditOrderAddressActivity";
  JSONObject addParams;
  int currAreaId;
  int currCityId;
  int currProvinceId;
  int currSelectUsedAddress = -1;
  int currTownsId;
  private boolean isAreaLoading = false;
  private boolean isCityLoading = false;
  private boolean isFristLoading = true;
  private boolean isLoadingUsedAddress = false;
  private boolean isTownLoading = false;
  String[] items = null;
  JSONObject jbCartStr;
  JSONObject jdAreas;
  JSONObject jdCitys;
  JSONArray jdCommAddrUsed;
  JSONObject jdProvinces;
  JSONObject jdTowns;
  private long lastToken;
  RadioGroup mAddrListGroup;
  TextView mArea;
  ImageButton mArea2;
  TextView mCity;
  ImageButton mCity2;
  Button mConfirmAddr;
  EditText mMail;
  EditText mMobile;
  TextView mPCA;
  private String mPCAString;
  TextView mProvince;
  ImageButton mProvince2;
  int mSelectAreaPosition;
  int mSelectCityPosition;
  int mSelectProvincePosition;
  int mSelectTownsPosition;
  TextView mTitle;
  TextView mTown;
  ImageButton mTown2;
  EditText mUserName;
  EditText mWhere;
  EditText mZip;
  private int pageType;
  private String sAddressDetail;
  private String sArea;
  private String sCity;
  private String sMail;
  private String sMobile;
  private String sProvince;
  private String sUserName;
  private String sWhere;
  private String sZip;
  private String succeedToastMsg;
  private String usedAddresswhere = "";
  private UserAddress userAddress;
  
  private void createAreaAlertDiglog(String paramString)
  {
    try
    {
      final JSONArray localJSONArray = this.jdAreas.getJSONArray("Areas");
      this.items = new String[localJSONArray.length()];
      for (int i = 0;; i++)
      {
        if (i >= localJSONArray.length())
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
          localBuilder.setTitle(paramString);
          localBuilder.setSingleChoiceItems(this.items, this.mSelectAreaPosition, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              if (EditOrderAddressActivity.this.mSelectAreaPosition != paramAnonymousInt) {}
              for (;;)
              {
                try
                {
                  JSONObject localJSONObject = localJSONArray.getJSONObject(paramAnonymousInt);
                  EditOrderAddressActivity.this.currAreaId = localJSONObject.getInt("Id");
                  String str = localJSONObject.getString("Name");
                  EditOrderAddressActivity.this.mArea.setText(str);
                  EditOrderAddressActivity.this.currTownsId = -1;
                  EditOrderAddressActivity.this.mTown.setText("正在加载...");
                  if ((!Constants.bAddEasyBuy) && (!Constants.bModifyEasyBuy)) {
                    continue;
                  }
                  EditOrderAddressActivity.this.mPCA.setText(EditOrderAddressActivity.this.mProvince.getText().toString() + EditOrderAddressActivity.this.mCity.getText() + str);
                  if (EditOrderAddressActivity.this.mTown.getVisibility() == 0) {
                    EditOrderAddressActivity.this.mTown.setVisibility(8);
                  }
                }
                catch (JSONException localJSONException)
                {
                  localJSONException.printStackTrace();
                  continue;
                }
                paramAnonymousDialogInterface.dismiss();
                return;
                EditOrderAddressActivity.this.lastToken = System.currentTimeMillis();
                EditOrderAddressActivity.this.getTowns(EditOrderAddressActivity.this.currAreaId, EditOrderAddressActivity.this.lastToken);
              }
            }
          }).show();
          return;
        }
        this.items[i] = localJSONArray.getJSONObject(i).getString("Name");
        if (this.currAreaId == localJSONArray.getJSONObject(i).getInt("Id")) {
          this.mSelectAreaPosition = i;
        }
      }
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void createCityAlertDiglog(String paramString)
  {
    try
    {
      final JSONArray localJSONArray = this.jdCitys.getJSONArray("Areas");
      this.items = new String[localJSONArray.length()];
      for (int i = 0;; i++)
      {
        if (i >= localJSONArray.length())
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
          localBuilder.setTitle(paramString);
          localBuilder.setSingleChoiceItems(this.items, this.mSelectCityPosition, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              if (EditOrderAddressActivity.this.mSelectCityPosition != paramAnonymousInt) {}
              try
              {
                JSONObject localJSONObject = localJSONArray.getJSONObject(paramAnonymousInt);
                EditOrderAddressActivity.this.currCityId = localJSONObject.getInt("Id");
                EditOrderAddressActivity.this.currAreaId = -1;
                EditOrderAddressActivity.this.currTownsId = -1;
                EditOrderAddressActivity.this.mCity.setText(localJSONObject.getString("Name"));
                EditOrderAddressActivity.this.mArea.setText("正在加载...");
                EditOrderAddressActivity.this.mTown.setText("正在加载...");
                EditOrderAddressActivity.this.lastToken = System.currentTimeMillis();
                EditOrderAddressActivity.this.getArea(EditOrderAddressActivity.this.currCityId, EditOrderAddressActivity.this.lastToken);
                paramAnonymousDialogInterface.dismiss();
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
          }).show();
          return;
        }
        this.items[i] = localJSONArray.getJSONObject(i).getString("Name");
        if (this.currCityId == localJSONArray.getJSONObject(i).getInt("Id")) {
          this.mSelectCityPosition = i;
        }
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void createProvinceAlertDiglog(String paramString)
  {
    if (this.jdProvinces == null) {
      return;
    }
    try
    {
      final JSONArray localJSONArray = this.jdProvinces.getJSONArray("Areas");
      this.items = new String[localJSONArray.length()];
      for (int i = 0;; i++)
      {
        if (i >= this.items.length)
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
          localBuilder.setTitle(paramString);
          localBuilder.setSingleChoiceItems(this.items, this.mSelectProvincePosition, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              if (EditOrderAddressActivity.this.mSelectProvincePosition == paramAnonymousInt) {
                paramAnonymousDialogInterface.dismiss();
              }
              for (;;)
              {
                paramAnonymousDialogInterface.dismiss();
                return;
                try
                {
                  JSONObject localJSONObject = localJSONArray.getJSONObject(paramAnonymousInt);
                  EditOrderAddressActivity.this.currProvinceId = localJSONObject.getInt("Id");
                  EditOrderAddressActivity.this.currCityId = -1;
                  EditOrderAddressActivity.this.currAreaId = -1;
                  EditOrderAddressActivity.this.currTownsId = -1;
                  EditOrderAddressActivity.this.mProvince.setText(localJSONObject.getString("Name"));
                  EditOrderAddressActivity.this.mCity.setText("正在加载...");
                  EditOrderAddressActivity.this.mArea.setText("正在加载...");
                  EditOrderAddressActivity.this.mTown.setText("正在加载...");
                  EditOrderAddressActivity.this.getCity(EditOrderAddressActivity.this.currProvinceId);
                }
                catch (JSONException localJSONException)
                {
                  localJSONException.printStackTrace();
                }
              }
            }
          }).show();
          return;
        }
        this.items[i] = localJSONArray.getJSONObject(i).getString("Name");
        if (this.currProvinceId == localJSONArray.getJSONObject(i).getInt("Id")) {
          this.mSelectProvincePosition = i;
        }
      }
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void createTownAlertDiglog(String paramString)
  {
    try
    {
      final JSONArray localJSONArray = this.jdTowns.getJSONArray("Areas");
      this.items = new String[localJSONArray.length()];
      for (int i = 0;; i++)
      {
        if (i >= localJSONArray.length())
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
          localBuilder.setTitle(paramString);
          localBuilder.setSingleChoiceItems(this.items, this.mSelectTownsPosition, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              if (EditOrderAddressActivity.this.mSelectTownsPosition != paramAnonymousInt) {}
              try
              {
                JSONObject localJSONObject = localJSONArray.getJSONObject(paramAnonymousInt);
                EditOrderAddressActivity.this.currTownsId = localJSONObject.getInt("Id");
                String str = localJSONObject.getString("Name");
                EditOrderAddressActivity.this.mTown.setText(str);
                EditOrderAddressActivity.this.mPCA.setText(EditOrderAddressActivity.this.mProvince.getText().toString() + EditOrderAddressActivity.this.mCity.getText() + EditOrderAddressActivity.this.mArea.getText() + str);
                paramAnonymousDialogInterface.dismiss();
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
          }).show();
          return;
        }
        this.items[i] = localJSONArray.getJSONObject(i).getString("Name");
        if (this.currTownsId == localJSONArray.getJSONObject(i).getInt("Id")) {
          this.mSelectTownsPosition = i;
        }
      }
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void getAddrViewText()
  {
    this.sUserName = this.mUserName.getText().toString();
    this.sMobile = this.mMobile.getText().toString();
    this.sProvince = this.mProvince.getText().toString();
    this.sCity = this.mCity.getText().toString();
    this.sArea = this.mArea.getText().toString();
    this.sWhere = (this.mPCA.getText().toString() + this.mWhere.getText().toString());
    this.sAddressDetail = this.mWhere.getText().toString();
    this.sZip = this.mZip.getText().toString();
    this.sMail = this.mMail.getText().toString();
    this.mPCAString = this.mWhere.getText().toString();
  }
  
  private void getArea(int paramInt, long paramLong)
  {
    this.isAreaLoading = true;
    post(new Runnable()
    {
      public void run()
      {
        EditOrderAddressActivity.this.mArea.setEnabled(false);
        EditOrderAddressActivity.this.mArea2.setEnabled(false);
        EditOrderAddressActivity.this.mArea.setText("正在加载...");
        EditOrderAddressActivity.this.mTown.setEnabled(false);
        EditOrderAddressActivity.this.mTown2.setEnabled(false);
        EditOrderAddressActivity.this.mTown.setText("正在加载...");
        EditOrderAddressActivity.this.mPCA.setText("正在加载...");
      }
    });
    try
    {
      JSONObject localJSONObject = new JSONObject();
      if (this.pageType != 4) {
        localJSONObject.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      }
      localJSONObject.put("action", "GetAreas");
      localJSONObject.put("IdCity", String.valueOf(paramInt));
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
      {
        setUpConnAndGetData("easyBuyOrderAddress", localJSONObject, "GetAreas", paramLong);
        return;
      }
      setUpConnAndGetData("orderAddress", localJSONObject, "GetAreas", paramLong);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private int getAreaCode(String paramString)
  {
    Object localObject = new JSONArray();
    try
    {
      JSONArray localJSONArray = this.jdAreas.getJSONArray("Areas");
      localObject = localJSONArray;
    }
    catch (JSONException localJSONException1)
    {
      label22:
      int i;
      break label22;
    }
    i = 0;
    for (;;)
    {
      if (i >= ((JSONArray)localObject).length()) {
        return 0;
      }
      try
      {
        if (((JSONArray)localObject).getJSONObject(i).getString("Name").compareTo(paramString) == 0)
        {
          int j = ((JSONArray)localObject).getJSONObject(i).getInt("Id");
          return j;
        }
      }
      catch (JSONException localJSONException2)
      {
        i++;
      }
    }
  }
  
  private void getCartItemInfo()
  {
    if (Constants.bEasyBuy)
    {
      localJSONObject = new JSONObject();
      localJSONArray = new JSONArray();
    }
    while (FillOrderActivity.cartResponseInfo == null) {
      try
      {
        JSONObject localJSONObject;
        JSONArray localJSONArray;
        localJSONObject.put("Id", Constants.easyBuyProdId);
        localJSONObject.put("num", String.valueOf(1));
        localJSONArray.put(localJSONObject);
        this.jbCartStr.put("TheSkus", localJSONArray);
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    }
    this.jbCartStr = FillOrderActivity.cartResponseInfo.toCheckedCartStr();
  }
  
  private void getCity(int paramInt)
  {
    this.isCityLoading = true;
    this.lastToken = System.currentTimeMillis();
    post(new Runnable()
    {
      public void run()
      {
        EditOrderAddressActivity.this.mArea.setEnabled(false);
        EditOrderAddressActivity.this.mArea2.setEnabled(false);
        EditOrderAddressActivity.this.mCity.setEnabled(false);
        EditOrderAddressActivity.this.mCity2.setEnabled(false);
        EditOrderAddressActivity.this.mTown.setEnabled(false);
        EditOrderAddressActivity.this.mTown2.setEnabled(false);
        EditOrderAddressActivity.this.mTown.setText("正在加载...");
        EditOrderAddressActivity.this.mArea.setText("正在加载...");
        EditOrderAddressActivity.this.mCity.setText("正在加载...");
        EditOrderAddressActivity.this.mPCA.setText("正在加载...");
      }
    });
    try
    {
      JSONObject localJSONObject = new JSONObject();
      if (this.pageType != 4) {
        localJSONObject.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      }
      localJSONObject.put("action", "GetCitys");
      localJSONObject.put("IdProvince", String.valueOf(paramInt));
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
      {
        setUpConnAndGetData("easyBuyOrderAddress", localJSONObject, "GetCitys", this.lastToken);
        return;
      }
      setUpConnAndGetData("orderAddress", localJSONObject, "GetCitys", this.lastToken);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private int getCityCode(String paramString)
  {
    Object localObject = new JSONArray();
    try
    {
      JSONArray localJSONArray = this.jdCitys.getJSONArray("Areas");
      localObject = localJSONArray;
    }
    catch (JSONException localJSONException1)
    {
      label22:
      int i;
      break label22;
    }
    i = 0;
    for (;;)
    {
      if (i >= ((JSONArray)localObject).length()) {
        return 0;
      }
      try
      {
        if (((JSONArray)localObject).getJSONObject(i).getString("Name").compareTo(paramString) == 0)
        {
          int j = ((JSONArray)localObject).getJSONObject(i).getInt("Id");
          return j;
        }
      }
      catch (JSONException localJSONException2)
      {
        i++;
      }
    }
  }
  
  private void getProvices()
  {
    post(new Runnable()
    {
      public void run()
      {
        EditOrderAddressActivity.this.mArea.setEnabled(false);
        EditOrderAddressActivity.this.mArea2.setEnabled(false);
        EditOrderAddressActivity.this.mCity.setEnabled(false);
        EditOrderAddressActivity.this.mCity2.setEnabled(false);
        EditOrderAddressActivity.this.mProvince.setEnabled(false);
        EditOrderAddressActivity.this.mProvince2.setEnabled(false);
        EditOrderAddressActivity.this.mTown.setEnabled(false);
        EditOrderAddressActivity.this.mTown2.setEnabled(false);
        EditOrderAddressActivity.this.mArea.setText("正在加载...");
        EditOrderAddressActivity.this.mCity.setText("正在加载...");
        EditOrderAddressActivity.this.mProvince.setText("正在加载...");
        EditOrderAddressActivity.this.mTown.setText("正在加载...");
      }
    });
    try
    {
      JSONObject localJSONObject = new JSONObject();
      if (this.pageType != 4) {
        localJSONObject.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      }
      localJSONObject.put("action", "GetProvinces");
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
      {
        setUpConnAndGetData("easyBuyOrderAddress", localJSONObject, "GetProvinces", 0L);
        return;
      }
      setUpConnAndGetData("orderAddress", localJSONObject, "GetProvinces", 0L);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private int getProvinceCode(String paramString)
  {
    Object localObject = new JSONArray();
    try
    {
      JSONArray localJSONArray = this.jdProvinces.getJSONArray("Areas");
      localObject = localJSONArray;
    }
    catch (JSONException localJSONException1)
    {
      label22:
      int i;
      break label22;
    }
    i = 0;
    for (;;)
    {
      if (i >= ((JSONArray)localObject).length()) {
        return 0;
      }
      try
      {
        if (((JSONArray)localObject).getJSONObject(i).getString("Name").compareTo(paramString) == 0)
        {
          int j = ((JSONArray)localObject).getJSONObject(i).getInt("Id");
          return j;
        }
      }
      catch (JSONException localJSONException2)
      {
        i++;
      }
    }
  }
  
  private void getTowns(int paramInt, long paramLong)
  {
    this.isTownLoading = true;
    try
    {
      JSONObject localJSONObject = new JSONObject();
      if (this.pageType != 4) {
        localJSONObject.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      }
      localJSONObject.put("action", "GetTowns");
      localJSONObject.put("IdArea", String.valueOf(paramInt));
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
      {
        setUpConnAndGetData("easyBuyOrderAddress", localJSONObject, "GetTowns", paramLong);
        return;
      }
      setUpConnAndGetData("orderAddress", localJSONObject, "GetTowns", paramLong);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void handleClickEvent()
  {
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(final View paramAnonymousView)
      {
        paramAnonymousView.setEnabled(false);
        EditOrderAddressActivity.this.post(new Runnable()
        {
          public void run()
          {
            paramAnonymousView.setEnabled(true);
          }
        }, 2000);
        EditOrderAddressActivity.this.getAddrViewText();
        if ((EditOrderAddressActivity.this.verificationInputData()) && (paramAnonymousView == EditOrderAddressActivity.this.mConfirmAddr)) {
          EditOrderAddressActivity.this.submitEvent();
        }
      }
    };
    this.mConfirmAddr.setOnClickListener(local1);
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if ((paramAnonymousView == EditOrderAddressActivity.this.mProvince) || (paramAnonymousView == EditOrderAddressActivity.this.mProvince2)) {
          EditOrderAddressActivity.this.createProvinceAlertDiglog("选择省份");
        }
        do
        {
          return;
          if ((paramAnonymousView == EditOrderAddressActivity.this.mCity) || (paramAnonymousView == EditOrderAddressActivity.this.mCity2))
          {
            EditOrderAddressActivity.this.createCityAlertDiglog("选择城市");
            return;
          }
          if ((paramAnonymousView == EditOrderAddressActivity.this.mArea) || (paramAnonymousView == EditOrderAddressActivity.this.mArea2))
          {
            EditOrderAddressActivity.this.createAreaAlertDiglog("选择地区");
            return;
          }
        } while ((paramAnonymousView != EditOrderAddressActivity.this.mTown) && (paramAnonymousView != EditOrderAddressActivity.this.mTown2));
        EditOrderAddressActivity.this.createTownAlertDiglog("选择城镇");
      }
    };
    this.mProvince.setOnClickListener(local2);
    this.mProvince2.setOnClickListener(local2);
    this.mCity.setOnClickListener(local2);
    this.mCity2.setOnClickListener(local2);
    this.mArea.setOnClickListener(local2);
    this.mArea2.setOnClickListener(local2);
    this.mTown.setOnClickListener(local2);
    this.mTown2.setOnClickListener(local2);
  }
  
  private void handleData(HttpGroup.HttpResponse paramHttpResponse, String paramString, long paramLong)
  {
    if ("GetProvinces".equals(paramString)) {}
    do
    {
      do
      {
        do
        {
          do
          {
            try
            {
              this.jdProvinces = paramHttpResponse.getJSONObject().getJSONObject("provinceInfo");
              updateProvincesView(this.jdProvinces.getJSONArray("Areas"));
              return;
            }
            catch (JSONException localJSONException6)
            {
              localJSONException6.printStackTrace();
              return;
            }
            if (!"GetCitys".equals(paramString)) {
              break;
            }
          } while (this.lastToken != paramLong);
          try
          {
            this.jdCitys = paramHttpResponse.getJSONObject().getJSONObject("provinceInfo");
            if (!this.jdCitys.isNull("Areas"))
            {
              updateCityView(this.jdCitys.getJSONArray("Areas"), paramLong);
              return;
            }
          }
          catch (JSONException localJSONException5)
          {
            localJSONException5.printStackTrace();
            return;
          }
          updateCityView(null, paramLong);
          return;
          if (!"GetAreas".equals(paramString)) {
            break;
          }
        } while ((this.lastToken != paramLong) && (this.isCityLoading));
        try
        {
          this.jdAreas = paramHttpResponse.getJSONObject().getJSONObject("provinceInfo");
          updateAreasView(this.jdAreas.getJSONArray("Areas"), paramLong);
          return;
        }
        catch (JSONException localJSONException4)
        {
          localJSONException4.printStackTrace();
          return;
        }
        if (!"GetTowns".equals(paramString)) {
          break;
        }
      } while ((this.lastToken != paramLong) && ((this.isCityLoading) || (this.isAreaLoading)));
      try
      {
        this.jdTowns = paramHttpResponse.getJSONObject().getJSONObject("provinceInfo");
        updateTownsView(this.jdTowns);
        return;
      }
      catch (JSONException localJSONException3)
      {
        localJSONException3.printStackTrace();
        return;
      }
      if ("addAddress".equals(paramString))
      {
        JSONObjectProxy localJSONObjectProxy2;
        for (;;)
        {
          try
          {
            localJSONObjectProxy2 = paramHttpResponse.getJSONObject().getJSONObject("addAddress");
            if (!localJSONObjectProxy2.getBoolean("Flag")) {
              break;
            }
            makeToast(this.succeedToastMsg);
            updateUserInfo();
            if (this.pageType == 5)
            {
              setResult(1);
              finish();
              return;
            }
          }
          catch (JSONException localJSONException2)
          {
            localJSONException2.printStackTrace();
            return;
          }
          setResult(-1);
        }
        makeToast(localJSONObjectProxy2.getString("Message"));
        return;
      }
    } while (!"updateAddress".equals(paramString));
    JSONObjectProxy localJSONObjectProxy1;
    try
    {
      localJSONObjectProxy1 = paramHttpResponse.getJSONObject().getJSONObject("updateAddress");
      if (localJSONObjectProxy1.getBoolean("Flag"))
      {
        makeToast(this.succeedToastMsg);
        updateUserInfo();
        setResult(-1);
        finish();
        return;
      }
    }
    catch (JSONException localJSONException1)
    {
      localJSONException1.printStackTrace();
      return;
    }
    makeToast(localJSONObjectProxy1.getString("Message"));
  }
  
  private void initAddressId()
  {
    this.currProvinceId = 1;
    this.currCityId = 72;
    this.currAreaId = 2819;
    if (this.pageType == 1)
    {
      if (LocManager.provinceId > 0) {
        this.currProvinceId = LocManager.provinceId;
      }
      if (LocManager.cityId > 0) {
        this.currCityId = LocManager.cityId;
      }
      if (LocManager.districtId > 0) {
        this.currAreaId = LocManager.districtId;
      }
    }
    while (this.userAddress == null) {
      return;
    }
    this.currProvinceId = this.userAddress.getIdProvince().intValue();
    this.currCityId = this.userAddress.getIdCity().intValue();
    this.currAreaId = this.userAddress.getIdArea().intValue();
    this.currTownsId = this.userAddress.getIdTown().intValue();
  }
  
  private void initAddressView()
  {
    if ((this.pageType != 1) && (this.userAddress != null))
    {
      this.mUserName.setText(this.userAddress.getName());
      this.mMobile.setText(this.userAddress.getMobile());
      this.mZip.setText(this.userAddress.getZip());
      this.mMail.setText(this.userAddress.getEmail());
    }
  }
  
  private void initCoponent()
  {
    this.mConfirmAddr = ((Button)findViewById(2131493696));
    this.mUserName = ((EditText)findViewById(2131493677));
    this.mMobile = ((EditText)findViewById(2131493679));
    this.mProvince = ((TextView)findViewById(2131493681));
    this.mCity = ((TextView)findViewById(2131493683));
    this.mArea = ((TextView)findViewById(2131493685));
    this.mTown = ((TextView)findViewById(2131493687));
    this.mWhere = ((EditText)findViewById(2131493691));
    this.mPCA = ((TextView)findViewById(2131493690));
    this.mZip = ((EditText)findViewById(2131493693));
    this.mMail = ((EditText)findViewById(2131493695));
    this.mTitle = ((TextView)findViewById(2131492990));
    switch (this.pageType)
    {
    }
    for (;;)
    {
      this.mProvince2 = ((ImageButton)findViewById(2131493682));
      this.mCity2 = ((ImageButton)findViewById(2131493684));
      this.mArea2 = ((ImageButton)findViewById(2131493686));
      this.mTown2 = ((ImageButton)findViewById(2131493688));
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
      {
        this.mTown2.setVisibility(8);
        this.mTown.setVisibility(8);
      }
      return;
      this.mTitle.setText(2131166461);
      continue;
      this.mTitle.setText(2131166462);
      continue;
      this.mTitle.setText(2131166463);
      continue;
      this.mTitle.setText(2131166104);
    }
  }
  
  private boolean isNotModify()
  {
    UserAddress localUserAddress = new UserAddress();
    localUserAddress.setName(this.sUserName);
    localUserAddress.setMobile(this.sMobile);
    localUserAddress.setZip(this.sZip);
    localUserAddress.setWhere(this.sWhere);
    localUserAddress.setAddressDetail(this.sAddressDetail);
    return localUserAddress.equals(this.userAddress);
  }
  
  private void makeToast(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        Toast.makeText(EditOrderAddressActivity.this, paramString, 0).show();
      }
    });
  }
  
  private void redrawCurrentAddress()
  {
    this.userAddress = new UserAddress();
    this.userAddress.setName(LastOrderInfo.mUserInfo.getUserName());
    this.userAddress.setMobile(LastOrderInfo.mUserInfo.getUserMobile());
    this.userAddress.setZip(LastOrderInfo.mUserInfo.getUserZip());
    try
    {
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("Where")) {
        this.userAddress.setWhere(LastOrderInfo.mUserInfo.getUserAddr().getString("Where"));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("addressDetail")) {
        this.userAddress.setAddressDetail(LastOrderInfo.mUserInfo.getUserAddr().getString("addressDetail"));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("Email")) {
        this.userAddress.setEmail(LastOrderInfo.mUserInfo.getUserAddr().getString("Email"));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("IdProvince")) {
        this.userAddress.setIdProvince(Integer.valueOf(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdProvince")));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("IdCity")) {
        this.userAddress.setIdCity(Integer.valueOf(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdCity")));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("IdArea")) {
        this.userAddress.setIdArea(Integer.valueOf(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdArea")));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("IdTown")) {
        this.userAddress.setIdTown(Integer.valueOf(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdTown")));
      }
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void setUpConnAndGetData(String paramString1, JSONObject paramJSONObject, final String paramString2, final long paramLong)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(paramString1);
    localHttpSetting.setEffect(1);
    if ("orderAddress".equals(paramString1)) {
      localHttpSetting.setAlertErrorDialogType(2);
    }
    localHttpSetting.setJsonParams(paramJSONObject);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        EditOrderAddressActivity.this.handleData(paramAnonymousHttpResponse, paramString2, paramLong);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    localHttpSetting.setNotifyUser(true);
    if ((TextUtils.equals(paramString2, "GetProvinces")) || (TextUtils.equals(paramString2, "GetCitys")) || (TextUtils.equals(paramString2, "GetAreas")) || (TextUtils.equals(paramString2, "GetTowns")))
    {
      localHttpSetting.setLocalFileCache(true);
      localHttpSetting.setLocalFileCacheTime(259200000L);
    }
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void submitEvent()
  {
    if (this.pageType == 4)
    {
      updateUserInfo();
      setResult(1);
      finish();
      return;
    }
    if (this.pageType == 2) {}
    for (this.succeedToastMsg = getString(2131166460); (this.pageType == 2) && (this.userAddress.getTypeId().intValue() == 0) && (isNotModify()); this.succeedToastMsg = getString(2131166459))
    {
      updateUserInfo();
      makeToast(this.succeedToastMsg);
      setResult(-1);
      finish();
      return;
    }
    this.addParams = new JSONObject();
    for (;;)
    {
      try
      {
        this.addParams.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
        this.addParams.put("Name", this.sUserName);
        this.addParams.put("IdProvince", getProvinceCode(this.sProvince));
        this.addParams.put("IdCity", getCityCode(this.sCity));
        this.addParams.put("IdArea", getAreaCode(this.sArea));
        if (this.currTownsId > 0) {
          this.addParams.put("IdTown", this.currTownsId);
        }
        if (TextUtils.isEmpty(this.sWhere)) {
          continue;
        }
        this.addParams.put("Where", this.sWhere.trim());
        if (TextUtils.isEmpty(this.sAddressDetail)) {
          continue;
        }
        this.addParams.put("addressDetail", this.sAddressDetail.trim());
      }
      catch (Exception localException)
      {
        String str;
        localException.printStackTrace();
        continue;
        this.addParams.put("addressDetail", "");
        continue;
      }
      this.addParams.put("Zip", this.sZip);
      this.addParams.put("Mobile", this.sMobile);
      if ((this.pageType == 2) && (this.userAddress != null))
      {
        this.addParams.put("Id", this.userAddress.getId());
        this.addParams.put("TypeId", this.userAddress.getTypeId());
      }
      str = "addAddress";
      if ((this.pageType == 2) && (this.userAddress.getTypeId().intValue() != 0)) {
        str = "updateAddress";
      }
      setUpConnAndGetData(str, this.addParams, str, 0L);
      return;
      this.addParams.put("Where", "");
    }
  }
  
  private void updateAreasView(final JSONArray paramJSONArray, final long paramLong)
  {
    post(new Runnable()
    {
      public void run()
      {
        int i = 0;
        for (;;)
        {
          String str1;
          String str2;
          try
          {
            int j = paramJSONArray.length();
            int k = 0;
            if (i >= j)
            {
              if (k == 0)
              {
                JSONObject localJSONObject2 = paramJSONArray.getJSONObject(0);
                EditOrderAddressActivity.this.currAreaId = localJSONObject2.getInt("Id");
                EditOrderAddressActivity.this.mArea.setText(localJSONObject2.getString("Name"));
                EditOrderAddressActivity.this.mArea.setEnabled(true);
                EditOrderAddressActivity.this.mArea2.setEnabled(true);
              }
              if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
              {
                str1 = EditOrderAddressActivity.this.mProvince.getText().toString() + EditOrderAddressActivity.this.mCity.getText() + EditOrderAddressActivity.this.mArea.getText();
                EditOrderAddressActivity.this.mPCA.setText(str1);
                localObject = "";
                if (EditOrderAddressActivity.this.isFristLoading)
                {
                  EditOrderAddressActivity.this.isFristLoading = false;
                  if (EditOrderAddressActivity.this.userAddress != null)
                  {
                    str2 = EditOrderAddressActivity.this.userAddress.getWhere();
                    if (!TextUtils.isEmpty(str2))
                    {
                      if (TextUtils.isEmpty(str1)) {
                        break label500;
                      }
                      localObject = str2.replace(str1, "");
                    }
                  }
                  EditOrderAddressActivity.this.mWhere.setText((CharSequence)localObject);
                }
                if (EditOrderAddressActivity.this.isLoadingUsedAddress)
                {
                  EditOrderAddressActivity.this.mArea.setEnabled(true);
                  EditOrderAddressActivity.this.mArea2.setEnabled(true);
                  EditOrderAddressActivity.this.mCity.setEnabled(true);
                  EditOrderAddressActivity.this.mCity2.setEnabled(true);
                  EditOrderAddressActivity.this.mProvince2.setEnabled(true);
                  EditOrderAddressActivity.this.mProvince.setEnabled(true);
                  if (!TextUtils.isEmpty(EditOrderAddressActivity.this.usedAddresswhere))
                  {
                    if (TextUtils.isEmpty(str1)) {
                      break label507;
                    }
                    localObject = EditOrderAddressActivity.this.usedAddresswhere.replace(str1, "");
                  }
                  EditOrderAddressActivity.this.mWhere.setText((CharSequence)localObject);
                  EditOrderAddressActivity.this.isLoadingUsedAddress = false;
                }
                EditOrderAddressActivity.this.isAreaLoading = false;
              }
            }
            else
            {
              JSONObject localJSONObject1 = paramJSONArray.getJSONObject(i);
              if (EditOrderAddressActivity.this.currAreaId != localJSONObject1.getInt("Id")) {
                break label494;
              }
              EditOrderAddressActivity.this.mArea.setText(localJSONObject1.getString("Name"));
              EditOrderAddressActivity.this.mArea.setEnabled(true);
              EditOrderAddressActivity.this.mArea2.setEnabled(true);
              k = 1;
              continue;
            }
            EditOrderAddressActivity.this.getTowns(EditOrderAddressActivity.this.currAreaId, paramLong);
            continue;
            i++;
          }
          catch (JSONException localJSONException)
          {
            EditOrderAddressActivity.this.isAreaLoading = false;
            return;
          }
          label494:
          continue;
          label500:
          Object localObject = str2;
          continue;
          label507:
          localObject = str1;
        }
      }
    });
  }
  
  private void updateCityView(final JSONArray paramJSONArray, final long paramLong)
  {
    post(new Runnable()
    {
      public void run()
      {
        for (;;)
        {
          int j;
          JSONArray localJSONArray;
          Object localObject;
          int i;
          try
          {
            if ((paramJSONArray != null) && (paramJSONArray.length() > 0))
            {
              j = 0;
              int k = paramJSONArray.length();
              int m = 0;
              if (j >= k)
              {
                if (m == 0)
                {
                  JSONObject localJSONObject3 = paramJSONArray.getJSONObject(0);
                  EditOrderAddressActivity.this.currCityId = localJSONObject3.getInt("Id");
                  EditOrderAddressActivity.this.mCity.setText(localJSONObject3.getString("Name"));
                  EditOrderAddressActivity.this.mCity.setEnabled(true);
                  EditOrderAddressActivity.this.mCity2.setEnabled(true);
                }
                EditOrderAddressActivity.this.isCityLoading = false;
                EditOrderAddressActivity.this.getArea(EditOrderAddressActivity.this.currCityId, paramLong);
                EditOrderAddressActivity.this.mConfirmAddr.setEnabled(true);
                return;
              }
              JSONObject localJSONObject2 = paramJSONArray.getJSONObject(j);
              if (EditOrderAddressActivity.this.currCityId != localJSONObject2.getInt("Id")) {
                break label431;
              }
              EditOrderAddressActivity.this.mCity.setText(localJSONObject2.getString("Name"));
              EditOrderAddressActivity.this.mCity.setEnabled(true);
              EditOrderAddressActivity.this.mCity2.setEnabled(true);
              m = 1;
              continue;
            }
            localJSONArray = EditOrderAddressActivity.this.jdProvinces.getJSONArray("Areas");
            localObject = "";
            i = 0;
            if (i >= localJSONArray.length())
            {
              EditOrderAddressActivity.this.mPCA.setText((CharSequence)localObject);
              EditOrderAddressActivity.this.mTown.setText("");
              EditOrderAddressActivity.this.mTown.setVisibility(8);
              EditOrderAddressActivity.this.mTown2.setVisibility(8);
              EditOrderAddressActivity.this.mCity.setText((CharSequence)localObject);
              EditOrderAddressActivity.this.mCity.setEnabled(false);
              EditOrderAddressActivity.this.mCity2.setEnabled(false);
              EditOrderAddressActivity.this.mArea.setText((CharSequence)localObject);
              EditOrderAddressActivity.this.mArea.setEnabled(false);
              EditOrderAddressActivity.this.mArea2.setEnabled(false);
              EditOrderAddressActivity.this.isCityLoading = false;
              EditOrderAddressActivity.this.mConfirmAddr.setEnabled(false);
              return;
            }
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
            return;
          }
          JSONObject localJSONObject1 = localJSONArray.getJSONObject(i);
          if (EditOrderAddressActivity.this.currProvinceId == localJSONObject1.getInt("Id"))
          {
            String str = localJSONObject1.getString("Name");
            localObject = str;
          }
          else
          {
            i++;
            continue;
            label431:
            j++;
          }
        }
      }
    });
  }
  
  private void updateProvincesView(final JSONArray paramJSONArray)
  {
    post(new Runnable()
    {
      public void run()
      {
        int i = 0;
        try
        {
          for (;;)
          {
            int j = paramJSONArray.length();
            int k = 0;
            if (i >= j) {}
            for (;;)
            {
              if (k == 0)
              {
                JSONObject localJSONObject2 = paramJSONArray.getJSONObject(0);
                EditOrderAddressActivity.this.currProvinceId = localJSONObject2.getInt("Id");
                EditOrderAddressActivity.this.mProvince.setText(localJSONObject2.getString("Name"));
                EditOrderAddressActivity.this.mProvince.setEnabled(true);
                EditOrderAddressActivity.this.mProvince2.setEnabled(true);
              }
              EditOrderAddressActivity.this.getCity(EditOrderAddressActivity.this.currProvinceId);
              return;
              JSONObject localJSONObject1 = paramJSONArray.getJSONObject(i);
              if (EditOrderAddressActivity.this.currProvinceId != localJSONObject1.getInt("Id")) {
                break;
              }
              EditOrderAddressActivity.this.mProvince.setText(localJSONObject1.getString("Name"));
              EditOrderAddressActivity.this.mProvince.setEnabled(true);
              EditOrderAddressActivity.this.mProvince2.setEnabled(true);
              k = 1;
            }
            i++;
          }
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
    });
  }
  
  private void updateTownsView(final JSONObject paramJSONObject)
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          JSONObject localJSONObject1 = paramJSONObject;
          JSONArray localJSONArray = null;
          if (localJSONObject1 != null)
          {
            boolean bool = paramJSONObject.isNull("Areas");
            localJSONArray = null;
            if (!bool) {
              localJSONArray = paramJSONObject.getJSONArray("Areas");
            }
          }
          String str1 = "";
          StringBuffer localStringBuffer = new StringBuffer(EditOrderAddressActivity.this.mProvince.getText().toString() + EditOrderAddressActivity.this.mCity.getText() + EditOrderAddressActivity.this.mArea.getText());
          int i;
          int k;
          String str2;
          if ((localJSONArray != null) && (localJSONArray.length() > 0))
          {
            i = 0;
            int j = localJSONArray.length();
            k = 0;
            if (i >= j) {
              if (EditOrderAddressActivity.this.isLoadingUsedAddress)
              {
                str2 = "";
                if (TextUtils.isEmpty(EditOrderAddressActivity.this.usedAddresswhere)) {
                  break label779;
                }
                if (TextUtils.isEmpty(localStringBuffer.toString())) {
                  break label521;
                }
                str2 = EditOrderAddressActivity.this.usedAddresswhere.replace(localStringBuffer.toString(), "");
                break label779;
              }
            }
          }
          for (;;)
          {
            int m;
            if (m >= localJSONArray.length())
            {
              label205:
              if (k == 0)
              {
                JSONObject localJSONObject3 = localJSONArray.getJSONObject(0);
                EditOrderAddressActivity.this.currTownsId = localJSONObject3.getInt("Id");
                str1 = localJSONObject3.getString("Name");
                EditOrderAddressActivity.this.mTown.setText(str1);
                EditOrderAddressActivity.this.mTown.setEnabled(true);
                EditOrderAddressActivity.this.mTown2.setEnabled(true);
              }
              EditOrderAddressActivity.this.mTown.setText(str1);
              EditOrderAddressActivity.this.mTown.setEnabled(true);
              EditOrderAddressActivity.this.mTown2.setEnabled(true);
              EditOrderAddressActivity.this.mTown.setVisibility(0);
              EditOrderAddressActivity.this.mTown2.setVisibility(0);
            }
            String[] arrayOfString;
            CharSequence[] arrayOfCharSequence;
            String str3;
            for (;;)
            {
              EditOrderAddressActivity.this.mPCA.setText(localStringBuffer.toString() + str1);
              arrayOfString = new String[2];
              arrayOfString[0] = localStringBuffer.toString();
              arrayOfString[1] = str1;
              arrayOfCharSequence = new CharSequence[] { "", "" };
              str3 = "";
              if (!EditOrderAddressActivity.this.isFristLoading) {
                break label640;
              }
              EditOrderAddressActivity.this.isFristLoading = false;
              if (EditOrderAddressActivity.this.userAddress != null)
              {
                String str4 = EditOrderAddressActivity.this.userAddress.getWhere();
                if (!TextUtils.isEmpty(str4)) {
                  str3 = TextUtils.replace(str4, arrayOfString, arrayOfCharSequence).toString();
                }
              }
              EditOrderAddressActivity.this.mWhere.setText(str3);
              return;
              JSONObject localJSONObject2 = localJSONArray.getJSONObject(i);
              if (EditOrderAddressActivity.this.currTownsId != localJSONObject2.getInt("Id")) {
                break label786;
              }
              str1 = localJSONObject2.getString("Name");
              k = 1;
              break;
              label521:
              str2 = EditOrderAddressActivity.this.usedAddresswhere;
              break label779;
              JSONObject localJSONObject4 = localJSONArray.getJSONObject(m);
              if (!str2.startsWith(localJSONObject4.getString("Name"))) {
                break label792;
              }
              EditOrderAddressActivity.this.currTownsId = localJSONObject4.getInt("Id");
              str1 = localJSONObject4.getString("Name");
              k = 1;
              break label205;
              EditOrderAddressActivity.this.mTown.setText("");
              EditOrderAddressActivity.this.mTown.setVisibility(8);
              EditOrderAddressActivity.this.mTown2.setVisibility(8);
              EditOrderAddressActivity.this.jdTowns = null;
              EditOrderAddressActivity.this.currTownsId = -1;
            }
            label640:
            if (EditOrderAddressActivity.this.isLoadingUsedAddress)
            {
              EditOrderAddressActivity.this.mArea.setEnabled(true);
              EditOrderAddressActivity.this.mArea2.setEnabled(true);
              EditOrderAddressActivity.this.mCity.setEnabled(true);
              EditOrderAddressActivity.this.mCity2.setEnabled(true);
              EditOrderAddressActivity.this.mProvince2.setEnabled(true);
              EditOrderAddressActivity.this.mProvince.setEnabled(true);
              if (!TextUtils.isEmpty(EditOrderAddressActivity.this.usedAddresswhere)) {
                str3 = TextUtils.replace(EditOrderAddressActivity.this.usedAddresswhere, arrayOfString, arrayOfCharSequence).toString();
              }
              EditOrderAddressActivity.this.mWhere.setText(str3);
              EditOrderAddressActivity.this.isLoadingUsedAddress = false;
              EditOrderAddressActivity.this.isTownLoading = false;
              return;
              label779:
              m = 0;
            }
            else
            {
              return;
              label786:
              i++;
              break;
              label792:
              m++;
            }
          }
          return;
        }
        catch (JSONException localJSONException) {}
      }
    });
  }
  
  private boolean verificationInputData()
  {
    if (TextUtils.isEmpty(this.sUserName.trim()))
    {
      Toast.makeText(this, "请填写收货人姓名.", 0).show();
      return false;
    }
    if (!CommonUtil.checkUsername(this.sUserName))
    {
      Toast.makeText(this, "您输入的收货人姓名含有特殊字符，请输入英文字符，中文或者数字.", 0).show();
      return false;
    }
    if (TextUtils.isEmpty(this.sProvince))
    {
      Toast.makeText(this, "收货省份有误,请重新选择.", 0).show();
      return false;
    }
    if (this.sProvince.equals("正在加载..."))
    {
      Toast.makeText(this, "收货省份正在加载,请稍后...", 0).show();
      return false;
    }
    if (TextUtils.isEmpty(this.sCity))
    {
      Toast.makeText(this, "收货城市有误,请重新选择.", 0).show();
      return false;
    }
    if (this.sCity.equals("正在加载..."))
    {
      Toast.makeText(this, "收货城市正在加载,请稍后...", 0).show();
      return false;
    }
    if (TextUtils.isEmpty(this.sArea))
    {
      Toast.makeText(this, "收货地区有误,请重新选择.", 0).show();
      return false;
    }
    if (this.sArea.equals("正在加载..."))
    {
      Toast.makeText(this, "收货地区正在加载,请稍后...", 0).show();
      return false;
    }
    if ((TextUtils.isEmpty(this.sMobile.trim())) || (this.sMobile.trim().length() < 10))
    {
      Toast.makeText(this, "您的手机号码未输入或输入错误.", 0).show();
      return false;
    }
    if (TextUtils.isEmpty(this.mPCAString.trim()))
    {
      Toast.makeText(this, "请输入详细地址，如街道，门牌号等", 0).show();
      return false;
    }
    if (((this.isTownLoading) && (this.jdTowns != null) && (this.currTownsId < 0)) || ((this.mTown.getVisibility() == 0) && (this.mTown.getText().equals("正在加载..."))))
    {
      if (this.mTown.getText().equals("正在加载..."))
      {
        Toast.makeText(this, "收货城镇正在加载,请稍后...", 0).show();
        return false;
      }
      Toast.makeText(this, "收货城镇有误,请重新选择.", 0).show();
      return false;
    }
    if ((this.isAreaLoading) || (this.isCityLoading))
    {
      Toast.makeText(this, "数据正在加载,请稍后.", 0).show();
      return false;
    }
    if ((!TextUtils.isEmpty(this.sZip)) && (this.sZip.length() != 6))
    {
      Toast.makeText(this, "邮编格式不正确.", 0).show();
      return false;
    }
    if (this.currCityId < 0)
    {
      Toast.makeText(this, "城市有误,请重新选择", 0).show();
      return false;
    }
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903187);
    this.userAddress = ((UserAddress)getIntent().getSerializableExtra("UserAddress"));
    this.pageType = getIntent().getIntExtra("PageType", 1);
    if ((this.pageType == 4) || (this.pageType == 5)) {
      redrawCurrentAddress();
    }
    initCoponent();
    initAddressId();
    initAddressView();
    if ((!Constants.bAddEasyBuy) && (!Constants.bModifyEasyBuy)) {
      getCartItemInfo();
    }
    getProvices();
    handleClickEvent();
  }
  
  public void onResume()
  {
    super.onResume();
    TextView localTextView = (TextView)findViewById(2131493676);
    localTextView.setFocusable(true);
    localTextView.requestFocus();
    localTextView.setFocusableInTouchMode(true);
  }
  
  public void updateUserInfo()
  {
    Constants.mModifiedUserInfo = new UserInfo();
    Constants.mModifiedUserInfo.setUserName(this.sUserName);
    Constants.mModifiedUserInfo.setUserMobile(this.sMobile);
    Constants.mModifiedUserInfo.setUserZip(this.sZip);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("IdProvince", getProvinceCode(this.sProvince));
      localJSONObject.put("IdCity", getCityCode(this.sCity));
      localJSONObject.put("IdArea", getAreaCode(this.sArea));
      localJSONObject.put("IdTown", this.currTownsId);
      localJSONObject.put("Where", this.sWhere);
      localJSONObject.put("addressDetail", this.sAddressDetail);
      localJSONObject.put("Email", this.sMail);
      label144:
      Constants.mModifiedUserInfo.setUserAddr(localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      break label144;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.EditOrderAddressActivity
 * JD-Core Version:    0.7.0.1
 */