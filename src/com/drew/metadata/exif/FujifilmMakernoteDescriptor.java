package com.drew.metadata.exif;

import com.drew.lang.Rational;
import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class FujifilmMakernoteDescriptor
  extends TagDescriptor
{
  public FujifilmMakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getAutoExposureWarningDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4866)) {
      return null;
    }
    int i = this._directory.getInt(4866);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "AE good";
    }
    return "Over exposed (>1/1000s @ F11)";
  }
  
  public String getBlurWarningDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4864)) {
      return null;
    }
    int i = this._directory.getInt(4864);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "No blur warning";
    }
    return "Blur warning";
  }
  
  public String getColorDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4099)) {
      return null;
    }
    int i = this._directory.getInt(4099);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Normal (STD)";
    case 256: 
      return "High";
    }
    return "Low (ORG)";
  }
  
  public String getContinuousTakingOrAutoBrackettingDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4352)) {
      return null;
    }
    int i = this._directory.getInt(4352);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Off";
    }
    return "On";
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    default: 
      return this._directory.getString(paramInt);
    case 4097: 
      return getSharpnessDescription();
    case 4098: 
      return getWhiteBalanceDescription();
    case 4099: 
      return getColorDescription();
    case 4100: 
      return getToneDescription();
    case 4112: 
      return getFlashModeDescription();
    case 4113: 
      return getFlashStrengthDescription();
    case 4128: 
      return getMacroDescription();
    case 4129: 
      return getFocusModeDescription();
    case 4144: 
      return getSlowSyncDescription();
    case 4145: 
      return getPictureModeDescription();
    case 4352: 
      return getContinuousTakingOrAutoBrackettingDescription();
    case 4864: 
      return getBlurWarningDescription();
    case 4865: 
      return getFocusWarningDescription();
    }
    return getAutoExposureWarningDescription();
  }
  
  public String getFlashModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4112)) {
      return null;
    }
    int i = this._directory.getInt(4112);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Auto";
    case 1: 
      return "On";
    case 2: 
      return "Off";
    }
    return "Red-eye reduction";
  }
  
  public String getFlashStrengthDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4113)) {
      return null;
    }
    return this._directory.getRational(4113).toSimpleString(false) + " EV (Apex)";
  }
  
  public String getFocusModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4129)) {
      return null;
    }
    int i = this._directory.getInt(4129);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Auto focus";
    }
    return "Manual focus";
  }
  
  public String getFocusWarningDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4865)) {
      return null;
    }
    int i = this._directory.getInt(4865);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Auto focus good";
    }
    return "Out of focus";
  }
  
  public String getMacroDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4128)) {
      return null;
    }
    int i = this._directory.getInt(4128);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Off";
    }
    return "On";
  }
  
  public String getPictureModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4145)) {
      return null;
    }
    int i = this._directory.getInt(4145);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Auto";
    case 1: 
      return "Portrait scene";
    case 2: 
      return "Landscape scene";
    case 4: 
      return "Sports scene";
    case 5: 
      return "Night scene";
    case 6: 
      return "Program AE";
    case 256: 
      return "Aperture priority AE";
    case 512: 
      return "Shutter priority AE";
    }
    return "Manual exposure";
  }
  
  public String getSharpnessDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4097)) {
      return null;
    }
    int i = this._directory.getInt(4097);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Softest";
    case 2: 
      return "Soft";
    case 3: 
      return "Normal";
    case 4: 
      return "Hard";
    }
    return "Hardest";
  }
  
  public String getSlowSyncDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4144)) {
      return null;
    }
    int i = this._directory.getInt(4144);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Off";
    }
    return "On";
  }
  
  public String getToneDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4100)) {
      return null;
    }
    int i = this._directory.getInt(4100);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Normal (STD)";
    case 256: 
      return "High (HARD)";
    }
    return "Low (ORG)";
  }
  
  public String getWhiteBalanceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4098)) {
      return null;
    }
    int i = this._directory.getInt(4098);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Auto";
    case 256: 
      return "Daylight";
    case 512: 
      return "Cloudy";
    case 768: 
      return "DaylightColor-fluorescence";
    case 769: 
      return "DaywhiteColor-fluorescence";
    case 770: 
      return "White-fluorescence";
    case 1024: 
      return "Incandenscense";
    }
    return "Custom white balance";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.FujifilmMakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */