package com.jd.common.util;

public class LogFieldInfo
{
  private String changed;
  private String fieldName;
  private String newvalue;
  private String oldvalue;
  private Long recordId;
  
  public String getChanged()
  {
    return this.changed;
  }
  
  public String getFieldName()
  {
    return this.fieldName;
  }
  
  public String getNewvalue()
  {
    return this.newvalue;
  }
  
  public String getOldvalue()
  {
    return this.oldvalue;
  }
  
  public Long getRecordId()
  {
    return this.recordId;
  }
  
  public void setChanged(String paramString)
  {
    this.changed = paramString;
  }
  
  public void setFieldName(String paramString)
  {
    this.fieldName = paramString;
  }
  
  public void setNewvalue(String paramString)
  {
    this.newvalue = paramString;
  }
  
  public void setOldvalue(String paramString)
  {
    this.oldvalue = paramString;
  }
  
  public void setRecordId(Long paramLong)
  {
    this.recordId = paramLong;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.LogFieldInfo
 * JD-Core Version:    0.7.0.1
 */