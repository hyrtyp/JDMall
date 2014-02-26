package com.jingdong.common.entity;

import java.util.Date;

public class SearchHistory
{
  private int id;
  private Date searchDate;
  private String word;
  
  public SearchHistory(int paramInt, String paramString, long paramLong)
  {
    this.word = paramString;
    this.id = paramInt;
    try
    {
      this.searchDate = new Date(paramLong);
      return;
    }
    catch (Exception localException) {}
  }
  
  public SearchHistory(String paramString)
  {
    this.word = paramString;
    this.searchDate = new Date();
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public Date getSearchDate()
  {
    return this.searchDate;
  }
  
  public String getWord()
  {
    return this.word;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setSearchDate(Date paramDate)
  {
    this.searchDate = paramDate;
  }
  
  public void setWord(String paramString)
  {
    this.word = paramString;
  }
  
  public String toString()
  {
    return "SearchHistory [id=" + this.id + ", word=" + this.word + ", searchDate=" + this.searchDate + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SearchHistory
 * JD-Core Version:    0.7.0.1
 */