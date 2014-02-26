package com.jd.lottery.lib.data;

public class OnlinePayManager
{
  private static OnlinePayManager mInstance;
  
  public static OnlinePayManager getInstance()
  {
    if (mInstance == null) {
      mInstance = new OnlinePayManager();
    }
    return mInstance;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.data.OnlinePayManager
 * JD-Core Version:    0.7.0.1
 */