package com.jd.lottery.lib.model;

import android.net.Uri;
import com.jd.lottery.lib.net.LotteryUri;

public class AllInfoRequest
  extends RequestEntity
{
  private static final long serialVersionUID = 1L;
  
  public static Uri getUri()
  {
    return LotteryUri.getUri(new AllInfoRequest(), "http://lotterygw.m.jd.com/getAwardAndEndTimeAllCategory");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.AllInfoRequest
 * JD-Core Version:    0.7.0.1
 */