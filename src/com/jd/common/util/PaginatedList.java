package com.jd.common.util;

import java.util.List;

public abstract interface PaginatedList<T>
  extends List<T>
{
  public abstract int getEndRow();
  
  public abstract int getIndex();
  
  public abstract int getNextPage();
  
  public abstract int getPageSize();
  
  public abstract int getPreviousPage();
  
  public abstract int getStartRow();
  
  public abstract int getTotalItem();
  
  public abstract int getTotalPage();
  
  public abstract boolean isFirstPage();
  
  public abstract boolean isLastPage();
  
  public abstract boolean isMiddlePage();
  
  public abstract boolean isNextPageAvailable();
  
  public abstract boolean isPreviousPageAvailable();
  
  public abstract void setIndex(int paramInt);
  
  public abstract void setPageSize(int paramInt);
  
  public abstract void setTotalItem(int paramInt);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.PaginatedList
 * JD-Core Version:    0.7.0.1
 */