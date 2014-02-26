package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import org.json.JSONException;

public class BackExchange
{
  private String action;
  private String description;
  private Integer group;
  private String icon;
  private String name;
  private String url;
  
  public BackExchange(JSONObjectProxy paramJSONObjectProxy)
  {
    setName(paramJSONObjectProxy.getStringOrNull("name"));
    setUrl(paramJSONObjectProxy.getStringOrNull("url"));
    setIcon(paramJSONObjectProxy.getStringOrNull("icon"));
    setDescription(paramJSONObjectProxy.getStringOrNull("description"));
    setGroup(paramJSONObjectProxy.getIntOrNull("group"));
    setAction(paramJSONObjectProxy.getStringOrNull("functionId"));
  }
  
  private static boolean isAdd(BackExchange paramBackExchange)
  {
    return (!TextUtils.isEmpty(paramBackExchange.getUrl())) && (!TextUtils.isEmpty(paramBackExchange.getAction()));
  }
  
  public static ArrayList<BackExchange> toList(JSONArrayPoxy paramJSONArrayPoxy)
  {
    if ((paramJSONArrayPoxy == null) || (paramJSONArrayPoxy.length() < 1)) {
      return null;
    }
    localArrayList = new ArrayList();
    int i = 0;
    try
    {
      while (i < paramJSONArrayPoxy.length())
      {
        BackExchange localBackExchange = new BackExchange(paramJSONArrayPoxy.getJSONObject(i));
        if (isAdd(localBackExchange)) {
          localArrayList.add(localBackExchange);
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
  
  public String getAction()
  {
    return this.action;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public Integer getGroup()
  {
    return this.group;
  }
  
  public String getIcon()
  {
    return this.icon;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public void setAction(String paramString)
  {
    this.action = paramString;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setGroup(Integer paramInteger)
  {
    this.group = paramInteger;
  }
  
  public void setIcon(String paramString)
  {
    this.icon = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.BackExchange
 * JD-Core Version:    0.7.0.1
 */