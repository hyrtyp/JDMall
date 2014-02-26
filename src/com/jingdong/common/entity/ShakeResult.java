package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class ShakeResult
  implements Serializable
{
  public static final String BEAN = "bean";
  public static final String COUPON = "coupon";
  public static final String HOT_SKU = "hot_sku";
  public static final String MORE = "more";
  public static final String NOTHING = "nothing";
  public static final String SKU = "sku";
  public static final String SPECIAL_PRIZE = "special_prize";
  public static final String SPECIAL_SKU = "special_sku";
  private static final String TAG = ShakeData.class.getSimpleName();
  private static final long serialVersionUID = 1086322280075907653L;
  private int code;
  private String currentDate;
  private ShakeData data;
  private String msg;
  private String type;
  private String ver;
  
  public ShakeResult(JSONObjectProxy paramJSONObjectProxy)
  {
    String str1 = paramJSONObjectProxy.getStringOrNull("ver");
    if (TextUtils.equals(str1, "2.0"))
    {
      String str2 = paramJSONObjectProxy.getStringOrNull("type");
      setVer(str1);
      setType(str2);
      setCurrentDate(paramJSONObjectProxy.getStringOrNull("currentDate"));
      setMsg(paramJSONObjectProxy.getStringOrNull("msg"));
      setCode(paramJSONObjectProxy.getIntOrNull("code").intValue());
      JSONObjectProxy localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("data");
      if (localJSONObjectProxy != null) {
        setData(new ShakeData(localJSONObjectProxy, obtainFunctionId(str2)));
      }
    }
  }
  
  private int obtainFunctionId(String paramString)
  {
    int i;
    if (TextUtils.equals(paramString, "sku")) {
      i = 1;
    }
    boolean bool;
    do
    {
      return i;
      if (TextUtils.equals(paramString, "special_sku")) {
        return 2;
      }
      if (TextUtils.equals(paramString, "coupon")) {
        return 3;
      }
      if (TextUtils.equals(paramString, "bean")) {
        return 4;
      }
      if (TextUtils.equals(paramString, "special_prize")) {
        return 8;
      }
      bool = TextUtils.equals(paramString, "hot_sku");
      i = 0;
    } while (!bool);
    return 7;
  }
  
  public int getCode()
  {
    return this.code;
  }
  
  public String getCurrentDate()
  {
    if (TextUtils.isEmpty(this.currentDate)) {
      return "";
    }
    return this.currentDate;
  }
  
  public ShakeData getData()
  {
    return this.data;
  }
  
  public String getMsg()
  {
    if (TextUtils.isEmpty(this.msg)) {
      return "";
    }
    return this.msg;
  }
  
  public String getType()
  {
    if (TextUtils.isEmpty(this.type)) {
      return "";
    }
    return this.type;
  }
  
  public String getVer()
  {
    if (TextUtils.isEmpty(this.ver)) {
      return "";
    }
    return this.ver;
  }
  
  public void setCode(int paramInt)
  {
    this.code = paramInt;
  }
  
  public void setCurrentDate(String paramString)
  {
    this.currentDate = paramString;
  }
  
  public void setData(ShakeData paramShakeData)
  {
    this.data = paramShakeData;
  }
  
  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public void setVer(String paramString)
  {
    this.ver = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ShakeResult
 * JD-Core Version:    0.7.0.1
 */