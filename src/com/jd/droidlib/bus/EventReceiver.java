package com.jd.droidlib.bus;

public abstract interface EventReceiver<T>
{
  public abstract void onEvent(String paramString, T paramT);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.bus.EventReceiver
 * JD-Core Version:    0.7.0.1
 */