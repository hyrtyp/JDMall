package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class JdVirtualOrder
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String downloadUrl;
  private Integer fileSize;
  private Integer foldFlag;
  private String functionId;
  private String icon;
  private String title;
  private Integer type;
  private String url;
  
  public JdVirtualOrder() {}
  
  public JdVirtualOrder(JSONObjectProxy paramJSONObjectProxy)
  {
    setIcon(paramJSONObjectProxy.getStringOrNull("icon"));
    setFunctionId(paramJSONObjectProxy.getStringOrNull("functionId"));
    setType(paramJSONObjectProxy.getIntOrNull("type"));
    setFoldFlag(paramJSONObjectProxy.getIntOrNull("foldFlag"));
    setUrl(paramJSONObjectProxy.getStringOrNull("url"));
    setTitle(paramJSONObjectProxy.getStringOrNull("title"));
    setDownloadUrl(paramJSONObjectProxy.getStringOrNull("downloadUrl"));
    setFileSize(paramJSONObjectProxy.getIntOrNull("fileSize"));
  }
  
  public static ArrayList<JdVirtualOrder> toList(JSONArrayPoxy paramJSONArrayPoxy)
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
            localArrayList.add(new JdVirtualOrder(localJSONObjectProxy));
          }
          i++;
        }
        return localArrayList;
      }
      catch (JSONException localJSONException) {}
    }
  }
  
  public String getDownloadUrl()
  {
    if (this.downloadUrl == null) {
      return "";
    }
    return this.downloadUrl;
  }
  
  public Integer getFileSize()
  {
    if (this.fileSize == null) {
      return Integer.valueOf(0);
    }
    return this.fileSize;
  }
  
  public int getFoldFlag()
  {
    if (this.foldFlag == null) {
      return -1;
    }
    return this.foldFlag.intValue();
  }
  
  public String getFunctionId()
  {
    if (TextUtils.isEmpty(this.functionId)) {
      return String.valueOf("");
    }
    return this.functionId;
  }
  
  public String getIcon()
  {
    if (TextUtils.isEmpty(this.icon)) {
      return String.valueOf("");
    }
    return this.icon;
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
    if (this.type == null) {
      return -1;
    }
    return this.type.intValue();
  }
  
  public String getUrl()
  {
    if (TextUtils.isEmpty(this.url)) {
      return String.valueOf("");
    }
    return this.url;
  }
  
  public void setDownloadUrl(String paramString)
  {
    this.downloadUrl = paramString;
  }
  
  public void setFileSize(Integer paramInteger)
  {
    this.fileSize = paramInteger;
  }
  
  public void setFoldFlag(Integer paramInteger)
  {
    this.foldFlag = paramInteger;
  }
  
  public void setFunctionId(String paramString)
  {
    this.functionId = paramString;
  }
  
  public void setIcon(String paramString)
  {
    this.icon = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(Integer paramInteger)
  {
    this.type = paramInteger;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JdVirtualOrder
 * JD-Core Version:    0.7.0.1
 */