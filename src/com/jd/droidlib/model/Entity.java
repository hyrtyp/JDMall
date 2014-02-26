package com.jd.droidlib.model;

import com.jd.droidlib.annotation.sql.Column;

public abstract class Entity
  extends Model
{
  private static final long serialVersionUID = 1L;
  @Column(name="_id")
  public long id;
  
  public int hashCode()
  {
    return getClass().hashCode() + (int)this.id;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.model.Entity
 * JD-Core Version:    0.7.0.1
 */