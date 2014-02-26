package com.jd.droidlib.persist.sql.stmt;

import android.database.Cursor;
import android.database.MergeCursor;
import com.jd.droidlib.model.Entity;

public class MergeSelect<EntityType extends Entity>
  implements AbstractSelect<EntityType>
{
  private final Select<EntityType>[] selects;
  
  public MergeSelect(Select<EntityType>... paramVarArgs)
  {
    this.selects = paramVarArgs;
  }
  
  public int count()
  {
    int i = 0;
    Select[] arrayOfSelect = this.selects;
    int j = arrayOfSelect.length;
    for (int k = 0;; k++)
    {
      if (k >= j) {
        return i;
      }
      i += arrayOfSelect[k].count();
    }
  }
  
  public Cursor execute()
  {
    Cursor[] arrayOfCursor = new Cursor[this.selects.length];
    for (int i = 0;; i++)
    {
      if (i >= arrayOfCursor.length) {
        return new MergeCursor(arrayOfCursor);
      }
      arrayOfCursor[i] = this.selects[i].execute();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.stmt.MergeSelect
 * JD-Core Version:    0.7.0.1
 */