package com.jingdong.common.utils;

import android.text.method.NumberKeyListener;

public class InputKeyFilter
  extends NumberKeyListener
{
  protected char[] getAcceptedChars()
  {
    return new char[] { 113, 119, 101, 114, 116, 121, 117, 105, 111, 112, 108, 107, 106, 104, 103, 102, 100, 115, 97, 122, 120, 99, 118, 98, 110, 109, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 95, 10 };
  }
  
  public int getInputType()
  {
    return 0;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.InputKeyFilter
 * JD-Core Version:    0.7.0.1
 */