package com.drew.metadata.jpeg;

import com.drew.metadata.MetadataException;
import java.io.Serializable;

public class JpegComponent
  implements Serializable
{
  private final int _componentId;
  private final int _quantizationTableNumber;
  private final int _samplingFactorByte;
  
  public JpegComponent(int paramInt1, int paramInt2, int paramInt3)
  {
    this._componentId = paramInt1;
    this._samplingFactorByte = paramInt2;
    this._quantizationTableNumber = paramInt3;
  }
  
  public int getComponentId()
  {
    return this._componentId;
  }
  
  public String getComponentName()
    throws MetadataException
  {
    switch (this._componentId)
    {
    default: 
      throw new MetadataException("Unsupported component id: " + this._componentId);
    case 1: 
      return "Y";
    case 2: 
      return "Cb";
    case 3: 
      return "Cr";
    case 4: 
      return "I";
    }
    return "Q";
  }
  
  public int getHorizontalSamplingFactor()
  {
    return 0xF & this._samplingFactorByte;
  }
  
  public int getQuantizationTableNumber()
  {
    return this._quantizationTableNumber;
  }
  
  public int getVerticalSamplingFactor()
  {
    return 0xF & this._samplingFactorByte >> 4;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.jpeg.JpegComponent
 * JD-Core Version:    0.7.0.1
 */