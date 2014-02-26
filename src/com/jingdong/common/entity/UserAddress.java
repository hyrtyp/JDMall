package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class UserAddress
  implements Serializable
{
  public static final int TYPE_ID_EASY_GO = 0;
  private static final long serialVersionUID = -6569387513598987874L;
  private String addressDetail;
  private String email;
  private Integer id;
  private Integer idArea;
  private Integer idCity;
  private Integer idProvince;
  private Integer idTown;
  private Boolean isNoIdTown;
  private String message;
  private String mobile;
  private String name;
  private String pin;
  private Integer typeId;
  private String where;
  private String zip;
  
  public UserAddress() {}
  
  public UserAddress(JSONObjectProxy paramJSONObjectProxy)
  {
    try
    {
      setPin(paramJSONObjectProxy.getStringOrNull("pin"));
      setId(paramJSONObjectProxy.getIntOrNull("Id"));
      setIdCity(paramJSONObjectProxy.getIntOrNull("IdCity"));
      setIdTown(paramJSONObjectProxy.getIntOrNull("IdTown"));
      setIdArea(paramJSONObjectProxy.getIntOrNull("IdArea"));
      setIdProvince(paramJSONObjectProxy.getIntOrNull("IdProvince"));
      setName(paramJSONObjectProxy.getStringOrNull("Name"));
      setWhere(paramJSONObjectProxy.getStringOrNull("Where"));
      setTypeId(paramJSONObjectProxy.getIntOrNull("TypeId"));
      setEmail(paramJSONObjectProxy.getStringOrNull("Email"));
      setMobile(paramJSONObjectProxy.getStringOrNull("Mobile"));
      setZip(paramJSONObjectProxy.getStringOrNull("Zip"));
      setAddressDetail(paramJSONObjectProxy.getStringOrNull("addressDetail"));
      setIsNoIdTown(paramJSONObjectProxy.getBooleanOrNull("isIdTown"));
      setMessage(paramJSONObjectProxy.getStringOrNull("Message"));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static ArrayList<UserAddress> toList(JSONArrayPoxy paramJSONArrayPoxy)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONArrayPoxy == null) {}
    for (;;)
    {
      return localArrayList;
      for (int i = 0; i < paramJSONArrayPoxy.length(); i++)
      {
        JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
        if (localJSONObjectProxy != null) {
          localArrayList.add(new UserAddress(localJSONObjectProxy));
        }
      }
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    UserAddress localUserAddress;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      localUserAddress = (UserAddress)paramObject;
      if (!getMobile().equals(localUserAddress.getMobile())) {
        return false;
      }
      if (!getName().equals(localUserAddress.getName())) {
        return false;
      }
    } while (getWhere().equals(localUserAddress.getWhere()));
    return false;
  }
  
  public String getAddressDetail()
  {
    if (this.addressDetail == null) {
      return "";
    }
    return this.addressDetail;
  }
  
  public String getEmail()
  {
    if (this.email == null) {
      return "";
    }
    return this.email;
  }
  
  public Integer getId()
  {
    return this.id;
  }
  
  public Integer getIdArea()
  {
    if (this.idArea == null) {
      return Integer.valueOf(-1);
    }
    return this.idArea;
  }
  
  public Integer getIdCity()
  {
    if (this.idCity == null) {
      return Integer.valueOf(-1);
    }
    return this.idCity;
  }
  
  public Integer getIdProvince()
  {
    if (this.idProvince == null) {
      return Integer.valueOf(-1);
    }
    return this.idProvince;
  }
  
  public Integer getIdTown()
  {
    if (this.idTown == null) {
      return Integer.valueOf(-1);
    }
    return this.idTown;
  }
  
  public Boolean getIsNoIdTown()
  {
    if (this.isNoIdTown == null) {
      return Boolean.valueOf(false);
    }
    return this.isNoIdTown;
  }
  
  public String getMessage()
  {
    if (this.message == null) {
      return "";
    }
    return this.message;
  }
  
  public String getMobile()
  {
    if (this.mobile == null) {
      return "";
    }
    return this.mobile;
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
  }
  
  public String getPin()
  {
    if (this.pin == null) {
      return "";
    }
    return this.pin;
  }
  
  public Integer getTypeId()
  {
    if (this.typeId == null) {
      return Integer.valueOf(-1);
    }
    return this.typeId;
  }
  
  public String getWhere()
  {
    if (this.where == null) {
      return "";
    }
    return this.where;
  }
  
  public String getZip()
  {
    if (this.zip == null) {
      return "";
    }
    return this.zip;
  }
  
  public int hashCode()
  {
    int i;
    int k;
    label26:
    int m;
    int n;
    if (this.mobile == null)
    {
      i = 0;
      int j = 31 * (i + 31);
      if (this.name != null) {
        break label65;
      }
      k = 0;
      m = 31 * (j + k);
      String str = this.where;
      n = 0;
      if (str != null) {
        break label76;
      }
    }
    for (;;)
    {
      return m + n;
      i = this.mobile.hashCode();
      break;
      label65:
      k = this.name.hashCode();
      break label26;
      label76:
      n = this.where.hashCode();
    }
  }
  
  public void setAddressDetail(String paramString)
  {
    this.addressDetail = paramString;
  }
  
  public void setEmail(String paramString)
  {
    this.email = paramString;
  }
  
  public void setId(Integer paramInteger)
  {
    this.id = paramInteger;
  }
  
  public void setIdArea(Integer paramInteger)
  {
    this.idArea = paramInteger;
  }
  
  public void setIdCity(Integer paramInteger)
  {
    this.idCity = paramInteger;
  }
  
  public void setIdProvince(Integer paramInteger)
  {
    this.idProvince = paramInteger;
  }
  
  public void setIdTown(Integer paramInteger)
  {
    this.idTown = paramInteger;
  }
  
  public void setIsNoIdTown(Boolean paramBoolean)
  {
    this.isNoIdTown = paramBoolean;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPin(String paramString)
  {
    this.pin = paramString;
  }
  
  public void setTypeId(Integer paramInteger)
  {
    this.typeId = paramInteger;
  }
  
  public void setWhere(String paramString)
  {
    this.where = paramString;
  }
  
  public void setZip(String paramString)
  {
    this.zip = paramString;
  }
  
  public String toString()
  {
    return "UserAddress [pin=" + this.pin + ", id=" + this.id + ", idCity=" + this.idCity + ", idTown=" + this.idTown + ", idArea=" + this.idArea + ", idProvince=" + this.idProvince + ", name=" + this.name + ", where=" + this.where + ", typeId=" + this.typeId + ", email=" + this.email + ", mobile=" + this.mobile + ", zip=" + this.zip + ", addressDetail=" + this.addressDetail + ", isNoIdTown=" + this.isNoIdTown + ", message=" + this.message + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.UserAddress
 * JD-Core Version:    0.7.0.1
 */