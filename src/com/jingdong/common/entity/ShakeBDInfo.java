package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class ShakeBDInfo
  implements Serializable
{
  public static final int SHAKE_SING = 1;
  private static final String TAG = ShakeBDInfo.class.getSimpleName();
  private static final long serialVersionUID = -431460315706245504L;
  private String code;
  private ShakeData data;
  private String type;
  
  public ShakeBDInfo() {}
  
  public ShakeBDInfo(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    }
    JSONObjectProxy localJSONObjectProxy;
    do
    {
      return;
      setCode(paramJSONObjectProxy.getStringOrNull("code"));
      setType(paramJSONObjectProxy.getStringOrNull("type"));
      localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("data");
    } while (localJSONObjectProxy == null);
    setData(new ShakeData(localJSONObjectProxy, 10));
  }
  
  public String getCode()
  {
    if (TextUtils.isEmpty(this.code)) {
      return "";
    }
    return this.code;
  }
  
  public ShakeData getData()
  {
    return this.data;
  }
  
  public String getType()
  {
    if (TextUtils.isEmpty(this.type)) {
      return "";
    }
    return this.type;
  }
  
  public void setCode(String paramString)
  {
    this.code = paramString;
  }
  
  public void setData(ShakeData paramShakeData)
  {
    this.data = paramShakeData;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ShakeBDInfo
 * JD-Core Version:    0.7.0.1
 */