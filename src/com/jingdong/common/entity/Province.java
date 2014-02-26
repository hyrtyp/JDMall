package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class Province
  implements Serializable
{
  public static final int CONSTRUCTOR = 0;
  private static final long serialVersionUID = 1654861964412250256L;
  private String provinceID;
  private String provinceName;
  
  public Province(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setProvinceID(paramJSONObjectProxy.getStringOrNull("label"));
    setProvinceName(paramJSONObjectProxy.getStringOrNull("value"));
  }
  
  public static ArrayList<Province> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    if (paramJSONArrayPoxy == null) {
      return null;
    }
    int i = 0;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        if (i >= paramJSONArrayPoxy.length()) {
          return localObject1;
        }
        if (localObject1 == null) {
          localObject2 = new ArrayList();
        }
      }
      catch (JSONException localJSONException1)
      {
        try
        {
          ((ArrayList)localObject2).add(new Province(paramJSONArrayPoxy.getJSONObject(i), paramInt));
          i++;
          localObject1 = localObject2;
        }
        catch (JSONException localJSONException2)
        {
          return localObject2;
        }
        localJSONException1 = localJSONException1;
        return localObject1;
      }
      Object localObject2 = localObject1;
    }
  }
  
  public String getProvinceID()
  {
    return this.provinceID;
  }
  
  public String getProvinceName()
  {
    return this.provinceName;
  }
  
  public void setProvinceID(String paramString)
  {
    this.provinceID = paramString;
  }
  
  public void setProvinceName(String paramString)
  {
    this.provinceName = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Province
 * JD-Core Version:    0.7.0.1
 */