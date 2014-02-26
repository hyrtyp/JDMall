package com.jd.droidlib.inner.ann.inject;

import com.jd.droidlib.annotation.inject.InjectBundleExtra;

public final class InjectBundleExtraAnn
  extends InjectAnn<InjectBundleExtra>
{
  public final String key;
  public final boolean optional;
  
  public InjectBundleExtraAnn(InjectBundleExtra paramInjectBundleExtra)
  {
    super(paramInjectBundleExtra);
    if (hackSuccess())
    {
      this.key = ((String)getElement("key"));
      this.optional = ((Boolean)getElement("optional")).booleanValue();
      cleanup();
      return;
    }
    this.key = paramInjectBundleExtra.key();
    this.optional = paramInjectBundleExtra.optional();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.inject.InjectBundleExtraAnn
 * JD-Core Version:    0.7.0.1
 */