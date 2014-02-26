package com.jd.droidlib.inner.ann.inject;

import com.jd.droidlib.annotation.inject.InjectResource;

public final class InjectResourceAnn
  extends InjectAnn<InjectResource>
{
  public final int id;
  
  public InjectResourceAnn(InjectResource paramInjectResource)
  {
    super(paramInjectResource);
    if (hackSuccess())
    {
      this.id = ((Integer)getElement("value")).intValue();
      cleanup();
      return;
    }
    this.id = paramInjectResource.value();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.inject.InjectResourceAnn
 * JD-Core Version:    0.7.0.1
 */