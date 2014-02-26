package com.drew.metadata.exif;

import com.drew.lang.Rational;
import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class GpsDescriptor
  extends TagDescriptor
{
  public GpsDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    case 3: 
    case 8: 
    case 11: 
    case 13: 
    case 18: 
    case 19: 
    case 20: 
    case 21: 
    case 22: 
    default: 
      return this._directory.getString(paramInt);
    case 6: 
      return getGpsAltitudeDescription();
    case 5: 
      return getGpsAltitudeRefDescription();
    case 9: 
      return getGpsStatusDescription();
    case 10: 
      return getGpsMeasureModeDescription();
    case 12: 
      return getGpsSpeedRefDescription();
    case 14: 
    case 16: 
    case 23: 
      return getGpsDirectionReferenceDescription(paramInt);
    case 15: 
    case 17: 
    case 24: 
      return getGpsDirectionDescription(paramInt);
    case 25: 
      return getGpsDestinationReferenceDescription();
    case 7: 
      return getGpsTimeStampDescription();
    case 4: 
      return getGpsLongitudeDescription();
    }
    return getGpsLatitudeDescription();
  }
  
  public String getGpsAltitudeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(6)) {
      return null;
    }
    return this._directory.getRational(6).toSimpleString(true) + " metres";
  }
  
  public String getGpsAltitudeRefDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(5)) {
      return null;
    }
    int i = this._directory.getInt(5);
    if (i == 0) {
      return "Sea level";
    }
    return "Unknown (" + i + ")";
  }
  
  public String getGpsDestinationReferenceDescription()
  {
    if (!this._directory.containsTag(25)) {
      return null;
    }
    String str = this._directory.getString(25).trim();
    if ("K".equalsIgnoreCase(str)) {
      return "kilometers";
    }
    if ("M".equalsIgnoreCase(str)) {
      return "miles";
    }
    if ("N".equalsIgnoreCase(str)) {
      return "knots";
    }
    return "Unknown (" + str + ")";
  }
  
  public String getGpsDirectionDescription(int paramInt)
  {
    if (!this._directory.containsTag(paramInt)) {
      return null;
    }
    return this._directory.getString(paramInt).trim() + " degrees";
  }
  
  public String getGpsDirectionReferenceDescription(int paramInt)
  {
    if (!this._directory.containsTag(paramInt)) {
      return null;
    }
    String str = this._directory.getString(paramInt).trim();
    if ("T".equalsIgnoreCase(str)) {
      return "True direction";
    }
    if ("M".equalsIgnoreCase(str)) {
      return "Magnetic direction";
    }
    return "Unknown (" + str + ")";
  }
  
  public String getGpsLatitudeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(2)) {
      return null;
    }
    return getHoursMinutesSecondsDescription(2);
  }
  
  public String getGpsLongitudeDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(4)) {
      return null;
    }
    return getHoursMinutesSecondsDescription(4);
  }
  
  public String getGpsMeasureModeDescription()
  {
    if (!this._directory.containsTag(10)) {
      return null;
    }
    String str = this._directory.getString(10).trim();
    if ("2".equalsIgnoreCase(str)) {
      return "2-dimensional measurement";
    }
    if ("3".equalsIgnoreCase(str)) {
      return "3-dimensional measurement";
    }
    return "Unknown (" + str + ")";
  }
  
  public String getGpsSpeedRefDescription()
  {
    if (!this._directory.containsTag(12)) {
      return null;
    }
    String str = this._directory.getString(12).trim();
    if ("K".equalsIgnoreCase(str)) {
      return "kph";
    }
    if ("M".equalsIgnoreCase(str)) {
      return "mph";
    }
    if ("N".equalsIgnoreCase(str)) {
      return "knots";
    }
    return "Unknown (" + str + ")";
  }
  
  public String getGpsStatusDescription()
  {
    if (!this._directory.containsTag(9)) {
      return null;
    }
    String str = this._directory.getString(9).trim();
    if ("A".equalsIgnoreCase(str)) {
      return "Measurement in progess";
    }
    if ("V".equalsIgnoreCase(str)) {
      return "Measurement Interoperability";
    }
    return "Unknown (" + str + ")";
  }
  
  public String getGpsTimeStampDescription()
    throws MetadataException
  {
    if (!this._directory.containsTag(7)) {
      return null;
    }
    int[] arrayOfInt = this._directory.getIntArray(7);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(arrayOfInt[0]);
    localStringBuffer.append(":");
    localStringBuffer.append(arrayOfInt[1]);
    localStringBuffer.append(":");
    localStringBuffer.append(arrayOfInt[2]);
    localStringBuffer.append(" UTC");
    return localStringBuffer.toString();
  }
  
  public String getHoursMinutesSecondsDescription(int paramInt)
    throws MetadataException
  {
    Rational[] arrayOfRational = this._directory.getRationalArray(paramInt);
    int i = arrayOfRational[0].intValue();
    float f1 = arrayOfRational[1].floatValue();
    float f2 = arrayOfRational[2].floatValue() + 60.0F * (f1 % 1.0F);
    return String.valueOf(i) + "\"" + String.valueOf((int)f1) + "'" + String.valueOf(f2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.GpsDescriptor
 * JD-Core Version:    0.7.0.1
 */