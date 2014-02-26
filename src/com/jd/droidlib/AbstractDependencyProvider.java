package com.jd.droidlib;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.jd.droidlib.persist.sql.AbstractDBOpenHelper;

public abstract class AbstractDependencyProvider
{
  protected final Context ctx;
  
  public AbstractDependencyProvider(Context paramContext)
  {
    this.ctx = paramContext.getApplicationContext();
  }
  
  public final SQLiteDatabase getDB()
  {
    return getDBOpenHelper().getWritableDatabase();
  }
  
  public abstract AbstractDBOpenHelper getDBOpenHelper();
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.AbstractDependencyProvider
 * JD-Core Version:    0.7.0.1
 */