package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class KyoceraMakernoteDescriptor
  extends TagDescriptor
{
  public KyoceraMakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    default: 
      return this._directory.getString(paramInt);
    case 3584: 
      return getPrintImageMatchingInfoDescription();
    }
    return getProprietaryThumbnailDataDescription();
  }
  
  public String getPrintImageMatchingInfoDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(3584)) {
      return null;
    }
    byte[] arrayOfByte = this._directory.getByteArray(3584);
    return "(" + arrayOfByte.length + " bytes)";
  }
  
  public String getProprietaryThumbnailDataDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(1)) {
      return null;
    }
    byte[] arrayOfByte = this._directory.getByteArray(1);
    return "(" + arrayOfByte.length + " bytes)";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.KyoceraMakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */