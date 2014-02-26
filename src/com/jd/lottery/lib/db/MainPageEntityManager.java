package com.jd.lottery.lib.db;

import android.content.Context;
import com.jd.droidlib.persist.sql.EntityManager;
import com.jd.lottery.lib.model.Entry;

public class MainPageEntityManager
  extends EntityManager<Entry>
{
  public MainPageEntityManager(Context paramContext)
  {
    super(Entry.class, paramContext);
  }
  
  public boolean create(Entry paramEntry)
  {
    paramEntry.created = System.currentTimeMillis();
    return super.create(paramEntry);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.db.MainPageEntityManager
 * JD-Core Version:    0.7.0.1
 */