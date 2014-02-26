package com.jd.common.util.base;

import com.jd.common.util.PaginatedList;
import java.util.ArrayList;

public class PaginatedArrayList<T>
  extends ArrayList<T>
  implements PaginatedList<T>
{
  public static final int PAGESIZE_DEFAULT = 20;
  private int endRow;
  private int index;
  private int pageSize;
  private int startRow;
  private int totalItem;
  private int totalPage;
  
  public PaginatedArrayList()
  {
    repaginate();
  }
  
  public PaginatedArrayList(int paramInt1, int paramInt2)
  {
    this.index = paramInt1;
    this.pageSize = paramInt2;
    repaginate();
  }
  
  private void repaginate()
  {
    int i = 1;
    if (this.pageSize < i) {
      this.pageSize = 20;
    }
    if (this.index < i) {
      this.index = i;
    }
    int j;
    if (this.totalItem > 0)
    {
      j = this.totalItem / this.pageSize;
      if (this.totalItem % this.pageSize <= 0) {
        break label132;
      }
    }
    for (;;)
    {
      this.totalPage = (i + j);
      if (this.index > this.totalPage) {
        this.index = this.totalPage;
      }
      this.endRow = (this.index * this.pageSize);
      this.startRow = (1 + (this.endRow - this.pageSize));
      if (this.endRow > this.totalItem) {
        this.endRow = this.totalItem;
      }
      return;
      label132:
      i = 0;
    }
  }
  
  public int getEndRow()
  {
    return this.endRow;
  }
  
  public int getIndex()
  {
    return this.index;
  }
  
  public int getNextPage()
  {
    if (isLastPage()) {
      return this.totalItem;
    }
    return 1 + this.index;
  }
  
  public int getPageSize()
  {
    return this.pageSize;
  }
  
  public int getPreviousPage()
  {
    if (isFirstPage()) {
      return 1;
    }
    return -1 + this.index;
  }
  
  public int getStartRow()
  {
    return this.startRow;
  }
  
  public int getTotalItem()
  {
    return this.totalItem;
  }
  
  public int getTotalPage()
  {
    return this.totalPage;
  }
  
  public boolean isFirstPage()
  {
    return this.index <= 1;
  }
  
  public boolean isLastPage()
  {
    return this.index >= this.totalPage;
  }
  
  public boolean isMiddlePage()
  {
    return (!isFirstPage()) && (!isLastPage());
  }
  
  public boolean isNextPageAvailable()
  {
    return !isLastPage();
  }
  
  public boolean isPreviousPageAvailable()
  {
    return !isFirstPage();
  }
  
  public void setIndex(int paramInt)
  {
    this.index = paramInt;
    repaginate();
  }
  
  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
    repaginate();
  }
  
  public void setTotalItem(int paramInt)
  {
    this.totalItem = paramInt;
    repaginate();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.base.PaginatedArrayList
 * JD-Core Version:    0.7.0.1
 */