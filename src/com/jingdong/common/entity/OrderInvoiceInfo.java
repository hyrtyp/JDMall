package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class OrderInvoiceInfo
  implements Serializable
{
  private static final long serialVersionUID = 4785218777825213701L;
  private ArrayList<InvoiceBaseInfo> invoiceContents;
  private ArrayList<InvoiceBaseInfo> invoiceContentsBook;
  private ArrayList<InvoiceBaseInfo> invoiceHeaderTypeInfo;
  private ArrayList<InvoiceBaseInfo> invoiceTypesInfo;
  
  public OrderInvoiceInfo(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    }
    JSONObjectProxy localJSONObjectProxy;
    do
    {
      return;
      JSONArrayPoxy localJSONArrayPoxy1 = paramJSONObjectProxy.getJSONArrayOrNull("invoiceHeaderTypeInfo");
      JSONArrayPoxy localJSONArrayPoxy2 = paramJSONObjectProxy.getJSONArrayOrNull("invoiceTypesInfo");
      setInvoiceHeaderTypeInfo(InvoiceBaseInfo.toList(localJSONArrayPoxy1, paramInt));
      setInvoiceTypesInfo(InvoiceBaseInfo.toList(localJSONArrayPoxy2, paramInt));
      localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("invoiceContentsInfo");
    } while (localJSONObjectProxy == null);
    JSONArrayPoxy localJSONArrayPoxy3 = localJSONObjectProxy.getJSONArrayOrNull("invoiceContentsBook");
    JSONArrayPoxy localJSONArrayPoxy4 = localJSONObjectProxy.getJSONArrayOrNull("invoiceContents");
    setInvoiceContentsBook(InvoiceBaseInfo.toList(localJSONArrayPoxy3, paramInt));
    setInvoiceContents(InvoiceBaseInfo.toList(localJSONArrayPoxy4, paramInt));
  }
  
  public ArrayList<InvoiceBaseInfo> getInvoiceContents()
  {
    return this.invoiceContents;
  }
  
  public ArrayList<InvoiceBaseInfo> getInvoiceContentsBook()
  {
    return this.invoiceContentsBook;
  }
  
  public ArrayList<InvoiceBaseInfo> getInvoiceHeaderTypeInfo()
  {
    return this.invoiceHeaderTypeInfo;
  }
  
  public ArrayList<InvoiceBaseInfo> getInvoiceTypesInfo()
  {
    return this.invoiceTypesInfo;
  }
  
  public void setInvoiceContents(ArrayList<InvoiceBaseInfo> paramArrayList)
  {
    this.invoiceContents = paramArrayList;
  }
  
  public void setInvoiceContentsBook(ArrayList<InvoiceBaseInfo> paramArrayList)
  {
    this.invoiceContentsBook = paramArrayList;
  }
  
  public void setInvoiceHeaderTypeInfo(ArrayList<InvoiceBaseInfo> paramArrayList)
  {
    this.invoiceHeaderTypeInfo = paramArrayList;
  }
  
  public void setInvoiceTypesInfo(ArrayList<InvoiceBaseInfo> paramArrayList)
  {
    this.invoiceTypesInfo = paramArrayList;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.OrderInvoiceInfo
 * JD-Core Version:    0.7.0.1
 */