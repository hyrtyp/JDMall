package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.text.DecimalFormat;

public class ProductDetailPrice
  implements Serializable
{
  private static final String TAG = ProductDetailPrice.class.getSimpleName();
  private static final long serialVersionUID = 3249628065815452856L;
  private Boolean display;
  private String name;
  private String value;
  
  public ProductDetailPrice() {}
  
  public ProductDetailPrice(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setName(paramJSONObjectProxy.getStringOrNull("name"));
    setValue(paramJSONObjectProxy.getStringOrNull("value"));
    setDisplay(paramJSONObjectProxy.getBooleanOrNull("display"));
  }
  
  public Boolean getDisplay()
  {
    if (this.display == null) {}
    for (boolean bool = false;; bool = this.display.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public String getName()
  {
    if (TextUtils.isEmpty(this.name)) {
      return "";
    }
    return this.name;
  }
  
  public String getValue()
  {
    try
    {
      if (this.value != null)
      {
        Float localFloat = Float.valueOf(this.value);
        if (localFloat != null)
        {
          if (localFloat.floatValue() <= 0.0F) {
            return "暂无报价";
          }
          String str = new DecimalFormat("0.00").format(localFloat);
          return str;
        }
      }
    }
    catch (Exception localException) {}
    return "暂无报价";
  }
  
  public void setDisplay(Boolean paramBoolean)
  {
    this.display = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ProductDetailPrice
 * JD-Core Version:    0.7.0.1
 */