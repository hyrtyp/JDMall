package com.drew.metadata.jpeg;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class JpegDescriptor
  extends TagDescriptor
{
  public JpegDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getComponentDataDescription(int paramInt)
    throws MetadataException
  {
    JpegComponent localJpegComponent = ((JpegDirectory)this._directory).getComponent(paramInt);
    if (localJpegComponent == null) {
      throw new MetadataException("No Jpeg component exists with number " + paramInt);
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(localJpegComponent.getComponentName());
    localStringBuffer.append(" component: Quantization table ");
    localStringBuffer.append(localJpegComponent.getQuantizationTableNumber());
    localStringBuffer.append(", Sampling factors ");
    localStringBuffer.append(localJpegComponent.getHorizontalSamplingFactor());
    localStringBuffer.append(" horiz/");
    localStringBuffer.append(localJpegComponent.getVerticalSamplingFactor());
    localStringBuffer.append(" vert");
    return localStringBuffer.toString();
  }
  
  public String getDataPrecisionDescription()
  {
    return this._directory.getString(0) + " bits";
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    case 2: 
    case 4: 
    case 5: 
    default: 
      return this._directory.getString(paramInt);
    case 6: 
      return getComponentDataDescription(0);
    case 7: 
      return getComponentDataDescription(1);
    case 8: 
      return getComponentDataDescription(2);
    case 9: 
      return getComponentDataDescription(3);
    case 0: 
      return getDataPrecisionDescription();
    case 1: 
      return getImageHeightDescription();
    }
    return getImageWidthDescription();
  }
  
  public String getImageHeightDescription()
  {
    return this._directory.getString(1) + " pixels";
  }
  
  public String getImageWidthDescription()
  {
    return this._directory.getString(3) + " pixels";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.jpeg.JpegDescriptor
 * JD-Core Version:    0.7.0.1
 */