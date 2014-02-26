package com.jingdong.common.entity;

import org.json.JSONObject;

public class InvoiceInfo
{
  public int COMMON_INCOICE = 1;
  public int InvoiceTitleType;
  public boolean hasBook = false;
  private JSONObject jbBooks;
  private JSONObject jbGenerals;
  private JSONObject jbHeaders;
  public JSONObject jbInvoiceInfo;
  private JSONObject jbTypes;
  
  public JSONObject getInvoiceInfo()
  {
    return this.jbInvoiceInfo;
  }
  
  public int getInvoiceTitleType()
  {
    return this.InvoiceTitleType;
  }
  
  public int getInvoiceType()
  {
    return this.COMMON_INCOICE;
  }
  
  public JSONObject getInvoinceBooks()
  {
    return this.jbBooks;
  }
  
  public JSONObject getInvoinceGenerals()
  {
    return this.jbGenerals;
  }
  
  public JSONObject getInvoinceHeaders()
  {
    return this.jbHeaders;
  }
  
  public JSONObject getInvoinceTypes()
  {
    return this.jbTypes;
  }
  
  public boolean hasBook()
  {
    return this.hasBook;
  }
  
  public void setInvoiceInfo(JSONObject paramJSONObject)
  {
    this.jbInvoiceInfo = paramJSONObject;
  }
  
  public void setInvoiceInfo(boolean paramBoolean, JSONObject paramJSONObject)
  {
    this.hasBook = paramBoolean;
    this.jbInvoiceInfo = paramJSONObject;
  }
  
  public void setInvoiceTitleType(int paramInt)
  {
    this.InvoiceTitleType = paramInt;
  }
  
  public void setInvoiceType(int paramInt)
  {
    this.COMMON_INCOICE = paramInt;
  }
  
  public void setInvoinceBooks(JSONObject paramJSONObject)
  {
    this.jbBooks = paramJSONObject;
  }
  
  public void setInvoinceGenerals(JSONObject paramJSONObject)
  {
    this.jbGenerals = paramJSONObject;
  }
  
  public void setInvoinceHeaders(JSONObject paramJSONObject)
  {
    this.jbHeaders = paramJSONObject;
  }
  
  public void setInvoinceTypes(JSONObject paramJSONObject)
  {
    this.jbTypes = paramJSONObject;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.InvoiceInfo
 * JD-Core Version:    0.7.0.1
 */