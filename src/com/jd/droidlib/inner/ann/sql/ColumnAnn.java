package com.jd.droidlib.inner.ann.sql;

import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.inner.ann.Ann;

public final class ColumnAnn
  extends Ann<Column>
{
  public boolean eager;
  public String name;
  public boolean nullable;
  public final boolean unique;
  
  public ColumnAnn(Column paramColumn)
  {
    super(paramColumn);
    if (hackSuccess())
    {
      this.name = ((String)getElement("name"));
      this.nullable = ((Boolean)getElement("nullable")).booleanValue();
      this.unique = ((Boolean)getElement("unique")).booleanValue();
      this.eager = ((Boolean)getElement("eager")).booleanValue();
      cleanup();
      return;
    }
    this.name = paramColumn.name();
    this.nullable = paramColumn.nullable();
    this.unique = paramColumn.unique();
    this.eager = paramColumn.eager();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.sql.ColumnAnn
 * JD-Core Version:    0.7.0.1
 */