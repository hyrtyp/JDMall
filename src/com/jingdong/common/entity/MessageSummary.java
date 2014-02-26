package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import org.json.JSONException;

public class MessageSummary
  implements Serializable
{
  public static final String ACTION_KEY = "a";
  public static final String CONTENT_KEY = "content";
  public static final String CREATED_KEY = "created";
  public static final String FORWARD_ID_KEY = "forwardId";
  public static final String FORWARD_KEY = "forward";
  public static final String FORWARD_TYPE_KEY = "forwardType";
  public static final String TITLE_KEY = "title";
  private static final long serialVersionUID = -9255573066245678L;
  private String action;
  private String content;
  private String createdTime;
  private String id;
  private String stringType;
  private String title;
  private Integer type;
  
  public MessageSummary(JSONObjectProxy paramJSONObjectProxy)
  {
    if (paramJSONObjectProxy != null)
    {
      setId(paramJSONObjectProxy.getStringOrNull("forwardId"));
      setContent(paramJSONObjectProxy.getStringOrNull("content"));
      setCreatedTime(paramJSONObjectProxy.getStringOrNull("created"));
      setTitle(paramJSONObjectProxy.getStringOrNull("title"));
      setStringType(paramJSONObjectProxy.getStringOrNull("forward"));
      setType(paramJSONObjectProxy.getIntOrNull("forwardType"));
      setAction(paramJSONObjectProxy.getStringOrNull("a"));
    }
  }
  
  public String getAction()
  {
    if (this.action == null) {
      return "";
    }
    return this.action;
  }
  
  public String getContent()
  {
    if (this.createdTime == null) {
      return "";
    }
    return this.content;
  }
  
  public String getCreatedTime()
  {
    if (this.createdTime == null) {
      return "";
    }
    return this.createdTime;
  }
  
  public String getId()
  {
    if (this.createdTime == null) {
      return "";
    }
    return this.id;
  }
  
  public String getJsonObjectString()
  {
    JSONObjectProxy localJSONObjectProxy = new JSONObjectProxy();
    try
    {
      localJSONObjectProxy.put("content", getContent());
      localJSONObjectProxy.put("created", getCreatedTime());
      localJSONObjectProxy.put("msgId", getId());
      localJSONObjectProxy.put("title", getTitle());
      localJSONObjectProxy.put("type", getType());
      localJSONObjectProxy.put("a", getAction());
      label74:
      return localJSONObjectProxy.toString();
    }
    catch (JSONException localJSONException)
    {
      break label74;
    }
  }
  
  public String getStringType()
  {
    return this.stringType;
  }
  
  public String getTitle()
  {
    if (this.title == null) {
      return "";
    }
    return this.title;
  }
  
  public Integer getType()
  {
    if (this.type == null) {
      this.type = Integer.valueOf(-1);
    }
    return this.type;
  }
  
  public void setAction(String paramString)
  {
    this.action = paramString;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setCreatedTime(String paramString)
  {
    this.createdTime = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setStringType(String paramString)
  {
    this.stringType = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(Integer paramInteger)
  {
    this.type = paramInteger;
  }
  
  public String toString()
  {
    return "MessageSummary [id=" + this.id + ", content=" + this.content + ", title=" + this.title + ", createdTime=" + this.createdTime + ", stringType=" + this.stringType + ", type=" + this.type + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.MessageSummary
 * JD-Core Version:    0.7.0.1
 */