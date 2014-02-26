package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class CasioType1MakernoteDescriptor
  extends TagDescriptor
{
  public CasioType1MakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getCcdSensitivityDescription()
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
    case 64: 
      return "Normal";
    case 125: 
      return "+1.0";
    case 250: 
      return "+2.0";
    case 244: 
      return "+3.0";
    case 80: 
      return "Normal (ISO 80 equivalent)";
    }
    return "High";
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
    case 8: 
    case 9: 
    case 14: 
    case 15: 
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    default: 
      return this._directory.getString(paramInt);
    case 1: 
      return getRecordingModeDescription();
    case 2: 
      return getQualityDescription();
    case 3: 
      return getFocusingModeDescription();
    case 4: 
      return getFlashModeDescription();
    case 5: 
      return getFlashIntensityDescription();
    case 6: 
      return getObjectDistanceDescription();
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
    }
    return getCcdSensitivityDescription();
  }
  
  public String getDigitalZoomDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(10)) {
      return null;
    }
    int i = this._directory.getInt(10);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 65536: 
      return "No digital zoom";
    case 65537: 
      return "2x digital zoom";
    case 131072: 
      return "2x digital zoom";
    }
    return "4x digital zoom";
  }
  
  public String getFlashIntensityDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(5)) {
      return null;
    }
    int i = this._directory.getInt(5);
    switch (i)
    {
    case 12: 
    case 14: 
    default: 
      return "Unknown (" + i + ")";
    case 11: 
      return "Weak";
    case 13: 
      return "Normal";
    }
    return "Strong";
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
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Auto";
    case 2: 
      return "On";
    case 3: 
      return "Off";
    }
    return "Red eye reduction";
  }
  
  public String getFocusingModeDescription()
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
      return "Macro";
    case 3: 
      return "Auto focus";
    case 4: 
      return "Manual focus";
    }
    return "Infinity";
  }
  
  public String getObjectDistanceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(6)) {
      return null;
    }
    return this._directory.getInt(6) + " mm";
  }
  
  public String getQualityDescription()
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
    case 1: 
      return "Economy";
    case 2: 
      return "Normal";
    }
    return "Fine";
  }
  
  public String getRecordingModeDescription()
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
      return "Single shutter";
    case 2: 
      return "Panorama";
    case 3: 
      return "Night scene";
    case 4: 
      return "Portrait";
    }
    return "Landscape";
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
    case 1: 
      return "Auto";
    case 2: 
      return "Tungsten";
    case 3: 
      return "Daylight";
    case 4: 
      return "Flourescent";
    case 5: 
      return "Shade";
    }
    return "Manual";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.CasioType1MakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */