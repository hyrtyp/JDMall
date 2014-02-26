package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;

public class IssueInfoRequest
  extends RequestEntity
{
  private static final long serialVersionUID = 1L;
  @Key(name="lotterycategory")
  public int lotteryCategory;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.IssueInfoRequest
 * JD-Core Version:    0.7.0.1
 */