package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class ExifInteropDescriptor
  extends TagDescriptor
{
  public ExifInteropDescriptor(Directory paramDirectory)
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
    case 1: 
      return getInteropIndexDescription();
    }
    return getInteropVersionDescription();
  }
  
  public String getInteropIndexDescription()
  {
    if (!this._directory.containsTag(1)) {
      return null;
    }
    String str = this._directory.getString(1).trim();
    if ("R98".equalsIgnoreCase(str)) {
      return "Recommended Exif Interoperability Rules (ExifR98)";
    }
    return "Unknown (" + str + ")";
  }
  
  public String getInteropVersionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(2)) {
      return null;
    }
    return ExifDescriptor.convertBytesToVersionString(this._directory.getIntArray(2));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.ExifInteropDescriptor
 * JD-Core Version:    0.7.0.1
 */