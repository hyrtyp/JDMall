package com.jingdong.common.utils;

import com.jingdong.common.frame.IMyActivity;

public class DefaultEffectHandle
{
  private int counter;
  private DefaultEffectHttpListener defaultEffectHttpListener;
  
  public DefaultEffectHandle(IMyActivity paramIMyActivity)
  {
    this.defaultEffectHttpListener = new DefaultEffectHttpListener(null, paramIMyActivity);
  }
  
  public void addModal()
  {
    this.defaultEffectHttpListener.onStart();
    this.counter = (1 + this.counter);
  }
  
  public void removeModal()
  {
    for (;;)
    {
      if (this.counter <= 0) {
        return;
      }
      this.defaultEffectHttpListener.onEnd(null);
      this.counter = (-1 + this.counter);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.DefaultEffectHandle
 * JD-Core Version:    0.7.0.1
 */