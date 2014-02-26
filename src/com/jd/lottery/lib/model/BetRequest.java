package com.jd.lottery.lib.model;

import android.net.Uri;
import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.data.Constants.PayType;

public class BetRequest
  extends RequestEntity
{
  private static final String PREFIX_APPENDINFO = "appendinfo";
  private static final String PREFIX_ORDERINFO = "orderinfo";
  private static final String PREFIX_USERINFO = "user";
  private static final long serialVersionUID = -208448869769878143L;
  @Key(name="appendinfo->\035appendissueinfo")
  public String appendIssueinfo;
  @Key(name="orderinfo->\035buyfrom")
  public int buyFrom = 3;
  @Key(name="orderinfo->\035childplaytype", optional=true)
  public String childPlaytype;
  @Key(name="orderinfo->\035couponIds")
  public String couponIds;
  @Key(name="user->\035fullname")
  public String fullName;
  @Key(name="user->\035idcardnumber")
  public String idcardNumber;
  @Key(name="orderinfo->\035issueid")
  public long issueId;
  @Key(name="orderinfo->\035issuename")
  public long issueName;
  @Key(name="orderinfo->\035lotterycategory")
  public int lotteryCategory;
  @Key(name="orderinfo->\035lotterynumber")
  public String lotteryNumber;
  @Key(name="user->\035mobile")
  public String mobile;
  @Key(name="orderinfo->\035multi")
  public int multi;
  @Key(name="orderinfo->\035ordertype")
  public int orderType;
  @Key(name="orderinfo->\035paypassword")
  public String payPassword;
  @Key(name="orderinfo->\035paytype")
  public Constants.PayType payType;
  @Key(name="orderinfo->\035pin")
  public String pin;
  @Key(name="appendinfo->\035plantype")
  public int planType = 0;
  @Key(name="appendinfo->\035stopaward")
  public long stopAward;
  @Key(name="appendinfo->\035stopflag")
  public int stopflag;
  @Key(name="orderinfo->\035totalfee")
  public int totalFee;
  @Key(name="orderinfo->\035totalstake")
  public int totalStake;
  @Key(name="user->\035usertype")
  public int userType;
  
  public BetRequest()
  {
    this.funcid = 2001;
  }
  
  public static Uri getUri(String paramString)
    throws Exception
  {
    BetRequest localBetRequest = new BetRequest();
    localBetRequest.lotteryCategory = 1;
    localBetRequest.pin = paramString;
    localBetRequest.buyFrom = 3;
    localBetRequest.setLotteryCategory(Constants.LotteryType.DoubleColor.getValue());
    localBetRequest.setIssueId(900084396L);
    localBetRequest.setIssueName(2013114L);
    localBetRequest.setOrderType(0);
    localBetRequest.setBuyFrom(1);
    localBetRequest.setPayType(Constants.PayType.PayOnline);
    localBetRequest.setPayPassword("123qwe");
    localBetRequest.setTotalStake(1);
    localBetRequest.setMulti(1);
    localBetRequest.setLotteryNumber("0:020307091827|10");
    localBetRequest.setTotalFee(2);
    localBetRequest.setFullName("中国");
    localBetRequest.setIdcardNumber("130522198706111580");
    localBetRequest.setMobile("15379169713");
    localBetRequest.setUserType(1);
    L.d("@@@@@@@@@222" + localBetRequest.toString());
    return EncryptEntity.getEncryptUri(localBetRequest);
  }
  
  public String getAppendIssueinfo()
  {
    return this.appendIssueinfo;
  }
  
  public int getBuyFrom()
  {
    return this.buyFrom;
  }
  
  public String getChildPlaytype()
  {
    return this.childPlaytype;
  }
  
  public String getCouponIds()
  {
    return this.couponIds;
  }
  
  public String getFullName()
  {
    return this.fullName;
  }
  
  public String getIdcardNumber()
  {
    return this.idcardNumber;
  }
  
  public long getIssueId()
  {
    return this.issueId;
  }
  
  public long getIssueName()
  {
    return this.issueName;
  }
  
  public int getLotteryCategory()
  {
    return this.lotteryCategory;
  }
  
  public String getLotteryNumber()
  {
    return this.lotteryNumber;
  }
  
  public String getMobile()
  {
    return this.mobile;
  }
  
  public int getMulti()
  {
    return this.multi;
  }
  
  public int getOrderType()
  {
    return this.orderType;
  }
  
  public String getPayPassword()
  {
    return this.payPassword;
  }
  
  public Constants.PayType getPayType()
  {
    return this.payType;
  }
  
  public String getPin()
  {
    return this.pin;
  }
  
  public int getPlanType()
  {
    return this.planType;
  }
  
  public long getStopAward()
  {
    return this.stopAward;
  }
  
  public int getStopflag()
  {
    return this.stopflag;
  }
  
  public int getTotalFee()
  {
    return this.totalFee;
  }
  
  public int getTotalStake()
  {
    return this.totalStake;
  }
  
  public Uri getUri()
  {
    L.d("@@@@@@@@@222" + toString());
    return EncryptEntity.getEncryptUri(this);
  }
  
  public int getUserType()
  {
    return this.userType;
  }
  
  public void setAppendIssueinfo(String paramString)
  {
    this.appendIssueinfo = paramString;
  }
  
  public void setBuyFrom(int paramInt)
  {
    this.buyFrom = paramInt;
  }
  
  public void setChildPlaytype(String paramString)
  {
    this.childPlaytype = paramString;
  }
  
  public void setCouponIds(String paramString)
  {
    this.couponIds = paramString;
  }
  
  public void setFullName(String paramString)
  {
    this.fullName = paramString;
  }
  
  public void setIdcardNumber(String paramString)
  {
    this.idcardNumber = paramString;
  }
  
  public void setIssueId(long paramLong)
  {
    this.issueId = paramLong;
  }
  
  public void setIssueName(long paramLong)
  {
    this.issueName = paramLong;
  }
  
  public void setLotteryCategory(int paramInt)
  {
    this.lotteryCategory = paramInt;
  }
  
  public void setLotteryNumber(String paramString)
  {
    this.lotteryNumber = paramString;
  }
  
  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }
  
  public void setMulti(int paramInt)
  {
    this.multi = paramInt;
  }
  
  public void setOrderType(int paramInt)
  {
    this.orderType = paramInt;
  }
  
  public void setPayPassword(String paramString)
  {
    this.payPassword = paramString;
  }
  
  public void setPayType(Constants.PayType paramPayType)
  {
    this.payType = paramPayType;
  }
  
  public void setPin(String paramString)
  {
    this.pin = paramString;
  }
  
  public void setPlanType(int paramInt)
  {
    this.planType = paramInt;
  }
  
  public void setStopAward(long paramLong)
  {
    this.stopAward = paramLong;
  }
  
  public void setStopflag(int paramInt)
  {
    this.stopflag = paramInt;
  }
  
  public void setTotalFee(int paramInt)
  {
    this.totalFee = paramInt;
  }
  
  public void setTotalStake(int paramInt)
  {
    this.totalStake = paramInt;
  }
  
  public void setUserType(int paramInt)
  {
    this.userType = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.BetRequest
 * JD-Core Version:    0.7.0.1
 */