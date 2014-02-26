package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class MessageDetail
  extends MessageListItem
  implements Serializable
{
  public static final String ASK_REPLY_CONTENT_KEY = "content";
  public static final String ASK_REPLY_PIN_KEY = "pin";
  public static final String ASK_REPLY_REPLY_TIME_KEY = "replyDate";
  public static final String ASK_REPLY_TITLE_KEY = "title";
  public static final String ASK_REPLY_WARE_ID_KEY = "wareId";
  public static final String ASK_REPLY_WARE_NAME_KEY = "wname";
  public static final String MESSAG_LIST_ITEM_KEY = "msgDetail";
  public static final String MESSA_COMMMON_KEY = "common";
  public static final String MESSA_OTHER_KEY = "others";
  public static final String NEW_PRICE_KEY = "newPrice";
  public static final String OLD_PRICE_KEY = "oldPrice";
  public static final String ORDER_ID_KEY = "orderId";
  public static final String PRODUCT_AD_WORAD_KEY = "adword";
  public static final String PRODUCT_ID_KEY = "wareId";
  public static final String PRODUCT_IMAGE_URL_KEY = "imageurl";
  public static final String PRODUCT_NAME_KEY = "wname";
  public static final String PRODUCT_URL_KEY = "productURL";
  public static final String PUBC_NUM_KEY = "pubcNum";
  private static final long serialVersionUID = 786258058061499534L;
  private String askReplyContent;
  private String askReplyPin;
  private String askReplyTime;
  private String askReplyTitle;
  private boolean isHasAction = false;
  private String newPrice;
  private String oldPrice;
  private String orderId;
  private String productAdWard;
  private String productId;
  private String productImageUrl;
  private String productName;
  private String productUrl;
  private String pubcNum;
  
  public MessageDetail(JSONObjectProxy paramJSONObjectProxy1, JSONObjectProxy paramJSONObjectProxy2)
  {
    super(paramJSONObjectProxy1);
    if (!TextUtils.isEmpty(getAction())) {
      setHasAction(true);
    }
    if (paramJSONObjectProxy2 == null) {
      return;
    }
    setHasAction(true);
    switch (getType().intValue())
    {
    case 2: 
    case 4: 
    case 7: 
    case 8: 
    case 9: 
    default: 
      return;
    case 1: 
      setAskReplyContent(paramJSONObjectProxy2.getStringOrNull("content"));
      setAskReplyPin(paramJSONObjectProxy2.getStringOrNull("pin"));
      setAskReplyTitle(paramJSONObjectProxy2.getStringOrNull("title"));
      setAskReplyTime(paramJSONObjectProxy2.getStringOrNull("replyDate"));
      setProductId(paramJSONObjectProxy2.getStringOrNull("wareId"));
      setProductAdWard(paramJSONObjectProxy2.getStringOrNull("adword"));
      setProductImageUrl(paramJSONObjectProxy2.getStringOrNull("imageurl"));
      setProductName(paramJSONObjectProxy2.getStringOrNull("wname"));
      return;
    case 6: 
      setNewPrice(paramJSONObjectProxy2.getStringOrNull("newPrice"));
      setOldPrice(paramJSONObjectProxy2.getStringOrNull("oldPrice"));
      setProductId(paramJSONObjectProxy2.getStringOrNull("wareId"));
      setProductName(paramJSONObjectProxy2.getStringOrNull("wname"));
      setProductUrl(paramJSONObjectProxy2.getStringOrNull("productURL"));
      setProductAdWard(paramJSONObjectProxy2.getStringOrNull("adword"));
      setProductImageUrl(paramJSONObjectProxy2.getStringOrNull("imageurl"));
      return;
    case 3: 
    case 10: 
      setOrderId(paramJSONObjectProxy2.getStringOrNull("orderId"));
      setPubcNum(paramJSONObjectProxy2.getStringOrNull("pubcNum"));
      return;
    }
    setProductId(paramJSONObjectProxy2.getStringOrNull("wareId"));
    setProductName(paramJSONObjectProxy2.getStringOrNull("wname"));
    setProductUrl(paramJSONObjectProxy2.getStringOrNull("productURL"));
    setProductAdWard(paramJSONObjectProxy2.getStringOrNull("adword"));
    setProductImageUrl(paramJSONObjectProxy2.getStringOrNull("imageurl"));
  }
  
  public String getAskReplyContent()
  {
    return this.askReplyContent;
  }
  
  public String getAskReplyPin()
  {
    return this.askReplyPin;
  }
  
  public String getAskReplyTime()
  {
    return this.askReplyTime;
  }
  
  public String getAskReplyTitle()
  {
    return this.askReplyTitle;
  }
  
  public String getNewPrice()
  {
    return this.newPrice;
  }
  
  public String getOldPrice()
  {
    return this.oldPrice;
  }
  
  public String getOrderId()
  {
    return this.orderId;
  }
  
  public String getProductAdWard()
  {
    if (this.productAdWard == null) {
      return "";
    }
    return this.productAdWard;
  }
  
  public String getProductId()
  {
    return this.productId;
  }
  
  public String getProductImageUrl()
  {
    return this.productImageUrl;
  }
  
  public String getProductName()
  {
    if (this.productName == null) {
      return "";
    }
    return this.productName;
  }
  
  public String getProductUrl()
  {
    return this.productUrl;
  }
  
  public String getPubcNum()
  {
    return this.pubcNum;
  }
  
  public boolean isHasAction()
  {
    return this.isHasAction;
  }
  
  public void setAskReplyContent(String paramString)
  {
    this.askReplyContent = paramString;
  }
  
  public void setAskReplyPin(String paramString)
  {
    this.askReplyPin = paramString;
  }
  
  public void setAskReplyTime(String paramString)
  {
    this.askReplyTime = paramString;
  }
  
  public void setAskReplyTitle(String paramString)
  {
    this.askReplyTitle = paramString;
  }
  
  public void setHasAction(boolean paramBoolean)
  {
    this.isHasAction = paramBoolean;
  }
  
  public void setNewPrice(String paramString)
  {
    this.newPrice = paramString;
  }
  
  public void setOldPrice(String paramString)
  {
    this.oldPrice = paramString;
  }
  
  public void setOrderId(String paramString)
  {
    this.orderId = paramString;
  }
  
  public void setProductAdWard(String paramString)
  {
    this.productAdWard = paramString;
  }
  
  public void setProductId(String paramString)
  {
    this.productId = paramString;
  }
  
  public void setProductImageUrl(String paramString)
  {
    this.productImageUrl = paramString;
  }
  
  public void setProductName(String paramString)
  {
    this.productName = paramString;
  }
  
  public void setProductUrl(String paramString)
  {
    this.productUrl = paramString;
  }
  
  public void setPubcNum(String paramString)
  {
    this.pubcNum = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.MessageDetail
 * JD-Core Version:    0.7.0.1
 */