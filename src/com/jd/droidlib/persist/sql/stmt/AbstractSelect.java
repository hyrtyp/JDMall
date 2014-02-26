package com.jd.droidlib.persist.sql.stmt;

import android.database.Cursor;
import com.jd.droidlib.model.Entity;

public abstract interface AbstractSelect<EntityType extends Entity>
{
  public abstract int count();
  
  public abstract Cursor execute();
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.stmt.AbstractSelect
 * JD-Core Version:    0.7.0.1
 */