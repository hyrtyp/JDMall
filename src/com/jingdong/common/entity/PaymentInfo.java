package com.jingdong.common.entity;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PaymentInfo
{
  public static final int GET_BY_SELF = 3;
  public static final int PAY_AFTER_RECEIVE = 1;
  public static final int PAY_ONLINE = 4;
  public static final int POST = 2;
  public static final String get_by_self = "到京东自提";
  public static final String pay_after_receive = "货到付款";
  public static final String post = "邮局汇款";
  private JSONObject jbGet_By_Self = new JSONObject();
  private JSONObject jbPay_After_Receive = new JSONObject();
  private JSONArray jbPaymentDetailInfos = new JSONArray();
  private JSONArray jbPaymentTypes = new JSONArray();
  private JSONObject jbPost = new JSONObject();
  private JSONArray jbPostAddrArray = new JSONArray();
  private JSONObject jbShipments = new JSONObject();
  private JSONObject jdPay_OnLine = new JSONObject();
  public int nSelected = 0;
  public int type = 0;
  
  private JSONObject getPayOnLine()
  {
    return this.jdPay_OnLine;
  }
  
  public static String getPaymentName(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return "货到付款";
    case 3: 
      return "到京东自提";
    case 2: 
      return "邮局汇款";
    }
    return "在线支付";
  }
  
  private void setPayOnline(JSONObject paramJSONObject)
  {
    this.jdPay_OnLine = paramJSONObject;
  }
  
  public JSONObject getBySelf()
  {
    return this.jbGet_By_Self;
  }
  
  public JSONObject getPayAfterReceive()
  {
    return this.jbPay_After_Receive;
  }
  
  public JSONObject getPayMentType(int paramInt)
  {
    JSONObject localJSONObject = new JSONObject();
    switch (paramInt)
    {
    default: 
      return localJSONObject;
    case 1: 
      return getPayAfterReceive();
    case 4: 
      return getPayOnLine();
    case 3: 
      return getBySelf();
    }
    return getPost();
  }
  
  public JSONArray getPaymentDetailInfos()
  {
    return this.jbPaymentDetailInfos;
  }
  
  public JSONArray getPaymentTypes()
  {
    return this.jbPaymentTypes;
  }
  
  public JSONObject getPost()
  {
    return this.jbPost;
  }
  
  public JSONArray getPostArray()
  {
    return this.jbPostAddrArray;
  }
  
  public int getSel()
  {
    if (this.nSelected < 0) {
      return 0;
    }
    return this.nSelected;
  }
  
  public JSONObject getSelectedPaymentType(int paramInt)
  {
    JSONObject localJSONObject = null;
    int i = 0;
    for (;;)
    {
      if (i >= this.jbPaymentTypes.length()) {}
      for (;;)
      {
        return localJSONObject;
        localJSONObject = new JSONObject();
        try
        {
          localJSONObject = this.jbPaymentTypes.getJSONObject(i);
          int j = localJSONObject.getInt("Id");
          if (j != paramInt) {
            i++;
          }
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
          }
        }
      }
    }
  }
  
  public JSONObject getShipments()
  {
    return this.jbShipments;
  }
  
  public void setGetBySelf(JSONObject paramJSONObject)
  {
    this.jbGet_By_Self = paramJSONObject;
  }
  
  public void setPayAfterReceive(JSONObject paramJSONObject)
  {
    this.jbPay_After_Receive = paramJSONObject;
  }
  
  public void setPayMentType(int paramInt, JSONObject paramJSONObject)
  {
    this.type = paramInt;
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      setPayAfterReceive(paramJSONObject);
      return;
    case 4: 
      setPayOnline(paramJSONObject);
      return;
    case 3: 
      setGetBySelf(paramJSONObject);
      return;
    }
    setPost(paramJSONObject);
  }
  
  public void setPaymentDetailInfos(JSONArray paramJSONArray)
  {
    this.jbPaymentDetailInfos = new JSONArray();
    this.jbPaymentDetailInfos = paramJSONArray;
  }
  
  public void setPaymentTypes(JSONArray paramJSONArray)
  {
    this.jbPaymentTypes = new JSONArray();
    this.jbPaymentTypes = paramJSONArray;
  }
  
  public void setPost(JSONObject paramJSONObject)
  {
    this.jbPost = paramJSONObject;
  }
  
  public void setPostArray(JSONArray paramJSONArray)
  {
    this.jbPostAddrArray = paramJSONArray;
  }
  
  public void setSel(int paramInt)
  {
    this.nSelected = paramInt;
  }
  
  public void setShipments(JSONObject paramJSONObject)
  {
    this.jbShipments = paramJSONObject;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.PaymentInfo
 * JD-Core Version:    0.7.0.1
 */