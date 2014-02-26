package com.jd.droidlib.inner.ann.json;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.inner.ann.Ann;

public final class KeyAnn
  extends Ann<Key>
{
  public String name;
  public final boolean optional;
  
  public KeyAnn(Key paramKey)
  {
    super(paramKey);
    if (hackSuccess())
    {
      this.name = ((String)getElement("name"));
      this.optional = ((Boolean)getElement("optional")).booleanValue();
      cleanup();
      return;
    }
    this.name = paramKey.name();
    this.optional = paramKey.optional();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.json.KeyAnn
 * JD-Core Version:    0.7.0.1
 */