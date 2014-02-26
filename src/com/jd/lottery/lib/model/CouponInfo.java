package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.persist.json.JSONSerializer;
import org.json.JSONException;
import org.json.JSONObject;

public class CouponInfo
  extends Model
{
  private static final long serialVersionUID = 1L;
  @Key
  private int batchId;
  @Key(optional=true)
  private DateJson beginTime;
  @Key
  private String couponLimitInfo;
  @Key
  private int couponLimitType;
  @Key
  private int couponStyle;
  @Key
  private int couponType;
  @Key
  private int deductType;
  @Key
  private int department;
  @Key
  private double discount;
  @Key(optional=true)
  private DateJson endTime;
  @Key
  private String id;
  @Key
  private String key;
  @Key
  private int orderId;
  @Key
  private String pin;
  @Key
  private double quota;
  @Key
  private int state;
  @Key(optional=true)
  private DateJson useTime;
  
  public static CouponInfo parseModel(JSONObject paramJSONObject)
    throws JSONException
  {
    return (CouponInfo)new JSONSerializer(null).deserialize(paramJSONObject, CouponInfo.class);
  }
  
  public java.util.Date getBeginTime()
  {
    return new java.sql.Date(this.beginTime.time);
  }
  
  public String getCouponLimitInfo()
  {
    return this.couponLimitInfo;
  }
  
  public int getCouponLimitType()
  {
    return this.couponLimitType;
  }
  
  public int getDepartment()
  {
    return this.department;
  }
  
  public double getDiscount()
  {
    return this.discount;
  }
  
  public java.util.Date getEndTime()
  {
    return new java.sql.Date(this.endTime.time);
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public int getState()
  {
    return this.state;
  }
  
  public void setBatchId(int paramInt)
  {
    this.batchId = paramInt;
  }
  
  public void setCouponLimitInfo(String paramString)
  {
    this.couponLimitInfo = paramString;
  }
  
  public void setCouponLimitType(int paramInt)
  {
    this.couponLimitType = paramInt;
  }
  
  public void setCouponStyle(int paramInt)
  {
    this.couponStyle = paramInt;
  }
  
  public void setCouponType(int paramInt)
  {
    this.couponType = paramInt;
  }
  
  public void setDeductType(int paramInt)
  {
    this.deductType = paramInt;
  }
  
  public void setDepartment(int paramInt)
  {
    this.department = paramInt;
  }
  
  public void setDiscount(double paramDouble)
  {
    this.discount = paramDouble;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setKey(String paramString)
  {
    this.key = paramString;
  }
  
  public void setOrderId(int paramInt)
  {
    this.orderId = paramInt;
  }
  
  public void setPin(String paramString)
  {
    this.pin = paramString;
  }
  
  public void setQuota(double paramDouble)
  {
    this.quota = paramDouble;
  }
  
  public void setState(int paramInt)
  {
    this.state = paramInt;
  }
  
  public static class DateJson
    extends Model
  {
    private static final long serialVersionUID = 1L;
    @Key
    private long date;
    @Key
    private long day;
    @Key
    private long hours;
    @Key
    private long minutes;
    @Key
    private long month;
    @Key
    private long seconds;
    @Key
    private long time;
    @Key
    private long timezoneOffset;
    @Key
    private long year;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.CouponInfo
 * JD-Core Version:    0.7.0.1
 */