package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONObject;

public class DefaultEasyTempOrderInfo
  extends LastOrderInfo
{
  static JSONObject jbBody;
  static JSONObject jbCartStr;
  static JSONObject jbOrderStr;
  static JSONObject jbSourceStr;
  public static JSONObjectProxy jsonDefaultTemp;
  public static JSONObjectProxy jsonTemp;
  public static Long sTempId;
  public static String sTempName;
  static String sTotalMoney;
  
  public DefaultEasyTempOrderInfo() {}
  
  public DefaultEasyTempOrderInfo(UserInfo paramUserInfo, PaymentInfo paramPaymentInfo, InvoiceInfo paramInvoiceInfo, YouHuiQuan paramYouHuiQuan)
  {
    super(paramUserInfo, paramPaymentInfo, paramInvoiceInfo, paramYouHuiQuan);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.DefaultEasyTempOrderInfo
 * JD-Core Version:    0.7.0.1
 */