package com.drew.metadata.exif;

import com.drew.imaging.PhotographicConversions;
import com.drew.lang.Rational;
import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;

public class ExifDescriptor
  extends TagDescriptor
{
  private static final DecimalFormat SimpleDecimalFormatter = new DecimalFormat("0.#");
  private boolean _allowDecimalRepresentationOfRationals = true;
  
  public ExifDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public static String convertBytesToVersionString(int[] paramArrayOfInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if ((i >= 4) || (i >= paramArrayOfInt.length)) {
      return localStringBuffer.toString();
    }
    if (i == 2) {
      localStringBuffer.append('.');
    }
    String str = String.valueOf((char)paramArrayOfInt[i]);
    if ((i == 0) && ("0".equals(str))) {}
    for (;;)
    {
      i++;
      break;
      localStringBuffer.append(str);
    }
  }
  
  private String getUnicodeDescription(int paramInt)
    throws MetadataException
  {
    if (!this._directory.containsTag(paramInt)) {
      return null;
    }
    byte[] arrayOfByte = this._directory.getByteArray(paramInt);
    try
    {
      String str = new String(arrayOfByte, "UTF-16LE").trim();
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return null;
  }
  
  public String get35mmFilmEquivFocalLengthDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41989)) {
      return null;
    }
    int i = this._directory.getInt(41989);
    if (i == 0) {
      return "Unknown";
    }
    return SimpleDecimalFormatter.format(i) + "mm";
  }
  
  public String getApertureValueDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37378)) {
      return null;
    }
    double d = PhotographicConversions.apertureToFStop(this._directory.getDouble(37378));
    return "F" + SimpleDecimalFormatter.format(d);
  }
  
  public String getBitsPerSampleDescription()
  {
    if (!this._directory.containsTag(258)) {
      return null;
    }
    return this._directory.getString(258) + " bits/component/pixel";
  }
  
  public String getColorSpaceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(40961)) {
      return null;
    }
    int i = this._directory.getInt(40961);
    if (i == 1) {
      return "sRGB";
    }
    if (i == 65535) {
      return "Undefined";
    }
    return "Unknown";
  }
  
  public String getComponentConfigurationDescription()
    throws MetadataException
  {
    int[] arrayOfInt = this._directory.getIntArray(37121);
    String[] arrayOfString = { "", "Y", "Cb", "Cr", "R", "G", "B" };
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0;; i++)
    {
      if (i >= Math.min(4, arrayOfInt.length)) {
        return localStringBuffer.toString();
      }
      int j = arrayOfInt[i];
      if ((j > 0) && (j < arrayOfString.length)) {
        localStringBuffer.append(arrayOfString[j]);
      }
    }
  }
  
  public String getCompressionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(259)) {
      return null;
    }
    switch (this._directory.getInt(259))
    {
    default: 
      return "Unknown compression";
    case 1: 
      return "Uncompressed";
    case 2: 
      return "CCITT 1D";
    case 3: 
      return "T4/Group 3 Fax";
    case 4: 
      return "T6/Group 4 Fax";
    case 5: 
      return "LZW";
    case 6: 
      return "JPEG (old-style)";
    case 7: 
      return "JPEG";
    case 8: 
      return "Adobe Deflate";
    case 9: 
      return "JBIG B&W";
    case 10: 
      return "JBIG Color";
    case 32766: 
      return "Next";
    case 32771: 
      return "CCIRLEW";
    case 32773: 
      return "PackBits";
    case 32809: 
      return "Thunderscan";
    case 32895: 
      return "IT8CTPAD";
    case 32896: 
      return "IT8LW";
    case 32897: 
      return "IT8MP";
    case 32898: 
      return "IT8BL";
    case 32908: 
      return "PixarFilm";
    case 32909: 
      return "PixarLog";
    case 32946: 
      return "Deflate";
    case 32947: 
      return "DCS";
    case 32661: 
      return "JBIG";
    case 32676: 
      return "SGILog";
    case 32677: 
      return "SGILog24";
    case 32712: 
      return "JPEG 2000";
    }
    return "Nikon NEF Compressed";
  }
  
  public String getCompressionLevelDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37122)) {
      return null;
    }
    Rational localRational = this._directory.getRational(37122);
    String str = localRational.toSimpleString(this._allowDecimalRepresentationOfRationals);
    if ((localRational.isInteger()) && (localRational.intValue() == 1)) {
      return str + " bit/pixel";
    }
    return str + " bits/pixel";
  }
  
  public String getContrastDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41992)) {
      return null;
    }
    switch (this._directory.getInt(41992))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41992) + ")";
    case 0: 
      return "None";
    case 1: 
      return "Soft";
    }
    return "Hard";
  }
  
  public String getCustomRenderedDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41985)) {
      return null;
    }
    switch (this._directory.getInt(41985))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41985) + ")";
    case 0: 
      return "Normal process";
    }
    return "Custom process";
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    default: 
      return this._directory.getString(paramInt);
    case 274: 
      return getOrientationDescription();
    case 254: 
      return getNewSubfileTypeDescription();
    case 255: 
      return getSubfileTypeDescription();
    case 263: 
      return getThresholdingDescription();
    case 266: 
      return getFillOrderDescription();
    case 296: 
      return getResolutionDescription();
    case 531: 
      return getYCbCrPositioningDescription();
    case 33434: 
      return getExposureTimeDescription();
    case 37377: 
      return getShutterSpeedDescription();
    case 33437: 
      return getFNumberDescription();
    case 282: 
      return getXResolutionDescription();
    case 283: 
      return getYResolutionDescription();
    case 513: 
      return getThumbnailOffsetDescription();
    case 514: 
      return getThumbnailLengthDescription();
    case 37122: 
      return getCompressionLevelDescription();
    case 37382: 
      return getSubjectDistanceDescription();
    case 37383: 
      return getMeteringModeDescription();
    case 37384: 
      return getWhiteBalanceDescription();
    case 37385: 
      return getFlashDescription();
    case 37386: 
      return getFocalLengthDescription();
    case 40961: 
      return getColorSpaceDescription();
    case 40962: 
      return getExifImageWidthDescription();
    case 40963: 
      return getExifImageHeightDescription();
    case 41488: 
      return getFocalPlaneResolutionUnitDescription();
    case 41486: 
      return getFocalPlaneXResolutionDescription();
    case 41487: 
      return getFocalPlaneYResolutionDescription();
    case 256: 
      return getThumbnailImageWidthDescription();
    case 257: 
      return getThumbnailImageHeightDescription();
    case 258: 
      return getBitsPerSampleDescription();
    case 259: 
      return getCompressionDescription();
    case 262: 
      return getPhotometricInterpretationDescription();
    case 278: 
      return getRowsPerStripDescription();
    case 279: 
      return getStripByteCountsDescription();
    case 277: 
      return getSamplesPerPixelDescription();
    case 284: 
      return getPlanarConfigurationDescription();
    case 530: 
      return getYCbCrSubsamplingDescription();
    case 34850: 
      return getExposureProgramDescription();
    case 37378: 
      return getApertureValueDescription();
    case 37381: 
      return getMaxApertureValueDescription();
    case 41495: 
      return getSensingMethodDescription();
    case 37380: 
      return getExposureBiasDescription();
    case 41728: 
      return getFileSourceDescription();
    case 41729: 
      return getSceneTypeDescription();
    case 37121: 
      return getComponentConfigurationDescription();
    case 36864: 
      return getExifVersionDescription();
    case 40960: 
      return getFlashPixVersionDescription();
    case 532: 
      return getReferenceBlackWhiteDescription();
    case 34855: 
      return getIsoEquivalentDescription();
    case 61441: 
      return getThumbnailDescription();
    case 37510: 
      return getUserCommentDescription();
    case 41985: 
      return getCustomRenderedDescription();
    case 41986: 
      return getExposureModeDescription();
    case 41987: 
      return getWhiteBalanceModeDescription();
    case 41988: 
      return getDigitalZoomRatioDescription();
    case 41989: 
      return get35mmFilmEquivFocalLengthDescription();
    case 41990: 
      return getSceneCaptureTypeDescription();
    case 41991: 
      return getGainControlDescription();
    case 41992: 
      return getContrastDescription();
    case 41993: 
      return getSaturationDescription();
    case 41994: 
      return getSharpnessDescription();
    case 41996: 
      return getSubjectDistanceRangeDescription();
    case 40093: 
      return getWindowsAuthorDescription();
    case 40092: 
      return getWindowsCommentDescription();
    case 40094: 
      return getWindowsKeywordsDescription();
    case 40095: 
      return getWindowsSubjectDescription();
    }
    return getWindowsTitleDescription();
  }
  
  public String getDigitalZoomRatioDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41988)) {
      return null;
    }
    Rational localRational = this._directory.getRational(41988);
    if (localRational.getNumerator() == 0) {
      return "Digital zoom not used.";
    }
    return SimpleDecimalFormatter.format(localRational.doubleValue());
  }
  
  public String getExifImageHeightDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(40963)) {
      return null;
    }
    return this._directory.getInt(40963) + " pixels";
  }
  
  public String getExifImageWidthDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(40962)) {
      return null;
    }
    return this._directory.getInt(40962) + " pixels";
  }
  
  public String getExifVersionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(36864)) {
      return null;
    }
    return convertBytesToVersionString(this._directory.getIntArray(36864));
  }
  
  public String getExposureBiasDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37380)) {
      return null;
    }
    return this._directory.getRational(37380).toSimpleString(true) + " EV";
  }
  
  public String getExposureModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41986)) {
      return null;
    }
    switch (this._directory.getInt(41986))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41986) + ")";
    case 0: 
      return "Auto exposure";
    case 1: 
      return "Manual exposure";
    }
    return "Auto bracket";
  }
  
  public String getExposureProgramDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(34850)) {
      return null;
    }
    switch (this._directory.getInt(34850))
    {
    default: 
      return "Unknown program (" + this._directory.getInt(34850) + ")";
    case 1: 
      return "Manual control";
    case 2: 
      return "Program normal";
    case 3: 
      return "Aperture priority";
    case 4: 
      return "Shutter priority";
    case 5: 
      return "Program creative (slow program)";
    case 6: 
      return "Program action (high-speed program)";
    case 7: 
      return "Portrait mode";
    }
    return "Landscape mode";
  }
  
  public String getExposureTimeDescription()
  {
    if (!this._directory.containsTag(33434)) {
      return null;
    }
    return this._directory.getString(33434) + " sec";
  }
  
  public String getFNumberDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(33437)) {
      return null;
    }
    Rational localRational = this._directory.getRational(33437);
    return "F" + SimpleDecimalFormatter.format(localRational.doubleValue());
  }
  
  public String getFileSourceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41728)) {
      return null;
    }
    int i = this._directory.getInt(41728);
    if (i == 3) {
      return "Digital Still Camera (DSC)";
    }
    return "Unknown (" + i + ")";
  }
  
  public String getFillOrderDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(266)) {
      return null;
    }
    switch (this._directory.getInt(266))
    {
    default: 
      return "Unknown (" + this._directory.getInt(266) + ")";
    case 1: 
      return "Normal";
    }
    return "Reversed";
  }
  
  public String getFlashDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37385)) {
      return null;
    }
    int i = this._directory.getInt(37385);
    StringBuffer localStringBuffer = new StringBuffer();
    if ((i & 0x1) != 0)
    {
      localStringBuffer.append("Flash fired");
      if ((i & 0x4) != 0)
      {
        if ((i & 0x2) == 0) {
          break label114;
        }
        localStringBuffer.append(", return detected");
      }
    }
    for (;;)
    {
      if ((i & 0x10) != 0) {
        localStringBuffer.append(", auto");
      }
      if ((i & 0x40) != 0) {
        localStringBuffer.append(", red-eye reduction");
      }
      return localStringBuffer.toString();
      localStringBuffer.append("Flash did not fire");
      break;
      label114:
      localStringBuffer.append(", return not detected");
    }
  }
  
  public String getFlashPixVersionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(40960)) {
      return null;
    }
    return convertBytesToVersionString(this._directory.getIntArray(40960));
  }
  
  public String getFocalLengthDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37386)) {
      return null;
    }
    return new DecimalFormat("0.0##").format(this._directory.getRational(37386).doubleValue()) + " mm";
  }
  
  public String getFocalPlaneResolutionUnitDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41488)) {
      return null;
    }
    switch (this._directory.getInt(41488))
    {
    default: 
      return "";
    case 1: 
      return "(No unit)";
    case 2: 
      return "Inches";
    }
    return "cm";
  }
  
  public String getFocalPlaneXResolutionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41486)) {
      return null;
    }
    return this._directory.getRational(41486).getReciprocal().toSimpleString(this._allowDecimalRepresentationOfRationals) + " " + getFocalPlaneResolutionUnitDescription().toLowerCase();
  }
  
  public String getFocalPlaneYResolutionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41487)) {
      return null;
    }
    return this._directory.getRational(41487).getReciprocal().toSimpleString(this._allowDecimalRepresentationOfRationals) + " " + getFocalPlaneResolutionUnitDescription().toLowerCase();
  }
  
  public String getGainControlDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41991)) {
      return null;
    }
    switch (this._directory.getInt(41991))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41991) + ")";
    case 0: 
      return "None";
    case 1: 
      return "Low gain up";
    case 2: 
      return "Low gain down";
    case 3: 
      return "High gain up";
    }
    return "High gain down";
  }
  
  public String getIsoEquivalentDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(34855)) {
      return null;
    }
    int i = this._directory.getInt(34855);
    if (i < 50) {
      i *= 200;
    }
    return Integer.toString(i);
  }
  
  public String getMaxApertureValueDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37381)) {
      return null;
    }
    double d = PhotographicConversions.apertureToFStop(this._directory.getDouble(37381));
    return "F" + SimpleDecimalFormatter.format(d);
  }
  
  public String getMeteringModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37383)) {
      return null;
    }
    switch (this._directory.getInt(37383))
    {
    default: 
      return "";
    case 0: 
      return "Unknown";
    case 1: 
      return "Average";
    case 2: 
      return "Center weighted average";
    case 3: 
      return "Spot";
    case 4: 
      return "Multi-spot";
    case 5: 
      return "Multi-segment";
    case 6: 
      return "Partial";
    }
    return "(Other)";
  }
  
  public String getNewSubfileTypeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(254)) {
      return null;
    }
    switch (this._directory.getInt(254))
    {
    default: 
      return "Unknown (" + this._directory.getInt(254) + ")";
    case 1: 
      return "Full-resolution image";
    case 2: 
      return "Reduced-resolution image";
    case 3: 
      return "Single page of multi-page reduced-resolution image";
    case 4: 
      return "Transparency mask";
    case 5: 
      return "Transparency mask of reduced-resolution image";
    case 6: 
      return "Transparency mask of multi-page image";
    }
    return "Transparency mask of reduced-resolution multi-page image";
  }
  
  public String getOrientationDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(274)) {
      return null;
    }
    int i = this._directory.getInt(274);
    switch (i)
    {
    default: 
      return String.valueOf(i);
    case 1: 
      return "Top, left side (Horizontal / normal)";
    case 2: 
      return "Top, right side (Mirror horizontal)";
    case 3: 
      return "Bottom, right side (Rotate 180)";
    case 4: 
      return "Bottom, left side (Mirror vertical)";
    case 5: 
      return "Left side, top (Mirror horizontal and rotate 270 CW)";
    case 6: 
      return "Right side, top (Rotate 90 CW)";
    case 7: 
      return "Right side, bottom (Mirror horizontal and rotate 90 CW)";
    }
    return "Left side, bottom (Rotate 270 CW)";
  }
  
  public String getPhotometricInterpretationDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(262)) {
      return null;
    }
    switch (this._directory.getInt(262))
    {
    default: 
      return "Unknown colour space";
    case 0: 
      return "WhiteIsZero";
    case 1: 
      return "BlackIsZero";
    case 2: 
      return "RGB";
    case 3: 
      return "RGB Palette";
    case 4: 
      return "Transparency Mask";
    case 5: 
      return "CMYK";
    case 6: 
      return "YCbCr";
    case 8: 
      return "CIELab";
    case 9: 
      return "ICCLab";
    case 10: 
      return "ITULab";
    case 32803: 
      return "Color Filter Array";
    case 32844: 
      return "Pixar LogL";
    case 32845: 
      return "Pixar LogLuv";
    }
    return "Linear Raw";
  }
  
  public String getPlanarConfigurationDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(284)) {
      return null;
    }
    switch (this._directory.getInt(284))
    {
    default: 
      return "Unknown configuration";
    case 1: 
      return "Chunky (contiguous for each subsampling pixel)";
    }
    return "Separate (Y-plane/Cb-plane/Cr-plane format)";
  }
  
  public String getReferenceBlackWhiteDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(532)) {
      return null;
    }
    int[] arrayOfInt = this._directory.getIntArray(532);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    int k = arrayOfInt[2];
    int m = arrayOfInt[3];
    int n = arrayOfInt[4];
    int i1 = arrayOfInt[5];
    return "[" + i + "," + k + "," + n + "] " + "[" + j + "," + m + "," + i1 + "]";
  }
  
  public String getResolutionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(296)) {
      return "";
    }
    switch (this._directory.getInt(296))
    {
    default: 
      return "";
    case 1: 
      return "(No unit)";
    case 2: 
      return "Inch";
    }
    return "cm";
  }
  
  public String getRowsPerStripDescription()
  {
    if (!this._directory.containsTag(278)) {
      return null;
    }
    return this._directory.getString(278) + " rows/strip";
  }
  
  public String getSamplesPerPixelDescription()
  {
    if (!this._directory.containsTag(277)) {
      return null;
    }
    return this._directory.getString(277) + " samples/pixel";
  }
  
  public String getSaturationDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41993)) {
      return null;
    }
    switch (this._directory.getInt(41993))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41993) + ")";
    case 0: 
      return "None";
    case 1: 
      return "Low saturation";
    }
    return "High saturation";
  }
  
  public String getSceneCaptureTypeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41990)) {
      return null;
    }
    switch (this._directory.getInt(41990))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41990) + ")";
    case 0: 
      return "Standard";
    case 1: 
      return "Landscape";
    case 2: 
      return "Portrait";
    }
    return "Night scene";
  }
  
  public String getSceneTypeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41729)) {
      return null;
    }
    int i = this._directory.getInt(41729);
    if (i == 1) {
      return "Directly photographed image";
    }
    return "Unknown (" + i + ")";
  }
  
  public String getSensingMethodDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41495)) {
      return null;
    }
    switch (this._directory.getInt(41495))
    {
    case 6: 
    default: 
      return "";
    case 1: 
      return "(Not defined)";
    case 2: 
      return "One-chip color area sensor";
    case 3: 
      return "Two-chip color area sensor";
    case 4: 
      return "Three-chip color area sensor";
    case 5: 
      return "Color sequential area sensor";
    case 7: 
      return "Trilinear sensor";
    }
    return "Color sequential linear sensor";
  }
  
  public String getSharpnessDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41994)) {
      return null;
    }
    switch (this._directory.getInt(41994))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41994) + ")";
    case 0: 
      return "None";
    case 1: 
      return "Low";
    }
    return "Hard";
  }
  
  public String getShutterSpeedDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37377)) {
      return null;
    }
    float f = this._directory.getFloat(37377);
    if (f <= 1.0F) {
      return (float)Math.round(10.0D * (float)(1.0D / Math.exp(f * Math.log(2.0D)))) / 10.0F + " sec";
    }
    int i = (int)Math.exp(f * Math.log(2.0D));
    return "1/" + i + " sec";
  }
  
  public String getStripByteCountsDescription()
  {
    if (!this._directory.containsTag(279)) {
      return null;
    }
    return this._directory.getString(279) + " bytes";
  }
  
  public String getSubfileTypeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(255)) {
      return null;
    }
    switch (this._directory.getInt(255))
    {
    default: 
      return "Unknown (" + this._directory.getInt(255) + ")";
    case 1: 
      return "Full-resolution image";
    case 2: 
      return "Reduced-resolution image";
    }
    return "Single page of multi-page image";
  }
  
  public String getSubjectDistanceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37382)) {
      return null;
    }
    Rational localRational = this._directory.getRational(37382);
    return new DecimalFormat("0.0##").format(localRational.doubleValue()) + " metres";
  }
  
  public String getSubjectDistanceRangeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41996)) {
      return null;
    }
    switch (this._directory.getInt(41996))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41996) + ")";
    case 0: 
      return "Unknown";
    case 1: 
      return "Macro";
    case 2: 
      return "Close view";
    }
    return "Distant view";
  }
  
  public String getThresholdingDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(263)) {
      return null;
    }
    switch (this._directory.getInt(263))
    {
    default: 
      return "Unknown (" + this._directory.getInt(263) + ")";
    case 1: 
      return "No dithering or halftoning";
    case 2: 
      return "Ordered dither or halftone";
    }
    return "Randomized dither";
  }
  
  public String getThumbnailDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(61441)) {
      return null;
    }
    int[] arrayOfInt = this._directory.getIntArray(61441);
    return "[" + arrayOfInt.length + " bytes of thumbnail data]";
  }
  
  public String getThumbnailImageHeightDescription()
  {
    if (!this._directory.containsTag(257)) {
      return null;
    }
    return this._directory.getString(257) + " pixels";
  }
  
  public String getThumbnailImageWidthDescription()
  {
    if (!this._directory.containsTag(256)) {
      return null;
    }
    return this._directory.getString(256) + " pixels";
  }
  
  public String getThumbnailLengthDescription()
  {
    if (!this._directory.containsTag(514)) {
      return null;
    }
    return this._directory.getString(514) + " bytes";
  }
  
  public String getThumbnailOffsetDescription()
  {
    if (!this._directory.containsTag(513)) {
      return null;
    }
    return this._directory.getString(513) + " bytes";
  }
  
  public String getUserCommentDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37510)) {
      return null;
    }
    byte[] arrayOfByte = this._directory.getByteArray(37510);
    if (arrayOfByte.length == 0) {
      return "";
    }
    String[] arrayOfString = { "ASCII", "UNICODE", "JIS" };
    String str1;
    if (arrayOfByte.length >= 10) {
      str1 = new String(arrayOfByte, 0, 10);
    }
    for (int i = 0;; i++)
    {
      if (i >= arrayOfString.length) {
        return new String(arrayOfByte).trim();
      }
      String str2 = arrayOfString[i];
      if (str1.startsWith(str2)) {
        for (int j = str2.length();; j++)
        {
          if (j >= 10) {
            return new String(arrayOfByte, 10, -10 + arrayOfByte.length).trim();
          }
          int k = arrayOfByte[j];
          if ((k != 0) && (k != 32))
          {
            if (str2.equals("UNICODE")) {
              try
              {
                String str3 = new String(arrayOfByte, j, arrayOfByte.length - j, "UTF-16LE").trim();
                return str3;
              }
              catch (UnsupportedEncodingException localUnsupportedEncodingException)
              {
                return null;
              }
            }
            return new String(arrayOfByte, j, arrayOfByte.length - j).trim();
          }
        }
      }
    }
  }
  
  public String getWhiteBalanceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(37384)) {
      return null;
    }
    switch (this._directory.getInt(37384))
    {
    default: 
      return "Unknown (" + this._directory.getInt(37384) + ")";
    case 0: 
      return "Unknown";
    case 1: 
      return "Daylight";
    case 2: 
      return "Flourescent";
    case 3: 
      return "Tungsten";
    case 10: 
      return "Flash";
    case 17: 
      return "Standard light";
    case 18: 
      return "Standard light (B)";
    case 19: 
      return "Standard light (C)";
    case 20: 
      return "D55";
    case 21: 
      return "D65";
    case 22: 
      return "D75";
    }
    return "(Other)";
  }
  
  public String getWhiteBalanceModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(41987)) {
      return null;
    }
    switch (this._directory.getInt(41987))
    {
    default: 
      return "Unknown (" + this._directory.getInt(41987) + ")";
    case 0: 
      return "Auto white balance";
    }
    return "Manual white balance";
  }
  
  public String getWindowsAuthorDescription()
    throws MetadataException
  {
    return getUnicodeDescription(40093);
  }
  
  public String getWindowsCommentDescription()
    throws MetadataException
  {
    return getUnicodeDescription(40092);
  }
  
  public String getWindowsKeywordsDescription()
    throws MetadataException
  {
    return getUnicodeDescription(40094);
  }
  
  public String getWindowsSubjectDescription()
    throws MetadataException
  {
    return getUnicodeDescription(40095);
  }
  
  public String getWindowsTitleDescription()
    throws MetadataException
  {
    return getUnicodeDescription(40091);
  }
  
  public String getXResolutionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(282)) {
      return null;
    }
    return this._directory.getRational(282).toSimpleString(this._allowDecimalRepresentationOfRationals) + " dots per " + getResolutionDescription().toLowerCase();
  }
  
  public String getYCbCrPositioningDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(531)) {
      return null;
    }
    int i = this._directory.getInt(531);
    switch (i)
    {
    default: 
      return String.valueOf(i);
    case 1: 
      return "Center of pixel array";
    }
    return "Datum point";
  }
  
  public String getYCbCrSubsamplingDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(530)) {
      return null;
    }
    int[] arrayOfInt = this._directory.getIntArray(530);
    if ((arrayOfInt[0] == 2) && (arrayOfInt[1] == 1)) {
      return "YCbCr4:2:2";
    }
    if ((arrayOfInt[0] == 2) && (arrayOfInt[1] == 2)) {
      return "YCbCr4:2:0";
    }
    return "(Unknown)";
  }
  
  public String getYResolutionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(283)) {
      return null;
    }
    return this._directory.getRational(283).toSimpleString(this._allowDecimalRepresentationOfRationals) + " dots per " + getResolutionDescription().toLowerCase();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.ExifDescriptor
 * JD-Core Version:    0.7.0.1
 */