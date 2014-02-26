package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class PentaxMakernoteDescriptor
  extends TagDescriptor
{
  public PentaxMakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getCaptureModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(1)) {
      return null;
    }
    int i = this._directory.getInt(1);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Auto";
    case 2: 
      return "Night-scene";
    case 3: 
      return "Manual";
    }
    return "Multiple";
  }
  
  public String getColourDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(23)) {
      return null;
    }
    int i = this._directory.getInt(23);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Normal";
    case 2: 
      return "Black & White";
    }
    return "Sepia";
  }
  
  public String getContrastDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12)) {
      return null;
    }
    int i = this._directory.getInt(12);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Normal";
    case 1: 
      return "Low";
    }
    return "High";
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    case 5: 
    case 6: 
    case 8: 
    case 9: 
    case 14: 
    case 15: 
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    case 21: 
    case 22: 
    default: 
      return this._directory.getString(paramInt);
    case 1: 
      return getCaptureModeDescription();
    case 2: 
      return getQualityLevelDescription();
    case 3: 
      return getFocusModeDescription();
    case 4: 
      return getFlashModeDescription();
    case 7: 
      return getWhiteBalanceDescription();
    case 10: 
      return getDigitalZoomDescription();
    case 11: 
      return getSharpnessDescription();
    case 12: 
      return getContrastDescription();
    case 13: 
      return getSaturationDescription();
    case 20: 
      return getIsoSpeedDescription();
    }
    return getColourDescription();
  }
  
  public String getDigitalZoomDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(10)) {
      return null;
    }
    float f = this._directory.getFloat(10);
    if (f == 0.0F) {
      return "Off";
    }
    return Float.toString(f);
  }
  
  public String getFlashModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4)) {
      return null;
    }
    int i = this._directory.getInt(4);
    switch (i)
    {
    case 3: 
    case 5: 
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Auto";
    case 2: 
      return "Flash On";
    case 4: 
      return "Flash Off";
    }
    return "Red-eye Reduction";
  }
  
  public String getFocusModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(3)) {
      return null;
    }
    int i = this._directory.getInt(3);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 2: 
      return "Custom";
    }
    return "Auto";
  }
  
  public String getIsoSpeedDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(20)) {
      return null;
    }
    int i = this._directory.getInt(20);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 10: 
      return "ISO 100";
    case 16: 
      return "ISO 200";
    case 100: 
      return "ISO 100";
    }
    return "ISO 200";
  }
  
  public String getQualityLevelDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(2)) {
      return null;
    }
    int i = this._directory.getInt(2);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Good";
    case 1: 
      return "Better";
    }
    return "Best";
  }
  
  public String getSaturationDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(13)) {
      return null;
    }
    int i = this._directory.getInt(13);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Normal";
    case 1: 
      return "Low";
    }
    return "High";
  }
  
  public String getSharpnessDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(11)) {
      return null;
    }
    int i = this._directory.getInt(11);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Normal";
    case 1: 
      return "Soft";
    }
    return "Hard";
  }
  
  public String getWhiteBalanceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(7)) {
      return null;
    }
    int i = this._directory.getInt(7);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Auto";
    case 1: 
      return "Daylight";
    case 2: 
      return "Shade";
    case 3: 
      return "Tungsten";
    case 4: 
      return "Fluorescent";
    }
    return "Manual";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.PentaxMakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */