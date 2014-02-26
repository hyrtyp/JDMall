package com.google.zxing.oned.rss;

public class DataCharacter
{
  private final int checksumPortion;
  private final int value;
  
  public DataCharacter(int paramInt1, int paramInt2)
  {
    this.value = paramInt1;
    this.checksumPortion = paramInt2;
  }
  
  public final int getChecksumPortion()
  {
    return this.checksumPortion;
  }
  
  public final int getValue()
  {
    return this.value;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.DataCharacter
 * JD-Core Version:    0.7.0.1
 */