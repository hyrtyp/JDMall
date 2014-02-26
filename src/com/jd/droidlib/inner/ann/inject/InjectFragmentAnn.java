package com.jd.droidlib.inner.ann.inject;

import com.jd.droidlib.annotation.inject.InjectFragment;

public class InjectFragmentAnn
  extends InjectAnn<InjectFragment>
{
  public final int id;
  
  public InjectFragmentAnn(InjectFragment paramInjectFragment)
  {
    super(paramInjectFragment);
    if (hackSuccess())
    {
      this.id = ((Integer)getElement("id")).intValue();
      cleanup();
      return;
    }
    this.id = paramInjectFragment.id();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.inject.InjectFragmentAnn
 * JD-Core Version:    0.7.0.1
 */