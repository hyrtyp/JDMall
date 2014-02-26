package com.drew.metadata.exif;

import com.drew.lang.Rational;
import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class NikonType1MakernoteDescriptor
  extends TagDescriptor
{
  public NikonType1MakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getCcdSensitivityDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(6)) {
      return null;
    }
    int i = this._directory.getInt(6);
    switch (i)
    {
    case 1: 
    case 3: 
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "ISO80";
    case 2: 
      return "ISO160";
    case 4: 
      return "ISO320";
    }
    return "ISO100";
  }
  
  public String getColorModeDescription()
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
      return "Color";
    }
    return "Monochrome";
  }
  
  public String getConverterDescription()
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
      return "None";
    }
    return "Fisheye converter";
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    case 9: 
    default: 
      return this._directory.getString(paramInt);
    case 3: 
      return getQualityDescription();
    case 4: 
      return getColorModeDescription();
    case 5: 
      return getImageAdjustmentDescription();
    case 6: 
      return getCcdSensitivityDescription();
    case 7: 
      return getWhiteBalanceDescription();
    case 8: 
      return getFocusDescription();
    case 10: 
      return getDigitalZoomDescription();
    }
    return getConverterDescription();
  }
  
  public String getDigitalZoomDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(10)) {
      return null;
    }
    Rational localRational = this._directory.getRational(10);
    if (localRational.getNumerator() == 0) {
      return "No digital zoom";
    }
    return localRational.toSimpleString(true) + "x digital zoom";
  }
  
  public String getFocusDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(8)) {
      return null;
    }
    Rational localRational = this._directory.getRational(8);
    if ((localRational.getNumerator() == 1) && (localRational.getDenominator() == 0)) {
      return "Infinite";
    }
    return localRational.toSimpleString(true);
  }
  
  public String getImageAdjustmentDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(5)) {
      return null;
    }
    int i = this._directory.getInt(5);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Normal";
    case 1: 
      return "Bright +";
    case 2: 
      return "Bright -";
    case 3: 
      return "Contrast +";
    }
    return "Contrast -";
  }
  
  public String getQualityDescription()
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
    case 1: 
      return "VGA Basic";
    case 2: 
      return "VGA Normal";
    case 3: 
      return "VGA Fine";
    case 4: 
      return "SXGA Basic";
    case 5: 
      return "SXGA Normal";
    }
    return "SXGA Fine";
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
      return "Preset";
    case 2: 
      return "Daylight";
    case 3: 
      return "Incandescense";
    case 4: 
      return "Flourescence";
    case 5: 
      return "Cloudy";
    }
    return "SpeedLight";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.NikonType1MakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */