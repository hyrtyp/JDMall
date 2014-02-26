package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class CasioType2MakernoteDescriptor
  extends TagDescriptor
{
  public CasioType2MakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getBestShotModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12295)) {
      return null;
    }
    int i = this._directory.getInt(12295);
    return "Unknown (" + i + ")";
  }
  
  public String getCasioPreviewThumbnailDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(8192)) {
      return null;
    }
    byte[] arrayOfByte = this._directory.getByteArray(8192);
    return "<" + arrayOfByte.length + " bytes of image data>";
  }
  
  public String getCcdIsoSensitivityDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12308)) {
      return null;
    }
    int i = this._directory.getInt(12308);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Off";
    }
    return "On";
  }
  
  public String getColourModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12309)) {
      return null;
    }
    int i = this._directory.getInt(12309);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    }
    return "Off";
  }
  
  public String getContrastDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(32)) {
      return null;
    }
    int i = this._directory.getInt(32);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "-1";
    case 1: 
      return "Normal";
    }
    return "+1";
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    default: 
      return this._directory.getString(paramInt);
    case 2: 
      return getThumbnailDimensionsDescription();
    case 3: 
      return getThumbnailSizeDescription();
    case 4: 
      return getThumbnailOffsetDescription();
    case 8: 
      return getQualityModeDescription();
    case 9: 
      return getImageSizeDescription();
    case 13: 
      return getFocusMode1Description();
    case 20: 
      return getIsoSensitivityDescription();
    case 25: 
      return getWhiteBalance1Description();
    case 29: 
      return getFocalLengthDescription();
    case 31: 
      return getSaturationDescription();
    case 32: 
      return getContrastDescription();
    case 33: 
      return getSharpnessDescription();
    case 3584: 
      return getPrintImageMatchingInfoDescription();
    case 8192: 
      return getCasioPreviewThumbnailDescription();
    case 8209: 
      return getWhiteBalanceBiasDescription();
    case 8210: 
      return getWhiteBalance2Description();
    case 8226: 
      return getObjectDistanceDescription();
    case 8244: 
      return getFlashDistanceDescription();
    case 12288: 
      return getRecordModeDescription();
    case 12289: 
      return getSelfTimerDescription();
    case 12290: 
      return getQualityDescription();
    case 12291: 
      return getFocusMode2Description();
    case 12294: 
      return getTimeZoneDescription();
    case 12295: 
      return getBestShotModeDescription();
    case 12308: 
      return getCcdIsoSensitivityDescription();
    case 12309: 
      return getColourModeDescription();
    case 12310: 
      return getEnhancementDescription();
    }
    return getFilterDescription();
  }
  
  public String getEnhancementDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12310)) {
      return null;
    }
    int i = this._directory.getInt(12310);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    }
    return "Off";
  }
  
  public String getFilterDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12311)) {
      return null;
    }
    int i = this._directory.getInt(12311);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    }
    return "Off";
  }
  
  public String getFlashDistanceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(8244)) {
      return null;
    }
    int i = this._directory.getInt(8244);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    }
    return "Off";
  }
  
  public String getFocalLengthDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(29)) {
      return null;
    }
    return Double.toString(this._directory.getDouble(29) / 10.0D) + " mm";
  }
  
  public String getFocusMode1Description()
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
    }
    return "Macro";
  }
  
  public String getFocusMode2Description()
    throws MetadataException
  {
    if (!this._directory.containsTag(12291)) {
      return null;
    }
    int i = this._directory.getInt(12291);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Fixation";
    }
    return "Multi-Area Focus";
  }
  
  public String getImageSizeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(9)) {
      return null;
    }
    int i = this._directory.getInt(9);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "640 x 480 pixels";
    case 4: 
      return "1600 x 1200 pixels";
    case 5: 
      return "2048 x 1536 pixels";
    case 20: 
      return "2288 x 1712 pixels";
    case 21: 
      return "2592 x 1944 pixels";
    case 22: 
      return "2304 x 1728 pixels";
    }
    return "3008 x 2008 pixels";
  }
  
  public String getIsoSensitivityDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(20)) {
      return null;
    }
    int i = this._directory.getInt(20);
    switch (i)
    {
    case 5: 
    case 7: 
    case 8: 
    default: 
      return "Unknown (" + i + ")";
    case 3: 
      return "50";
    case 4: 
      return "64";
    case 6: 
      return "100";
    }
    return "200";
  }
  
  public String getObjectDistanceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(8226)) {
      return null;
    }
    return Integer.toString(this._directory.getInt(8226)) + " mm";
  }
  
  public String getPrintImageMatchingInfoDescription()
  {
    if (!this._directory.containsTag(3584)) {
      return null;
    }
    return this._directory.getString(3584);
  }
  
  public String getQualityDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12290)) {
      return null;
    }
    int i = this._directory.getInt(12290);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    }
    return "Fine";
  }
  
  public String getQualityModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(8)) {
      return null;
    }
    int i = this._directory.getInt(8);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Fine";
    }
    return "Super Fine";
  }
  
  public String getRecordModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12288)) {
      return null;
    }
    int i = this._directory.getInt(12288);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    }
    return "Normal";
  }
  
  public String getSaturationDescription()
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
    case 0: 
      return "-1";
    case 1: 
      return "Normal";
    }
    return "+1";
  }
  
  public String getSelfTimerDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(12289)) {
      return null;
    }
    int i = this._directory.getInt(12289);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    }
    return "Off";
  }
  
  public String getSharpnessDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(33)) {
      return null;
    }
    int i = this._directory.getInt(33);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "-1";
    case 1: 
      return "Normal";
    }
    return "+1";
  }
  
  public String getThumbnailDimensionsDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(2)) {
      return null;
    }
    int[] arrayOfInt = this._directory.getIntArray(2);
    if (arrayOfInt.length != 2) {
      return this._directory.getString(2);
    }
    return arrayOfInt[0] + " x " + arrayOfInt[1] + " pixels";
  }
  
  public String getThumbnailOffsetDescription()
  {
    if (!this._directory.containsTag(4)) {
      return null;
    }
    return this._directory.getString(4);
  }
  
  public String getThumbnailSizeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(3)) {
      return null;
    }
    return Integer.toString(this._directory.getInt(3)) + " bytes";
  }
  
  public String getTimeZoneDescription()
  {
    if (!this._directory.containsTag(12294)) {
      return null;
    }
    return this._directory.getString(12294);
  }
  
  public String getWhiteBalance1Description()
    throws MetadataException
  {
    if (!this._directory.containsTag(25)) {
      return null;
    }
    int i = this._directory.getInt(25);
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
      return "Flourescent";
    }
    return "Manual";
  }
  
  public String getWhiteBalance2Description()
    throws MetadataException
  {
    if (!this._directory.containsTag(8210)) {
      return null;
    }
    int i = this._directory.getInt(8210);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Manual";
    case 1: 
      return "Auto";
    case 4: 
      return "Flash";
    }
    return "Flash";
  }
  
  public String getWhiteBalanceBiasDescription()
  {
    if (!this._directory.containsTag(8209)) {
      return null;
    }
    return this._directory.getString(8209);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.CasioType2MakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */