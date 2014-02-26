package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class JDColorProductModel
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String cateId;
  private String colorValue;
  private String id;
  private String imageUrl;
  
  public JDColorProductModel(JSONObjectProxy paramJSONObjectProxy)
  {
    try
    {
      setId(paramJSONObjectProxy.getStringOrNull("wareId"));
      setImageUrl(paramJSONObjectProxy.getStringOrNull("imageUrl"));
      setCateId(paramJSONObjectProxy.getStringOrNull("cateId"));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public JDColorProductModel(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    try
    {
      setId(paramJSONObjectProxy.getStringOrNull("wareId"));
      setImageUrl(paramJSONObjectProxy.getStringOrNull("imageUrl"));
      setCateId(paramJSONObjectProxy.getStringOrNull("cateId"));
      setColorValue(paramString);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static ArrayList<JDColorProductModel> toList(JSONArrayPoxy paramJSONArrayPoxy)
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
          JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObject(i);
          if (localJSONObjectProxy != null) {
            localArrayList.add(new JDColorProductModel(localJSONObjectProxy));
          }
          i++;
        }
        return localArrayList;
      }
      catch (JSONException localJSONException) {}
    }
  }
  
  public static ArrayList<JDColorProductModel> toList(JSONArrayPoxy paramJSONArrayPoxy, String paramString)
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
          JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObject(i);
          if (localJSONObjectProxy != null) {
            localArrayList.add(new JDColorProductModel(localJSONObjectProxy, paramString));
          }
          i++;
        }
        return localArrayList;
      }
      catch (JSONException localJSONException) {}
    }
  }
  
  public String getCateId()
  {
    if (TextUtils.isEmpty(this.cateId)) {
      return "";
    }
    return this.cateId;
  }
  
  public String getColorValue()
  {
    if (TextUtils.isEmpty(this.colorValue)) {
      return "";
    }
    return this.colorValue;
  }
  
  public String getId()
  {
    if (TextUtils.isEmpty(this.id)) {
      return "";
    }
    return this.id;
  }
  
  public String getImageUrl()
  {
    if (TextUtils.isEmpty(this.imageUrl)) {
      return "";
    }
    return this.imageUrl;
  }
  
  public void setCateId(String paramString)
  {
    this.cateId = paramString;
  }
  
  public void setColorValue(String paramString)
  {
    this.colorValue = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JDColorProductModel
 * JD-Core Version:    0.7.0.1
 */