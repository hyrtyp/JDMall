package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class CanonMakernoteDescriptor
  extends TagDescriptor
{
  public CanonMakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getAfPointSelectedDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49427)) {
      return null;
    }
    int i = this._directory.getInt(49427);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 12288: 
      return "None (MF)";
    case 12289: 
      return "Auto selected";
    case 12290: 
      return "Right";
    case 12291: 
      return "Centre";
    }
    return "Left";
  }
  
  public String getAfPointUsedDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49678)) {
      return null;
    }
    int i = this._directory.getInt(49678);
    if ((i & 0x7) == 0) {
      return "Right";
    }
    if ((i & 0x7) == 1) {
      return "Centre";
    }
    if ((i & 0x7) == 2) {
      return "Left";
    }
    return "Unknown (" + i + ")";
  }
  
  public String getAutoExposureBrackettingSequenceAndAutoCancellationDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49927)) {
      return null;
    }
    int i = this._directory.getInt(49927);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "0,-,+ / Enabled";
    case 1: 
      return "0,-,+ / Disabled";
    case 2: 
      return "-,0,+ / Enabled";
    }
    return "-,0,+ / Disabled";
  }
  
  public String getAutoFocusAssistLightDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49925)) {
      return null;
    }
    int i = this._directory.getInt(49925);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "On (Auto)";
    }
    return "Off";
  }
  
  public String getContinuousDriveModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49413)) {
      return null;
    }
    int i = this._directory.getInt(49413);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      if (this._directory.getInt(49410) == 0) {
        return "Single shot";
      }
      return "Single shot with self-timer";
    }
    return "Continuous";
  }
  
  public String getContrastDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49421)) {
      return null;
    }
    int i = this._directory.getInt(49421);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 65535: 
      return "Low";
    case 0: 
      return "Normal";
    }
    return "High";
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    default: 
      return this._directory.getString(paramInt);
    case 49436: 
      return getFlashActivityDescription();
    case 49426: 
      return getFocusTypeDescription();
    case 49420: 
      return getDigitalZoomDescription();
    case 49411: 
      return getQualityDescription();
    case 49409: 
      return getMacroModeDescription();
    case 49410: 
      return getSelfTimerDelayDescription();
    case 49412: 
      return getFlashModeDescription();
    case 49413: 
      return getContinuousDriveModeDescription();
    case 49415: 
      return getFocusMode1Description();
    case 49418: 
      return getImageSizeDescription();
    case 49419: 
      return getEasyShootingModeDescription();
    case 49421: 
      return getContrastDescription();
    case 49422: 
      return getSaturationDescription();
    case 49423: 
      return getSharpnessDescription();
    case 49424: 
      return getIsoDescription();
    case 49425: 
      return getMeteringModeDescription();
    case 49427: 
      return getAfPointSelectedDescription();
    case 49428: 
      return getExposureModeDescription();
    case 49431: 
      return getLongFocalLengthDescription();
    case 49432: 
      return getShortFocalLengthDescription();
    case 49433: 
      return getFocalUnitsPerMillimetreDescription();
    case 49437: 
      return getFlashDetailsDescription();
    case 49440: 
      return getFocusMode2Description();
    case 49671: 
      return getWhiteBalanceDescription();
    case 49678: 
      return getAfPointUsedDescription();
    case 49679: 
      return getFlashBiasDescription();
    case 49921: 
      return getLongExposureNoiseReductionDescription();
    case 49922: 
      return getShutterAutoExposureLockButtonDescription();
    case 49923: 
      return getMirrorLockupDescription();
    case 49924: 
      return getTvAndAvExposureLevelDescription();
    case 49925: 
      return getAutoFocusAssistLightDescription();
    case 49926: 
      return getShutterSpeedInAvModeDescription();
    case 49927: 
      return getAutoExposureBrackettingSequenceAndAutoCancellationDescription();
    case 49928: 
      return getShutterCurtainSyncDescription();
    case 49929: 
      return getLensAutoFocusStopButtonDescription();
    case 49930: 
      return getFillFlashReductionDescription();
    case 49931: 
      return getMenuButtonReturnPositionDescription();
    case 49932: 
      return getSetButtonFunctionWhenShootingDescription();
    }
    return getSensorCleaningDescription();
  }
  
  public String getDigitalZoomDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49420)) {
      return null;
    }
    int i = this._directory.getInt(49420);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "No digital zoom";
    case 1: 
      return "2x";
    }
    return "4x";
  }
  
  public String getEasyShootingModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49419)) {
      return null;
    }
    int i = this._directory.getInt(49419);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Full auto";
    case 1: 
      return "Manual";
    case 2: 
      return "Landscape";
    case 3: 
      return "Fast shutter";
    case 4: 
      return "Slow shutter";
    case 5: 
      return "Night";
    case 6: 
      return "B&W";
    case 7: 
      return "Sepia";
    case 8: 
      return "Portrait";
    case 9: 
      return "Sports";
    case 10: 
      return "Macro / Closeup";
    }
    return "Pan focus";
  }
  
  public String getExposureModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49428)) {
      return null;
    }
    int i = this._directory.getInt(49428);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Easy shooting";
    case 1: 
      return "Program";
    case 2: 
      return "Tv-priority";
    case 3: 
      return "Av-priority";
    case 4: 
      return "Manual";
    }
    return "A-DEP";
  }
  
  public String getFillFlashReductionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49930)) {
      return null;
    }
    int i = this._directory.getInt(49930);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Enabled";
    }
    return "Disabled";
  }
  
  public String getFlashActivityDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49436)) {
      return null;
    }
    int i = this._directory.getInt(49436);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Flash did not fire";
    }
    return "Flash fired";
  }
  
  public String getFlashBiasDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49679)) {
      return null;
    }
    int i = this._directory.getInt(49679);
    int j = 0;
    if (i > 61440)
    {
      j = 1;
      i = 1 + (65535 - i);
    }
    if (j != 0) {}
    for (String str = "-";; str = "") {
      return str + Float.toString(i / 32.0F) + " EV";
    }
  }
  
  public String getFlashDetailsDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49437)) {
      return null;
    }
    int i = this._directory.getInt(49437);
    if ((0x1 & i << 14) > 0) {
      return "External E-TTL";
    }
    if ((0x1 & i << 13) > 0) {
      return "Internal flash";
    }
    if ((0x1 & i << 11) > 0) {
      return "FP sync used";
    }
    if ((0x1 & i << 4) > 0) {
      return "FP sync enabled";
    }
    return "Unknown (" + i + ")";
  }
  
  public String getFlashModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49412)) {
      return null;
    }
    int i = this._directory.getInt(49412);
    switch (i)
    {
    case 7: 
    case 8: 
    case 9: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
    case 14: 
    case 15: 
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "No flash fired";
    case 1: 
      return "Auto";
    case 2: 
      return "On";
    case 3: 
      return "Red-eye reduction";
    case 4: 
      return "Slow-synchro";
    case 5: 
      return "Auto and red-eye reduction";
    case 6: 
      return "On and red-eye reduction";
    }
    return "Extenal flash";
  }
  
  public String getFocalUnitsPerMillimetreDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49433)) {
      return "";
    }
    int i = this._directory.getInt(49433);
    if (i != 0) {
      return Integer.toString(i);
    }
    return "";
  }
  
  public String getFocusMode1Description()
    throws MetadataException
  {
    if (!this._directory.containsTag(49415)) {
      return null;
    }
    int i = this._directory.getInt(49415);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "One-shot";
    case 1: 
      return "AI Servo";
    case 2: 
      return "AI Focus";
    case 3: 
      return "Manual Focus";
    case 4: 
      return "Single";
    case 5: 
      return "Continuous";
    }
    return "Manual Focus";
  }
  
  public String getFocusMode2Description()
    throws MetadataException
  {
    if (!this._directory.containsTag(49440)) {
      return null;
    }
    int i = this._directory.getInt(49440);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Single";
    }
    return "Continuous";
  }
  
  public String getFocusTypeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49426)) {
      return null;
    }
    int i = this._directory.getInt(49426);
    switch (i)
    {
    case 2: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Manual";
    case 1: 
      return "Auto";
    case 3: 
      return "Close-up (Macro)";
    }
    return "Locked (Pan Mode)";
  }
  
  public String getImageSizeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49418)) {
      return null;
    }
    int i = this._directory.getInt(49418);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Large";
    case 1: 
      return "Medium";
    }
    return "Small";
  }
  
  public String getIsoDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49424)) {
      return null;
    }
    int i = this._directory.getInt(49424);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Not specified (see ISOSpeedRatings tag)";
    case 15: 
      return "Auto";
    case 16: 
      return "50";
    case 17: 
      return "100";
    case 18: 
      return "200";
    }
    return "400";
  }
  
  public String getLensAutoFocusStopButtonDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49929)) {
      return null;
    }
    int i = this._directory.getInt(49929);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "AF stop";
    case 1: 
      return "Operate AF";
    }
    return "Lock AE and start timer";
  }
  
  public String getLongExposureNoiseReductionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49921)) {
      return null;
    }
    int i = this._directory.getInt(49921);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Off";
    }
    return "On";
  }
  
  public String getLongFocalLengthDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49431)) {
      return null;
    }
    int i = this._directory.getInt(49431);
    String str = getFocalUnitsPerMillimetreDescription();
    return Integer.toString(i) + " " + str;
  }
  
  public String getMacroModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49409)) {
      return null;
    }
    int i = this._directory.getInt(49409);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 1: 
      return "Macro";
    }
    return "Normal";
  }
  
  public String getMenuButtonReturnPositionDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49931)) {
      return null;
    }
    int i = this._directory.getInt(49931);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Top";
    case 1: 
      return "Previous (volatile)";
    }
    return "Previous";
  }
  
  public String getMeteringModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49425)) {
      return null;
    }
    int i = this._directory.getInt(49425);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 3: 
      return "Evaluative";
    case 4: 
      return "Partial";
    }
    return "Centre weighted";
  }
  
  public String getMirrorLockupDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49923)) {
      return null;
    }
    int i = this._directory.getInt(49923);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Disabled";
    }
    return "Enabled";
  }
  
  public String getQualityDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49411)) {
      return null;
    }
    int i = this._directory.getInt(49411);
    switch (i)
    {
    case 4: 
    default: 
      return "Unknown (" + i + ")";
    case 2: 
      return "Normal";
    case 3: 
      return "Fine";
    }
    return "Superfine";
  }
  
  public String getSaturationDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49422)) {
      return null;
    }
    int i = this._directory.getInt(49422);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 65535: 
      return "Low";
    case 0: 
      return "Normal";
    }
    return "High";
  }
  
  public String getSelfTimerDelayDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49410)) {
      return null;
    }
    int i = this._directory.getInt(49410);
    if (i == 0) {
      return "Self timer not used";
    }
    return Double.toString(0.1D * i) + " sec";
  }
  
  public String getSensorCleaningDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49933)) {
      return null;
    }
    int i = this._directory.getInt(49933);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Disabled";
    }
    return "Enabled";
  }
  
  public String getSetButtonFunctionWhenShootingDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49932)) {
      return null;
    }
    int i = this._directory.getInt(49932);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Not Assigned";
    case 1: 
      return "Change Quality";
    case 2: 
      return "Change ISO Speed";
    }
    return "Select Parameters";
  }
  
  public String getSharpnessDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49423)) {
      return null;
    }
    int i = this._directory.getInt(49423);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 65535: 
      return "Low";
    case 0: 
      return "Normal";
    }
    return "High";
  }
  
  public String getShortFocalLengthDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49432)) {
      return null;
    }
    int i = this._directory.getInt(49432);
    String str = getFocalUnitsPerMillimetreDescription();
    return Integer.toString(i) + " " + str;
  }
  
  public String getShutterAutoExposureLockButtonDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49922)) {
      return null;
    }
    int i = this._directory.getInt(49922);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "AF/AE lock";
    case 1: 
      return "AE lock/AF";
    case 2: 
      return "AF/AF lock";
    }
    return "AE+release/AE+AF";
  }
  
  public String getShutterCurtainSyncDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49928)) {
      return null;
    }
    int i = this._directory.getInt(49928);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "1st Curtain Sync";
    }
    return "2nd Curtain Sync";
  }
  
  public String getShutterSpeedInAvModeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49926)) {
      return null;
    }
    int i = this._directory.getInt(49926);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Automatic";
    }
    return "1/200 (fixed)";
  }
  
  public String getTvAndAvExposureLevelDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49924)) {
      return null;
    }
    int i = this._directory.getInt(49924);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "1/2 stop";
    }
    return "1/3 stop";
  }
  
  public String getWhiteBalanceDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(49671)) {
      return null;
    }
    int i = this._directory.getInt(49671);
    switch (i)
    {
    default: 
      return "Unknown (" + i + ")";
    case 0: 
      return "Auto";
    case 1: 
      return "Sunny";
    case 2: 
      return "Cloudy";
    case 3: 
      return "Tungsten";
    case 4: 
      return "Flourescent";
    case 5: 
      return "Flash";
    }
    return "Custom";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.CanonMakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */