package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class OlympusMakernoteDescriptor
  extends TagDescriptor
{
  public OlympusMakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    case 515: 
    default: 
      return this._directory.getString(paramInt);
    case 512: 
      return getSpecialModeDescription();
    case 513: 
      return getJpegQualityDescription();
    case 514: 
      return getMacroModeDescription();
    }
    return getDigiZoomRatioDescription();
  }
  
  public String getDigiZoomRatioDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(516)) {
      return null;
    }
    int i = this._directory.getInt(516);
    switch (i)
    {
    case 1: 
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Normal";
    }
    return "Digital 2x Zoom";
  }
  
  public String getJpegQualityDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(513)) {
      return null;
    }
    int i = this._directory.getInt(513);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "SQ";
    case 2: 
      return "HQ";
    }
    return "SHQ";
  }
  
  public String getMacroModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(514)) {
      return null;
    }
    int i = this._directory.getInt(514);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Normal (no macro)";
    }
    return "Macro";
  }
  
  public String getSpecialModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(512)) {
      return null;
    }
    int[] arrayOfInt = this._directory.getIntArray(512);
    StringBuffer localStringBuffer = new StringBuffer();
    switch (arrayOfInt[0])
    {
    default: 
      localStringBuffer.append("Unknown picture taking mode");
      localStringBuffer.append(" - ");
      switch (arrayOfInt[1])
      {
      default: 
        localStringBuffer.append(arrayOfInt[1]);
        localStringBuffer.append("th in a sequence");
        label131:
        switch (arrayOfInt[2])
        {
        }
        break;
      }
      break;
    }
    for (;;)
    {
      return localStringBuffer.toString();
      localStringBuffer.append("Normal picture taking mode");
      break;
      localStringBuffer.append("Unknown picture taking mode");
      break;
      localStringBuffer.append("Fast picture taking mode");
      break;
      localStringBuffer.append("Panorama picture taking mode");
      break;
      localStringBuffer.append("Unknown sequence number");
      break label131;
      localStringBuffer.append("1st in a sequnce");
      break label131;
      localStringBuffer.append("2nd in a sequence");
      break label131;
      localStringBuffer.append("3rd in a sequence");
      break label131;
      localStringBuffer.append("Left to right panorama direction");
      continue;
      localStringBuffer.append("Right to left panorama direction");
      continue;
      localStringBuffer.append("Bottom to top panorama direction");
      continue;
      localStringBuffer.append("Top to bottom panorama direction");
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.OlympusMakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */