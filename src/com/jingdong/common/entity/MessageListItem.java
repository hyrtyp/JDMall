package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class MessageListItem
  extends BaseMessage
  implements Serializable
{
  public static final String ACTION_KEY = "a";
  public static final int ASK_REPLY_NOTIFY = 1;
  public static final int BROADCAST_NOTIFY = 20;
  public static final String CONTENT_KEY = "content";
  public static final int COUPON_NOTIFY = 11;
  public static final String CREATED_KEY = "created";
  public static final int CUSTOM_NOTIFY = 31;
  public static final int MATERIAL_FLOW_NOTIFY = 10;
  public static final String MESSAGE_LIST_KEY = "msgList";
  public static final int PICK_UP_NOTIFY = 3;
  public static final String PIN_KEY = "pin";
  public static final int PRICE_REDUCTION_NOTIFY = 6;
  public static final int PRODUCT_ARRAVIAL_NOTIFY = 5;
  public static final String TITLE_KEY = "title";
  public static final String TYPE_KEY = "type";
  public static final int UN_KNOW_TYPE = -1;
  private static final long serialVersionUID = 8326685900805452736L;
  protected String action;
  protected String content;
  protected String createdTime;
  protected String pin;
  protected String title;
  protected Integer type;
  
  public MessageListItem() {}
  
  public MessageListItem(JSONObjectProxy paramJSONObjectProxy)
  {
    setContent(paramJSONObjectProxy.getStringOrNull("content"));
    setCreatedTime(paramJSONObjectProxy.getStringOrNull("created"));
    setMsgId(paramJSONObjectProxy.getStringOrNull("msgId"));
    setPin(paramJSONObjectProxy.getStringOrNull("pin"));
    setStatus(paramJSONObjectProxy.getIntOrNull("status"));
    setTitle(paramJSONObjectProxy.getStringOrNull("title"));
    setAction(paramJSONObjectProxy.getStringOrNull("a"));
    setType(paramJSONObjectProxy.getIntOrNull("type"));
  }
  
  public static ArrayList<MessageListItem> toList(JSONArrayPoxy paramJSONArrayPoxy)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramJSONArrayPoxy == null) || (paramJSONArrayPoxy.length() < 1)) {}
    for (;;)
    {
      return localArrayList;
      for (int i = 0; i < paramJSONArrayPoxy.length(); i++)
      {
        JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
        if ((localJSONObjectProxy != null) && (localJSONObjectProxy.length() > 0)) {
          localArrayList.add(new MessageListItem(localJSONObjectProxy));
        }
      }
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
    if (this.content == null) {
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
  
  public String getPin()
  {
    if (this.pin == null) {
      return "";
    }
    return this.pin;
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
  
  public boolean isUnread()
  {
    return getStatus().intValue() == 0;
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
  
  public void setPin(String paramString)
  {
    this.pin = paramString;
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
    return "MessageListItem [content=" + this.content + ", createdTime=" + this.createdTime + ", pin=" + this.pin + ", title=" + this.title + ", type=" + this.type + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.MessageListItem
 * JD-Core Version:    0.7.0.1
 */