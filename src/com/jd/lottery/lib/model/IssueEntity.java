package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.model.Entity;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public abstract class IssueEntity
  extends Entity
{
  private static final long serialVersionUID = 1L;
  @Key
  @Column
  public String awardcode;
  @Key(optional=true)
  @Column
  public double awardpool;
  @Key
  @Column
  public String awardtime;
  @Key
  @Column
  public String endtime;
  @Key(optional=true)
  @Column
  public boolean isBillion;
  @Key(optional=true)
  @Column
  public boolean isToday;
  @Key
  @Column
  public long issueid;
  @Key
  @Column
  public long issuename;
  @Key
  @Column
  public String issuestate;
  @Column(name="LotteryIndex")
  public int lotteryIndex;
  @Key
  @Column(name="LotteryType")
  public int lotterycategory;
  @Key
  @Column
  public String salestatus;
  @Key
  @Column
  public String starttime;
  
  public Date getAwardTime()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss", Locale.CHINA);
    try
    {
      Date localDate = localSimpleDateFormat.parse(this.awardtime);
      return localDate;
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
    }
    return null;
  }
  
  public Date getEndTime()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss", Locale.CHINA);
    try
    {
      Date localDate = localSimpleDateFormat.parse(this.endtime);
      return localDate;
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
    }
    return null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.IssueEntity
 * JD-Core Version:    0.7.0.1
 */