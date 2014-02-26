package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.annotation.sql.Table;
import com.jd.droidlib.model.Entity;

@Table(name="entries")
public class ResultEntity
  extends Entity
{
  private static final long serialVersionUID = 1L;
  @Key
  @Column
  public String agent;
  @Key
  @Column
  public String errcode;
  @Key
  @Column
  public String funcid;
  @Key
  @Column
  public String memo;
  @Key
  @Column
  public String results;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.ResultEntity
 * JD-Core Version:    0.7.0.1
 */