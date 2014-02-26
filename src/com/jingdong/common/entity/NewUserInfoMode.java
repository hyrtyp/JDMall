package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class NewUserInfoMode
  implements Serializable
{
  public static final int DIRECT_WARE = 0;
  private static final long serialVersionUID = -3792101962146302065L;
  private String birthday;
  private int city;
  private String companys;
  private int county;
  private String email;
  private String homePage;
  private int imgFlag;
  private String imgUrl;
  private String ipAddress;
  private String lastTime;
  private String msn;
  private String petName;
  private int province;
  private String qq;
  private String regIp;
  private String regTime;
  private String remark;
  private int schoolId;
  private int schoolYn;
  private String secoSchool;
  private int sex;
  private String uclass;
  private String unColleger;
  private String unickName;
  private long userId;
  private String userName;
  
  public NewUserInfoMode(JSONObjectProxy paramJSONObjectProxy)
  {
    setUserId(paramJSONObjectProxy.getLongOrNull("userId").longValue());
    setUnickName(paramJSONObjectProxy.getStringOrNull("unickName"));
    setUserName(paramJSONObjectProxy.getStringOrNull("userName"));
    setPetName(paramJSONObjectProxy.getStringOrNull("petName"));
    setUclass(paramJSONObjectProxy.getStringOrNull("uclass"));
    setSex(paramJSONObjectProxy.getIntOrNull("sex").intValue());
    setProvince(paramJSONObjectProxy.getIntOrNull("province").intValue());
    setCity(paramJSONObjectProxy.getIntOrNull("city").intValue());
    setCounty(paramJSONObjectProxy.getIntOrNull("county").intValue());
    setEmail(paramJSONObjectProxy.getStringOrNull("email"));
    setLastTime(paramJSONObjectProxy.getStringOrNull("lastTime"));
    setIpAddress(paramJSONObjectProxy.getStringOrNull("ipAddress"));
    setRegTime(paramJSONObjectProxy.getStringOrNull("regTime"));
    setRegIp(paramJSONObjectProxy.getStringOrNull("regIp"));
    setSchoolId(paramJSONObjectProxy.getIntOrNull("schoolId").intValue());
    setSchoolYn(paramJSONObjectProxy.getIntOrNull("schoolYn").intValue());
    setRemark(paramJSONObjectProxy.getStringOrNull("remark"));
    setMsn(paramJSONObjectProxy.getStringOrNull("msn"));
    setBirthday(paramJSONObjectProxy.getStringOrNull("birthday"));
    setUnColleger(paramJSONObjectProxy.getStringOrNull("unColleger"));
    setCompanys(paramJSONObjectProxy.getStringOrNull("companys"));
    setSecoSchool(paramJSONObjectProxy.getStringOrNull("secoSchool"));
    setQq(paramJSONObjectProxy.getStringOrNull("qq"));
    setHomePage(paramJSONObjectProxy.getStringOrNull("homePage"));
    setImgUrl(paramJSONObjectProxy.getStringOrNull("imgUrl"));
    setImgFlag(paramJSONObjectProxy.getIntOrNull("imgFlag").intValue());
  }
  
  public String getBirthday()
  {
    if (TextUtils.isEmpty(this.birthday)) {
      this.birthday = "";
    }
    return this.birthday;
  }
  
  public int getCity()
  {
    return this.city;
  }
  
  public String getCompanys()
  {
    if (TextUtils.isEmpty(this.companys)) {
      this.companys = "";
    }
    return this.companys;
  }
  
  public int getCounty()
  {
    return this.county;
  }
  
  public String getEmail()
  {
    if (TextUtils.isEmpty(this.email)) {
      this.email = "";
    }
    return this.email;
  }
  
  public String getHomePage()
  {
    if (TextUtils.isEmpty(this.homePage)) {
      this.homePage = "";
    }
    return this.homePage;
  }
  
  public int getImgFlag()
  {
    return this.imgFlag;
  }
  
  public String getImgUrl()
  {
    if (TextUtils.isEmpty(this.imgUrl)) {
      this.imgUrl = "";
    }
    return this.imgUrl;
  }
  
  public String getIpAddress()
  {
    if (TextUtils.isEmpty(this.ipAddress)) {
      this.ipAddress = "";
    }
    return this.ipAddress;
  }
  
  public String getLastTime()
  {
    if (TextUtils.isEmpty(this.lastTime)) {
      this.lastTime = "";
    }
    return this.lastTime;
  }
  
  public String getMsn()
  {
    if (TextUtils.isEmpty(this.msn)) {
      this.msn = "";
    }
    return this.msn;
  }
  
  public String getPetName()
  {
    if (TextUtils.isEmpty(this.petName)) {
      this.petName = "";
    }
    return this.petName;
  }
  
  public int getProvince()
  {
    return this.province;
  }
  
  public String getQq()
  {
    if (TextUtils.isEmpty(this.qq)) {
      this.qq = "";
    }
    return this.qq;
  }
  
  public String getRegIp()
  {
    if (TextUtils.isEmpty(this.regIp)) {
      this.regIp = "";
    }
    return this.regIp;
  }
  
  public String getRegTime()
  {
    if (TextUtils.isEmpty(this.regTime)) {
      this.regTime = "";
    }
    return this.regTime;
  }
  
  public String getRemark()
  {
    if (TextUtils.isEmpty(this.remark)) {
      this.remark = "";
    }
    return this.remark;
  }
  
  public int getSchoolId()
  {
    return this.schoolId;
  }
  
  public int getSchoolYn()
  {
    return this.schoolYn;
  }
  
  public String getSecoSchool()
  {
    if (TextUtils.isEmpty(this.secoSchool)) {
      this.secoSchool = "";
    }
    return this.secoSchool;
  }
  
  public int getSex()
  {
    return this.sex;
  }
  
  public String getUclass()
  {
    if (TextUtils.isEmpty(this.uclass)) {
      this.uclass = "";
    }
    return this.uclass;
  }
  
  public String getUnColleger()
  {
    if (TextUtils.isEmpty(this.unColleger)) {
      this.unColleger = "";
    }
    return this.unColleger;
  }
  
  public String getUnickName()
  {
    if (TextUtils.isEmpty(this.unickName)) {
      this.unickName = "";
    }
    return this.unickName;
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public String getUserName()
  {
    if (TextUtils.isEmpty(this.userName)) {
      this.userName = "";
    }
    return this.userName;
  }
  
  public void setBirthday(String paramString)
  {
    this.birthday = paramString;
  }
  
  public void setCity(int paramInt)
  {
    this.city = paramInt;
  }
  
  public void setCompanys(String paramString)
  {
    this.companys = paramString;
  }
  
  public void setCounty(int paramInt)
  {
    this.county = paramInt;
  }
  
  public void setEmail(String paramString)
  {
    this.email = paramString;
  }
  
  public void setHomePage(String paramString)
  {
    this.homePage = paramString;
  }
  
  public void setImgFlag(int paramInt)
  {
    this.imgFlag = paramInt;
  }
  
  public void setImgUrl(String paramString)
  {
    this.imgUrl = paramString;
  }
  
  public void setIpAddress(String paramString)
  {
    this.ipAddress = paramString;
  }
  
  public void setLastTime(String paramString)
  {
    this.lastTime = paramString;
  }
  
  public void setMsn(String paramString)
  {
    this.msn = paramString;
  }
  
  public void setPetName(String paramString)
  {
    this.petName = paramString;
  }
  
  public void setProvince(int paramInt)
  {
    this.province = paramInt;
  }
  
  public void setQq(String paramString)
  {
    this.qq = paramString;
  }
  
  public void setRegIp(String paramString)
  {
    this.regIp = paramString;
  }
  
  public void setRegTime(String paramString)
  {
    this.regTime = paramString;
  }
  
  public void setRemark(String paramString)
  {
    this.remark = paramString;
  }
  
  public void setSchoolId(int paramInt)
  {
    this.schoolId = paramInt;
  }
  
  public void setSchoolYn(int paramInt)
  {
    this.schoolYn = paramInt;
  }
  
  public void setSecoSchool(String paramString)
  {
    this.secoSchool = paramString;
  }
  
  public void setSex(int paramInt)
  {
    this.sex = paramInt;
  }
  
  public void setUclass(String paramString)
  {
    this.uclass = paramString;
  }
  
  public void setUnColleger(String paramString)
  {
    this.unColleger = paramString;
  }
  
  public void setUnickName(String paramString)
  {
    this.unickName = paramString;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.NewUserInfoMode
 * JD-Core Version:    0.7.0.1
 */