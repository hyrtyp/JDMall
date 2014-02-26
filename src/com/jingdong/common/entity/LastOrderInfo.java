package com.jingdong.common.entity;

public class LastOrderInfo
{
  public static double dPrice;
  public static double dPromotionPrice;
  public static InvoiceInfo mInvoiceInfo = new InvoiceInfo();
  public static PaymentInfo mPaymentInfo;
  public static String mRemark;
  public static UserInfo mUserInfo = new UserInfo();
  public static YouHuiQuan mYouhuiQuan = new YouHuiQuan();
  public boolean hasOrderBefore = false;
  
  static
  {
    mPaymentInfo = new PaymentInfo();
  }
  
  public LastOrderInfo()
  {
    mUserInfo = new UserInfo();
    mPaymentInfo = new PaymentInfo();
    mInvoiceInfo = new InvoiceInfo();
    mYouhuiQuan = new YouHuiQuan();
  }
  
  public LastOrderInfo(UserInfo paramUserInfo, PaymentInfo paramPaymentInfo, InvoiceInfo paramInvoiceInfo, YouHuiQuan paramYouHuiQuan)
  {
    mUserInfo = paramUserInfo;
    mPaymentInfo = paramPaymentInfo;
    mInvoiceInfo = paramInvoiceInfo;
    mYouhuiQuan = paramYouHuiQuan;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.LastOrderInfo
 * JD-Core Version:    0.7.0.1
 */