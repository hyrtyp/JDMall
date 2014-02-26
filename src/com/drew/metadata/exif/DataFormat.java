package com.drew.metadata.exif;

import com.drew.metadata.MetadataException;

public class DataFormat
{
  public static final DataFormat BYTE = new DataFormat("BYTE", 1);
  public static final DataFormat DOUBLE = new DataFormat("DOUBLE", 12);
  public static final DataFormat SBYTE;
  public static final DataFormat SINGLE;
  public static final DataFormat SLONG;
  public static final DataFormat SRATIONAL;
  public static final DataFormat SSHORT;
  public static final DataFormat STRING = new DataFormat("STRING", 2);
  public static final DataFormat ULONG;
  public static final DataFormat UNDEFINED;
  public static final DataFormat URATIONAL;
  public static final DataFormat USHORT = new DataFormat("USHORT", 3);
  private final String myName;
  private final int value;
  
  static
  {
    ULONG = new DataFormat("ULONG", 4);
    URATIONAL = new DataFormat("URATIONAL", 5);
    SBYTE = new DataFormat("SBYTE", 6);
    UNDEFINED = new DataFormat("UNDEFINED", 7);
    SSHORT = new DataFormat("SSHORT", 8);
    SLONG = new DataFormat("SLONG", 9);
    SRATIONAL = new DataFormat("SRATIONAL", 10);
    SINGLE = new DataFormat("SINGLE", 11);
  }
  
  private DataFormat(String paramString, int paramInt)
  {
    this.myName = paramString;
    this.value = paramInt;
  }
  
  public static DataFormat fromValue(int paramInt)
    throws MetadataException
  {
    switch (paramInt)
    {
    default: 
      throw new MetadataException("value '" + paramInt + "' does not represent a known data format.");
    case 1: 
      return BYTE;
    case 2: 
      return STRING;
    case 3: 
      return USHORT;
    case 4: 
      return ULONG;
    case 5: 
      return URATIONAL;
    case 6: 
      return SBYTE;
    case 7: 
      return UNDEFINED;
    case 8: 
      return SSHORT;
    case 9: 
      return SLONG;
    case 10: 
      return SRATIONAL;
    case 11: 
      return SINGLE;
    }
    return DOUBLE;
  }
  
  public int getValue()
  {
    return this.value;
  }
  
  public String toString()
  {
    return this.myName;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.DataFormat
 * JD-Core Version:    0.7.0.1
 */