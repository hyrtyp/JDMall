package com.jingdong.common.entity;

import java.io.Serializable;

public class BaseMessage
  implements Serializable
{
  public static final String MSG_ID_KEY = "msgId";
  public static final int READED = 1;
  public static final String STATUS_KEY = "status";
  public static final int UN_READ = 0;
  private static final long serialVersionUID = 2432931587235996394L;
  protected String msgId;
  protected Integer status;
  
  public BaseMessage() {}
  
  public BaseMessage(String paramString, Integer paramInteger)
  {
    this.status = paramInteger;
    this.msgId = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    BaseMessage localBaseMessage;
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        localBaseMessage = (BaseMessage)paramObject;
        if (this.msgId != null) {
          break;
        }
      } while (localBaseMessage.msgId == null);
      return false;
    } while (this.msgId.equals(localBaseMessage.msgId));
    return false;
  }
  
  public String getMsgId()
  {
    if (this.msgId == null) {
      return "";
    }
    return this.msgId;
  }
  
  public Integer getStatus()
  {
    if (this.status == null) {
      this.status = Integer.valueOf(0);
    }
    return this.status;
  }
  
  public int hashCode()
  {
    if (this.msgId == null) {}
    for (int i = 0;; i = this.msgId.hashCode()) {
      return i + 31;
    }
  }
  
  public void setMsgId(String paramString)
  {
    this.msgId = paramString;
  }
  
  public void setStatus(Integer paramInteger)
  {
    this.status = paramInteger;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.BaseMessage
 * JD-Core Version:    0.7.0.1
 */