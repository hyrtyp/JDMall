package com.jd.droidlib.inner.ann.inject;

import com.jd.droidlib.annotation.inject.InjectSystemService;

public final class InjectSystemServiceAnn
  extends InjectAnn<InjectSystemService>
{
  public final String name;
  
  public InjectSystemServiceAnn(InjectSystemService paramInjectSystemService)
  {
    super(paramInjectSystemService);
    if (hackSuccess())
    {
      this.name = ((String)getElement("value"));
      cleanup();
      return;
    }
    this.name = paramInjectSystemService.value();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.inject.InjectSystemServiceAnn
 * JD-Core Version:    0.7.0.1
 */