package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import org.json.JSONException;

public class JdGiftCard
{
  public static final int GIFT_CARD;
  private String balance;
  private String endTime;
  private String faceValue;
  private String fromTime;
  private String id;
  private String scope;
  
  public JdGiftCard(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    if (paramJSONObjectProxy == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    }
    setId(paramJSONObjectProxy.getStringOrNull("cardNo"));
    setFaceValue(paramJSONObjectProxy.getStringOrNull("faceValue"));
    setBalance(paramJSONObjectProxy.getStringOrNull("balance"));
    setFromTime(paramJSONObjectProxy.getStringOrNull("fromTime"));
    setEndTime(paramJSONObjectProxy.getStringOrNull("endTime"));
    setScope(paramJSONObjectProxy.getStringOrNull("scope"));
  }
  
  private static boolean isAdd(JdGiftCard paramJdGiftCard)
  {
    return !TextUtils.isEmpty(paramJdGiftCard.getId());
  }
  
  public static ArrayList<JdGiftCard> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    if (paramJSONArrayPoxy == null) {
      localObject = null;
    }
    for (;;)
    {
      return localObject;
      localObject = new ArrayList();
      int i = 0;
      try
      {
        while (i < paramJSONArrayPoxy.length())
        {
          JdGiftCard localJdGiftCard = new JdGiftCard(paramJSONArrayPoxy.getJSONObject(i), paramInt);
          if (isAdd(localJdGiftCard)) {
            ((ArrayList)localObject).add(localJdGiftCard);
          }
          i++;
        }
        return localObject;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public String getBalance()
  {
    if (this.balance == null) {
      return "";
    }
    return this.balance;
  }
  
  public String getEndTime()
  {
    if (this.endTime == null) {
      return "";
    }
    return this.endTime;
  }
  
  public String getFaceValue()
  {
    if (this.faceValue == null) {
      return "";
    }
    return this.faceValue;
  }
  
  public String getFromTime()
  {
    if (this.fromTime == null) {
      return "";
    }
    return this.fromTime;
  }
  
  public String getId()
  {
    if (this.id == null) {
      return "";
    }
    return this.id;
  }
  
  public String getScope()
  {
    if (this.scope == null) {
      return "";
    }
    return this.scope;
  }
  
  public void setBalance(String paramString)
  {
    this.balance = paramString;
  }
  
  public void setEndTime(String paramString)
  {
    this.endTime = paramString;
  }
  
  public void setFaceValue(String paramString)
  {
    this.faceValue = paramString;
  }
  
  public void setFromTime(String paramString)
  {
    this.fromTime = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setScope(String paramString)
  {
    this.scope = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JdGiftCard
 * JD-Core Version:    0.7.0.1
 */