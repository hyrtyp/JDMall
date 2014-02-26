package com.jingdong.common.entity;

import java.io.Serializable;

public class BigHouseholdappliancesInfo
  implements Serializable
{
  private static final long serialVersionUID = 3016245963511827021L;
  private String name;
  private String value;
  
  public String getName()
  {
    return this.name;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.BigHouseholdappliancesInfo
 * JD-Core Version:    0.7.0.1
 */