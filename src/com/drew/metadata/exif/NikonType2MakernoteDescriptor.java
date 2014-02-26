package com.drew.metadata.exif;

import com.drew.lang.Rational;
import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;
import java.text.DecimalFormat;

public class NikonType2MakernoteDescriptor
  extends TagDescriptor
{
  public NikonType2MakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  private NikonType2MakernoteDirectory getMakernoteDirectory()
  {
    return (NikonType2MakernoteDirectory)this._directory;
  }
  
  public String getAutoFirmwareVersionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(1)) {
      return null;
    }
    return ExifDescriptor.convertBytesToVersionString(this._directory.getIntArray(1));
  }
  
  public String getAutoFlashCompensationDescription()
    throws MetadataException
  {
    Rational localRational = getMakernoteDirectory().getAutoFlashCompensation();
    if (localRational == null) {
      return "Unknown";
    }
    return new DecimalFormat("0.##").format(localRational.floatValue()) + " EV";
  }
  
  public String getAutoFocusPositionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(136)) {
      return null;
    }
    int[] arrayOfInt = this._directory.getIntArray(136);
    if ((arrayOfInt.length != 4) || (arrayOfInt[0] != 0) || (arrayOfInt[2] != 0) || (arrayOfInt[3] != 0)) {
      return "Unknown (" + this._directory.getString(136) + ")";
    }
    switch (arrayOfInt[1])
    {
    default: 
      return "Unknown (" + arrayOfInt[1] + ")";
    case 0: 
      return "Centre";
    case 1: 
      return "Top";
    case 2: 
      return "Bottom";
    case 3: 
      return "Left";
    }
    return "Right";
  }
  
  public String getColorModeDescription()
  {
    String str;
    if (!this._directory.containsTag(141)) {
      str = null;
    }
    do
    {
      return str;
      str = this._directory.getString(141);
    } while (!str.startsWith("MODE1"));
    return "Mode I (sRGB)";
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    default: 
      return this._directory.getString(paramInt);
    case 132: 
      return getLensDescription();
    case 146: 
      return getHueAdjustmentDescription();
    case 141: 
      return getColorModeDescription();
    case 18: 
      return getAutoFlashCompensationDescription();
    case 2: 
      return getIsoSettingDescription();
    case 134: 
      return getDigitalZoomDescription();
    case 136: 
      return getAutoFocusPositionDescription();
    }
    return getAutoFirmwareVersionDescription();
  }
  
  public String getDigitalZoomDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(134)) {
      return null;
    }
    Rational localRational = this._directory.getRational(134);
    if (localRational.intValue() == 1) {
      return "No digital zoom";
    }
    return localRational.toSimpleString(true) + "x digital zoom";
  }
  
  public String getHueAdjustmentDescription()
  {
    if (!this._directory.containsTag(146)) {
      return null;
    }
    return this._directory.getString(146) + " degrees";
  }
  
  public String getIsoSettingDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(2)) {
      return null;
    }
    int[] arrayOfInt = this._directory.getIntArray(2);
    if ((arrayOfInt[0] != 0) || (arrayOfInt[1] == 0)) {
      return "Unknown (" + this._directory.getString(2) + ")";
    }
    return "ISO " + arrayOfInt[1];
  }
  
  public String getLensDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(132)) {
      return null;
    }
    Rational[] arrayOfRational = this._directory.getRationalArray(132);
    if (arrayOfRational.length != 4) {
      return this._directory.getString(132);
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(arrayOfRational[0].intValue());
    localStringBuffer.append('-');
    localStringBuffer.append(arrayOfRational[1].intValue());
    localStringBuffer.append("mm f/");
    localStringBuffer.append(arrayOfRational[2].floatValue());
    localStringBuffer.append('-');
    localStringBuffer.append(arrayOfRational[3].floatValue());
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.NikonType2MakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */