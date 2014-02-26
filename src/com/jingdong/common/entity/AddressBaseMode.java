package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class AddressBaseMode
  implements Serializable
{
  public static final int DIRECT_WARE = 0;
  private static final long serialVersionUID = -2561495656353479447L;
  private String action;
  private String flag;
  private String functionId;
  private String id;
  private String name;
  private String skuId;
  
  public AddressBaseMode(JSONObjectProxy paramJSONObjectProxy, int paramInt, Object[] paramArrayOfObject)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setId(paramJSONObjectProxy.getStringOrNull("id"));
    setFlag(paramJSONObjectProxy.getStringOrNull("flag"));
    setName(paramJSONObjectProxy.getStringOrNull("name"));
    setAction(paramJSONObjectProxy.getStringOrNull("action"));
    setSkuId(paramJSONObjectProxy.getStringOrNull("skuId"));
    setFunctionId(paramJSONObjectProxy.getStringOrNull("functionId"));
  }
  
  public static ArrayList<AddressBaseMode> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    return toList(paramJSONArrayPoxy, paramInt, null);
  }
  
  public static ArrayList<AddressBaseMode> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt, Object[] paramArrayOfObject)
  {
    localArrayList = new ArrayList();
    if (paramJSONArrayPoxy == null) {}
    for (;;)
    {
      return localArrayList;
      int i = 0;
      try
      {
        while (i < paramJSONArrayPoxy.length())
        {
          AddressBaseMode localAddressBaseMode = new AddressBaseMode(paramJSONArrayPoxy.getJSONObject(i), paramInt, paramArrayOfObject);
          if (!TextUtils.isEmpty(localAddressBaseMode.getName())) {
            localArrayList.add(localAddressBaseMode);
          }
          i++;
        }
        return localArrayList;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public String getAction()
  {
    if (TextUtils.isEmpty(this.action)) {
      return "";
    }
    return this.action;
  }
  
  public String getFlag()
  {
    if (TextUtils.isEmpty(this.flag)) {
      return "";
    }
    return this.flag;
  }
  
  public String getFunctionId()
  {
    if (TextUtils.isEmpty(this.functionId)) {
      return "";
    }
    return this.functionId;
  }
  
  public String getId()
  {
    if (TextUtils.isEmpty(this.id)) {
      return "";
    }
    return this.id;
  }
  
  public String getName()
  {
    if (TextUtils.isEmpty(this.name)) {
      return "";
    }
    return this.name;
  }
  
  public String getSkuId()
  {
    if (TextUtils.isEmpty(this.skuId)) {
      return "";
    }
    return this.skuId;
  }
  
  public void setAction(String paramString)
  {
    this.action = paramString;
  }
  
  public void setFlag(String paramString)
  {
    this.flag = paramString;
  }
  
  public void setFunctionId(String paramString)
  {
    this.functionId = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setSkuId(String paramString)
  {
    this.skuId = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.AddressBaseMode
 * JD-Core Version:    0.7.0.1
 */