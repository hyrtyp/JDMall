package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.annotation.sql.Table;
import com.jd.droidlib.model.Entity;

@Table(name="entries")
public class Entry
  extends Entity
{
  private static final long serialVersionUID = 1L;
  @Key(name="date_created")
  @Column
  public long created;
  @Key
  @Column
  public String name;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.Entry
 * JD-Core Version:    0.7.0.1
 */