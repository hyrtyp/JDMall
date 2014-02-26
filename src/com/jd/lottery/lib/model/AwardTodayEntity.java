package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.model.Entity;

public class AwardTodayEntity
  extends Entity
{
  private static final long serialVersionUID = 1L;
  @Key(optional=true)
  @Column
  public int isBillion;
  @Key(optional=true)
  @Column
  public int isToday;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.AwardTodayEntity
 * JD-Core Version:    0.7.0.1
 */