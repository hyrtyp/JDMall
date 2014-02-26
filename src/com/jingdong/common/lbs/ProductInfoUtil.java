package com.jingdong.common.lbs;

import android.content.Context;
import android.text.TextUtils;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.JSONObjectProxy;

public class ProductInfoUtil
{
  private static final String ID = "1";
  private static final String NAME = StringUtil.product_province_beijing;
  private String cityId;
  private String cityName;
  private String districtId;
  private String districtName;
  private HttpGroup httpGroup;
  private UpdateDataListener localListener;
  private String proviceId;
  private String proviceName;
  
  public ProductInfoUtil() {}
  
  public ProductInfoUtil(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.proviceId = paramString1;
    this.cityId = paramString2;
    this.districtId = paramString3;
    this.proviceName = paramString4;
    this.cityName = paramString5;
    this.districtName = paramString6;
  }
  
  public String getCityId()
  {
    if (TextUtils.isEmpty(this.cityId)) {
      return "-1";
    }
    return this.cityId;
  }
  
  public String getCityName()
  {
    return this.cityName;
  }
  
  public String getDistrictId()
  {
    if (TextUtils.isEmpty(this.districtId)) {
      return "-1";
    }
    return this.districtId;
  }
  
  public String getDistrictName()
  {
    return this.districtName;
  }
  
  public String getProviceId()
  {
    if (TextUtils.isEmpty(this.proviceId)) {
      return "1";
    }
    return this.proviceId;
  }
  
  public String getProviceName()
  {
    return this.proviceName;
  }
  
  public void queryProductInfo(Context paramContext, double paramDouble1, double paramDouble2)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("lbs");
    if ((paramDouble1 != -1.0D) && (paramDouble2 != -1.0D))
    {
      localHttpSetting.putJsonParam("lat", paramDouble1);
      localHttpSetting.putJsonParam("lng", paramDouble2);
    }
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy.getStringOrNull("provinceId") != null)
        {
          ProductInfoUtil.this.setProviceId(localJSONObjectProxy.getStringOrNull("provinceId"));
          ProductInfoUtil.this.setCityId(localJSONObjectProxy.getStringOrNull("cityId"));
          ProductInfoUtil.this.setDistrictId(localJSONObjectProxy.getStringOrNull("districtId"));
          ProductInfoUtil.this.setProviceName(localJSONObjectProxy.getStringOrNull("provinceName"));
          ProductInfoUtil.this.setCityName(localJSONObjectProxy.getStringOrNull("cityName"));
          ProductInfoUtil.this.setDistrictName(localJSONObjectProxy.getStringOrNull("districtName"));
          ProductInfoUtil.this.localListener.onFinish(new ProductInfoUtil(ProductInfoUtil.this.getProviceId(), ProductInfoUtil.this.getCityId(), ProductInfoUtil.this.getDistrictId(), ProductInfoUtil.this.getProviceName(), ProductInfoUtil.this.getCityName(), ProductInfoUtil.this.getDistrictName()), null);
          return;
        }
        String str = localJSONObjectProxy.getStringOrNull("msg");
        ProductInfoUtil.this.localListener.onFinish(null, str);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        ProductInfoUtil.this.localListener.onFinish(null, StringUtil.gps_location_fail);
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    if (this.httpGroup == null)
    {
      HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
      localHttpGroupSetting.setType(1000);
      this.httpGroup = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
      this.httpGroup.add(localHttpSetting);
      return;
    }
    this.httpGroup.add(localHttpSetting);
  }
  
  public void setCityId(String paramString)
  {
    this.cityId = paramString;
  }
  
  public void setCityName(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.cityName = "";
      return;
    }
    this.cityName = paramString;
  }
  
  public void setDistrictId(String paramString)
  {
    this.districtId = paramString;
  }
  
  public void setDistrictName(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.districtName = "";
      return;
    }
    this.districtName = paramString;
  }
  
  public void setInfoListener(UpdateDataListener paramUpdateDataListener)
  {
    this.localListener = paramUpdateDataListener;
  }
  
  public void setProviceId(String paramString)
  {
    this.proviceId = paramString;
  }
  
  public void setProviceName(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.proviceName = StringUtil.product_province_beijing;
      return;
    }
    this.proviceName = paramString;
  }
  
  public static abstract interface UpdateDataListener
  {
    public abstract void onFinish(ProductInfoUtil paramProductInfoUtil, String paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.lbs.ProductInfoUtil
 * JD-Core Version:    0.7.0.1
 */