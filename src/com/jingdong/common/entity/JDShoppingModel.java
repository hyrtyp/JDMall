package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class JDShoppingModel
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String activityId;
  private String functionId;
  private String imageUrl;
  private String title;
  private int type;
  
  public JDShoppingModel(JSONObjectProxy paramJSONObjectProxy)
  {
    try
    {
      setTitle(paramJSONObjectProxy.getStringOrNull("title"));
      setImageUrl(paramJSONObjectProxy.getStringOrNull("url"));
      setFunctionId(paramJSONObjectProxy.getStringOrNull("functionId"));
      setType(paramJSONObjectProxy.getIntOrNull("type").intValue());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static ArrayList<JDShoppingModel> toList(JSONArrayPoxy paramJSONArrayPoxy)
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
            localArrayList.add(new JDShoppingModel(localJSONObjectProxy));
          }
          i++;
        }
        return localArrayList;
      }
      catch (JSONException localJSONException) {}
    }
  }
  
  public String getActivityId()
  {
    if (TextUtils.isEmpty(this.activityId)) {
      return String.valueOf("");
    }
    return this.activityId;
  }
  
  public String getFunctionId()
  {
    if (TextUtils.isEmpty(this.functionId)) {
      return String.valueOf("");
    }
    return this.functionId;
  }
  
  public String getImageUrl()
  {
    return this.imageUrl;
  }
  
  public String getTitle()
  {
    if (TextUtils.isEmpty(this.title)) {
      return String.valueOf("");
    }
    return this.title;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public void setActivityId(String paramString)
  {
    this.activityId = paramString;
  }
  
  public void setFunctionId(String paramString)
  {
    this.functionId = paramString;
  }
  
  public void setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JDShoppingModel
 * JD-Core Version:    0.7.0.1
 */