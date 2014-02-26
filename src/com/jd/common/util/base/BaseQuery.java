package com.jd.common.util.base;

import com.jd.common.util.PaginatedList;
import com.jd.common.util.Query;

public class BaseQuery
  implements Query
{
  private int endRow;
  private int id;
  private int startRow;
  private String value;
  
  public BaseQuery() {}
  
  public BaseQuery(PaginatedList paramPaginatedList)
  {
    this.startRow = paramPaginatedList.getStartRow();
    this.endRow = paramPaginatedList.getEndRow();
  }
  
  public int getEndRow()
  {
    return this.endRow;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public int getStartRow()
  {
    return this.startRow;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public void setEndRow(int paramInt)
  {
    this.endRow = paramInt;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setStartRow(int paramInt)
  {
    this.startRow = paramInt;
  }
  
  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.base.BaseQuery
 * JD-Core Version:    0.7.0.1
 */