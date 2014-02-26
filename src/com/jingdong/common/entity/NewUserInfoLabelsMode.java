package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class NewUserInfoLabelsMode
  implements Serializable
{
  public static final int DIRECT_LABELS = 0;
  private static final long serialVersionUID = 1359053837059263180L;
  private Double amount;
  private String key;
  private String name;
  
  public NewUserInfoLabelsMode(JSONObjectProxy paramJSONObjectProxy, int paramInt, Object[] paramArrayOfObject)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setKey(paramJSONObjectProxy.getStringOrNull("key"));
    setName(paramJSONObjectProxy.getStringOrNull("name"));
    try
    {
      setAmount(Double.valueOf(paramJSONObjectProxy.getDouble("amount")));
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  public static ArrayList<NewUserInfoLabelsMode> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    return toList(paramJSONArrayPoxy, paramInt, null);
  }
  
  public static ArrayList<NewUserInfoLabelsMode> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt, Object[] paramArrayOfObject)
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
          NewUserInfoLabelsMode localNewUserInfoLabelsMode = new NewUserInfoLabelsMode(paramJSONArrayPoxy.getJSONObject(i), paramInt, paramArrayOfObject);
          if (!TextUtils.isEmpty(localNewUserInfoLabelsMode.getKey())) {
            localArrayList.add(localNewUserInfoLabelsMode);
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
  
  public Double getAmount()
  {
    return this.amount;
  }
  
  public String getKey()
  {
    return this.key;
  }
  
  public String getName()
  {
    if (TextUtils.isEmpty(this.name)) {
      this.name = "";
    }
    return this.name;
  }
  
  public void setAmount(Double paramDouble)
  {
    this.amount = paramDouble;
  }
  
  public void setKey(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = "";
    }
    this.key = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.NewUserInfoLabelsMode
 * JD-Core Version:    0.7.0.1
 */