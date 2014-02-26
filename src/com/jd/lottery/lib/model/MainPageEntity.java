package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.annotation.sql.Table;
import com.jd.droidlib.model.Entity;

@Table(name="mainpageitem")
public class MainPageEntity
  extends Entity
{
  private static final long serialVersionUID = 1L;
  @Column
  public String intent = "";
  @Column
  public String marker = "";
  @Key
  @Column
  public String name = "";
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.MainPageEntity
 * JD-Core Version:    0.7.0.1
 */