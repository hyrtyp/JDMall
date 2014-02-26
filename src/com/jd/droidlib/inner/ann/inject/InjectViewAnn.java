package com.jd.droidlib.inner.ann.inject;

import com.jd.droidlib.annotation.inject.InjectView;

public final class InjectViewAnn
  extends InjectAnn<InjectView>
{
  public final boolean click;
  public final int id;
  
  public InjectViewAnn(InjectView paramInjectView)
  {
    super(paramInjectView);
    if (hackSuccess())
    {
      this.id = ((Integer)getElement("id")).intValue();
      this.click = ((Boolean)getElement("click")).booleanValue();
      cleanup();
      return;
    }
    this.id = paramInjectView.id();
    this.click = paramInjectView.click();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.inject.InjectViewAnn
 * JD-Core Version:    0.7.0.1
 */