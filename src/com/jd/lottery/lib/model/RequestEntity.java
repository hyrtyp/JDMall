package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.model.Model;

public abstract class RequestEntity
  extends Model
{
  private static final long serialVersionUID = 1L;
  @Key
  public int agent = 1;
  @Key
  public int funcid;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.RequestEntity
 * JD-Core Version:    0.7.0.1
 */