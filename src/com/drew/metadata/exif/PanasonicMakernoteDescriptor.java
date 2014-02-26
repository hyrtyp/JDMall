package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class PanasonicMakernoteDescriptor
  extends TagDescriptor
{
  public PanasonicMakernoteDescriptor(Directory paramDirectory)
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
    case 28: 
      return getMacroModeDescription();
    case 31: 
      return getRecordModeDescription();
    }
    return getPrintImageMatchingInfoDescription();
  }
  
  public String getMacroModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(28)) {
      return null;
    }
    int i = this._directory.getInt(28);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "On";
    }
    return "Off";
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
  
  public String getRecordModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(31)) {
      return null;
    }
    int i = this._directory.getInt(31);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Normal";
    case 2: 
      return "Portrait";
    }
    return "Macro";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.PanasonicMakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */