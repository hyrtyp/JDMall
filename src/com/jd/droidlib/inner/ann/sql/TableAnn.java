package com.jd.droidlib.inner.ann.sql;

import com.jd.droidlib.annotation.sql.Table;
import com.jd.droidlib.inner.ann.Ann;

public final class TableAnn
  extends Ann<Table>
{
  public final String name;
  
  public TableAnn(Table paramTable)
  {
    super(paramTable);
    if (hackSuccess())
    {
      this.name = ((String)getElement("name"));
      cleanup();
      return;
    }
    this.name = paramTable.name();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.sql.TableAnn
 * JD-Core Version:    0.7.0.1
 */