package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class InvoiceBaseInfo
  implements Serializable
{
  public static final int INVOICE_INFO = 1;
  private static final long serialVersionUID = -4599758006920817731L;
  private int id;
  private String name;
  
  public InvoiceBaseInfo(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setName(paramJSONObjectProxy.getStringOrNull("Name"));
    setId(paramJSONObjectProxy.getIntOrNull("Id").intValue());
  }
  
  public static ArrayList<InvoiceBaseInfo> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    localArrayList = new ArrayList();
    if (paramJSONArrayPoxy == null) {
      localArrayList = null;
    }
    for (;;)
    {
      return localArrayList;
      int i = 0;
      try
      {
        while (i < paramJSONArrayPoxy.length())
        {
          localArrayList.add(new InvoiceBaseInfo(paramJSONArrayPoxy.getJSONObject(i), paramInt));
          i++;
        }
        return localArrayList;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    if (TextUtils.isEmpty(this.name)) {
      return "";
    }
    return this.name;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.InvoiceBaseInfo
 * JD-Core Version:    0.7.0.1
 */