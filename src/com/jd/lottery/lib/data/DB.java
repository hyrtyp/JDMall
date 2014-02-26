package com.jd.lottery.lib.data;

public abstract interface DB
  extends com.jd.droidlib.contract.DB
{
  public static final String FILE = "jdlottery.db";
  public static final String[] TABLE_NAME = { "curr_issue", "prev_issue" };
  public static final int VERSION = 23;
  
  public static abstract interface Column
    extends com.jd.droidlib.contract.DB.Column
  {
    public static final String LotteryIndex = "LotteryIndex";
    public static final String LotteryType = "LotteryType";
  }
  
  public static abstract interface Table
    extends com.jd.droidlib.contract.DB.Table
  {
    public static final String CURR_ISSUE = "curr_issue";
    public static final String LOTTERY = "lottery_issue";
    public static final String MAINPAGE = "mainpage";
    public static final String PREV_ISSUE = "prev_issue";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.data.DB
 * JD-Core Version:    0.7.0.1
 */