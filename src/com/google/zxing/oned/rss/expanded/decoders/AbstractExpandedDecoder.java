package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

public abstract class AbstractExpandedDecoder
{
  private final GeneralAppIdDecoder generalDecoder;
  private final BitArray information;
  
  AbstractExpandedDecoder(BitArray paramBitArray)
  {
    this.information = paramBitArray;
    this.generalDecoder = new GeneralAppIdDecoder(paramBitArray);
  }
  
  public static AbstractExpandedDecoder createDecoder(BitArray paramBitArray)
  {
    if (paramBitArray.get(1)) {
      return new AI01AndOtherAIs(paramBitArray);
    }
    if (!paramBitArray.get(2)) {
      return new AnyAIDecoder(paramBitArray);
    }
    switch (GeneralAppIdDecoder.extractNumericValueFromBitArray(paramBitArray, 1, 4))
    {
    default: 
      switch (GeneralAppIdDecoder.extractNumericValueFromBitArray(paramBitArray, 1, 5))
      {
      default: 
        switch (GeneralAppIdDecoder.extractNumericValueFromBitArray(paramBitArray, 1, 7))
        {
        default: 
          throw new IllegalStateException("unknown decoder: " + paramBitArray);
        }
        break;
      }
    case 4: 
      return new AI013103decoder(paramBitArray);
    }
    return new AI01320xDecoder(paramBitArray);
    return new AI01392xDecoder(paramBitArray);
    return new AI01393xDecoder(paramBitArray);
    return new AI013x0x1xDecoder(paramBitArray, "310", "11");
    return new AI013x0x1xDecoder(paramBitArray, "320", "11");
    return new AI013x0x1xDecoder(paramBitArray, "310", "13");
    return new AI013x0x1xDecoder(paramBitArray, "320", "13");
    return new AI013x0x1xDecoder(paramBitArray, "310", "15");
    return new AI013x0x1xDecoder(paramBitArray, "320", "15");
    return new AI013x0x1xDecoder(paramBitArray, "310", "17");
    return new AI013x0x1xDecoder(paramBitArray, "320", "17");
  }
  
  protected final GeneralAppIdDecoder getGeneralDecoder()
  {
    return this.generalDecoder;
  }
  
  protected final BitArray getInformation()
  {
    return this.information;
  }
  
  public abstract String parseInformation()
    throws NotFoundException;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
 * JD-Core Version:    0.7.0.1
 */