package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;

public class OrderCommodityGift
{
  private static final String SYMBOL_BRACKET_LEFT = "(";
  private static final String SYMBOL_BRACKET_RIGHT = ")";
  public String desc;
  public String id;
  public String name;
  public String num;
  public Integer type;
  
  public OrderCommodityGift(JSONObjectProxy paramJSONObjectProxy)
  {
    try
    {
      setId(paramJSONObjectProxy.getStringOrNull("id"));
      setName(paramJSONObjectProxy.getStringOrNull("name"));
      setNum(paramJSONObjectProxy.getStringOrNull("num"));
      setType(paramJSONObjectProxy.getIntOrNull("type"));
      setDesc(paramJSONObjectProxy.getStringOrNull("desc"));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static ArrayList<OrderCommodityGift> toList(JSONArrayPoxy paramJSONArrayPoxy)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONArrayPoxy == null) {}
    for (;;)
    {
      return localArrayList;
      for (int i = 0; i < paramJSONArrayPoxy.length(); i++)
      {
        JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
        if (localJSONObjectProxy != null) {
          localArrayList.add(new OrderCommodityGift(localJSONObjectProxy));
        }
      }
    }
  }
  
  public String getDesc()
  {
    if (TextUtils.isEmpty(this.desc)) {
      return "";
    }
    return "(" + this.desc + ")";
  }
  
  public String getId()
  {
    if (this.id == null) {
      return "";
    }
    return this.id;
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
  }
  
  public String getNum()
  {
    if (this.num == null) {
      return "";
    }
    return this.num;
  }
  
  public Integer getType()
  {
    if (this.type == null) {
      return Integer.valueOf(-1);
    }
    return this.type;
  }
  
  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNum(String paramString)
  {
    this.num = paramString;
  }
  
  public void setType(Integer paramInteger)
  {
    this.type = paramInteger;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.OrderCommodityGift
 * JD-Core Version:    0.7.0.1
 */