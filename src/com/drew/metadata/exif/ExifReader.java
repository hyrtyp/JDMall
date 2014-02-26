package com.drew.metadata.exif;

import com.drew.imaging.jpeg.JpegProcessingException;
import com.drew.imaging.jpeg.JpegSegmentData;
import com.drew.imaging.jpeg.JpegSegmentReader;
import com.drew.lang.Rational;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.MetadataReader;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;

public class ExifReader
  implements MetadataReader
{
  private static final int[] BYTES_PER_FORMAT;
  private static final int FMT_BYTE = 1;
  private static final int FMT_DOUBLE = 12;
  private static final int FMT_SBYTE = 6;
  private static final int FMT_SINGLE = 11;
  private static final int FMT_SLONG = 9;
  private static final int FMT_SRATIONAL = 10;
  private static final int FMT_SSHORT = 8;
  private static final int FMT_STRING = 2;
  private static final int FMT_ULONG = 4;
  private static final int FMT_UNDEFINED = 7;
  private static final int FMT_URATIONAL = 5;
  private static final int FMT_USHORT = 3;
  private static final int MAX_FORMAT_CODE = 12;
  public static final int TAG_EXIF_OFFSET = 34665;
  public static final int TAG_GPS_INFO_OFFSET = 34853;
  public static final int TAG_INTEROP_OFFSET = 40965;
  public static final int TAG_MAKER_NOTE = 37500;
  public static final int TIFF_HEADER_START_OFFSET = 6;
  private final byte[] _data;
  private boolean _isMotorollaByteOrder;
  private Metadata _metadata;
  
  static
  {
    int[] arrayOfInt = new int[13];
    arrayOfInt[1] = 1;
    arrayOfInt[2] = 1;
    arrayOfInt[3] = 2;
    arrayOfInt[4] = 4;
    arrayOfInt[5] = 8;
    arrayOfInt[6] = 1;
    arrayOfInt[7] = 1;
    arrayOfInt[8] = 2;
    arrayOfInt[9] = 4;
    arrayOfInt[10] = 8;
    arrayOfInt[11] = 4;
    arrayOfInt[12] = 8;
    BYTES_PER_FORMAT = arrayOfInt;
  }
  
  public ExifReader(JpegSegmentData paramJpegSegmentData)
  {
    this(paramJpegSegmentData.getSegment((byte)-31));
  }
  
  public ExifReader(File paramFile)
    throws JpegProcessingException
  {
    this(new JpegSegmentReader(paramFile).readSegment((byte)-31));
  }
  
  public ExifReader(InputStream paramInputStream)
    throws JpegProcessingException
  {
    this(new JpegSegmentReader(paramInputStream).readSegment((byte)-31));
  }
  
  public ExifReader(byte[] paramArrayOfByte)
  {
    this._data = paramArrayOfByte;
  }
  
  private int calculateTagOffset(int paramInt1, int paramInt2)
  {
    return paramInt1 + 2 + paramInt2 * 12;
  }
  
  private int calculateTagValueOffset(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 > 4)
    {
      int i = get32Bits(paramInt2 + 8);
      if (i + paramInt1 > this._data.length) {
        return -1;
      }
      return paramInt3 + i;
    }
    return paramInt2 + 8;
  }
  
  private int get16Bits(int paramInt)
  {
    if ((paramInt < 0) || (paramInt + 2 > this._data.length)) {
      throw new ArrayIndexOutOfBoundsException("attempt to read data outside of exif segment (index " + paramInt + " where max index is " + (-1 + this._data.length) + ")");
    }
    if (this._isMotorollaByteOrder) {
      return 0xFF00 & this._data[paramInt] << 8 | 0xFF & this._data[(paramInt + 1)];
    }
    return 0xFF00 & this._data[(paramInt + 1)] << 8 | 0xFF & this._data[paramInt];
  }
  
  private int get32Bits(int paramInt)
  {
    if ((paramInt < 0) || (paramInt + 4 > this._data.length)) {
      throw new ArrayIndexOutOfBoundsException("attempt to read data outside of exif segment (index " + paramInt + " where max index is " + (-1 + this._data.length) + ")");
    }
    if (this._isMotorollaByteOrder) {
      return 0xFF000000 & this._data[paramInt] << 24 | 0xFF0000 & this._data[(paramInt + 1)] << 16 | 0xFF00 & this._data[(paramInt + 2)] << 8 | 0xFF & this._data[(paramInt + 3)];
    }
    return 0xFF000000 & this._data[(paramInt + 3)] << 24 | 0xFF0000 & this._data[(paramInt + 2)] << 16 | 0xFF00 & this._data[(paramInt + 1)] << 8 | 0xFF & this._data[paramInt];
  }
  
  private boolean isDirectoryLengthValid(int paramInt1, int paramInt2)
  {
    return paramInt2 + (paramInt1 + (4 + (2 + 12 * get16Bits(paramInt1)))) < this._data.length;
  }
  
  private void processDirectory(Directory paramDirectory, HashMap paramHashMap, int paramInt1, int paramInt2)
  {
    if (paramHashMap.containsKey(new Integer(paramInt1))) {}
    int j;
    int i6;
    do
    {
      int i5;
      do
      {
        return;
        paramHashMap.put(new Integer(paramInt1), "processed");
        if ((paramInt1 >= this._data.length) || (paramInt1 < 0))
        {
          paramDirectory.addError("Ignored directory marked to start outside data segement");
          return;
        }
        if (!isDirectoryLengthValid(paramInt1, paramInt2))
        {
          paramDirectory.addError("Illegally sized directory");
          return;
        }
        int i = get16Bits(paramInt1);
        j = 0;
        if (j < i) {
          break;
        }
        i5 = get32Bits(calculateTagOffset(paramInt1, i));
      } while (i5 == 0);
      i6 = i5 + paramInt2;
    } while ((i6 >= this._data.length) || (i6 < paramInt1));
    processDirectory(paramDirectory, paramHashMap, i6, paramInt2);
    return;
    int k = calculateTagOffset(paramInt1, j);
    int m = get16Bits(k);
    int n = get16Bits(k + 2);
    if ((n < 1) || (n > 12)) {
      paramDirectory.addError("Invalid format code: " + n);
    }
    for (;;)
    {
      j++;
      break;
      int i1 = get32Bits(k + 4);
      if (i1 < 0)
      {
        paramDirectory.addError("Negative component count in EXIF");
      }
      else
      {
        int i2 = i1 * BYTES_PER_FORMAT[n];
        int i3 = calculateTagValueOffset(i2, k, paramInt2);
        if ((i3 < 0) || (i3 > this._data.length))
        {
          paramDirectory.addError("Illegal pointer offset value in EXIF");
        }
        else if ((i2 < 0) || (i3 + i2 > this._data.length))
        {
          paramDirectory.addError("Illegal number of bytes: " + i2);
        }
        else
        {
          int i4 = paramInt2 + get32Bits(i3);
          switch (m)
          {
          default: 
            processTag(paramDirectory, m, i3, i1, n);
            break;
          case 34665: 
            processDirectory(this._metadata.getDirectory(ExifDirectory.class), paramHashMap, i4, paramInt2);
            break;
          case 40965: 
            processDirectory(this._metadata.getDirectory(ExifInteropDirectory.class), paramHashMap, i4, paramInt2);
            break;
          case 34853: 
            processDirectory(this._metadata.getDirectory(GpsDirectory.class), paramHashMap, i4, paramInt2);
            break;
          case 37500: 
            processMakerNote(i3, paramHashMap, paramInt2);
          }
        }
      }
    }
  }
  
  private void processMakerNote(int paramInt1, HashMap paramHashMap, int paramInt2)
  {
    Directory localDirectory = this._metadata.getDirectory(ExifDirectory.class);
    if (localDirectory == null) {
      return;
    }
    String str1 = localDirectory.getString(271);
    String str2 = new String(this._data, paramInt1, 2);
    String str3 = new String(this._data, paramInt1, 3);
    String str4 = new String(this._data, paramInt1, 4);
    String str5 = new String(this._data, paramInt1, 5);
    String str6 = new String(this._data, paramInt1, 6);
    String str7 = new String(this._data, paramInt1, 7);
    String str8 = new String(this._data, paramInt1, 8);
    if (("OLYMP".equals(str5)) || ("EPSON".equals(str5)) || ("AGFA".equals(str4)))
    {
      processDirectory(this._metadata.getDirectory(OlympusMakernoteDirectory.class), paramHashMap, paramInt1 + 8, paramInt2);
      return;
    }
    if ((str1 != null) && (str1.trim().toUpperCase().startsWith("NIKON")))
    {
      if ("Nikon".equals(str5))
      {
        if (this._data[(paramInt1 + 6)] == 1)
        {
          processDirectory(this._metadata.getDirectory(NikonType1MakernoteDirectory.class), paramHashMap, paramInt1 + 8, paramInt2);
          return;
        }
        if (this._data[(paramInt1 + 6)] == 2)
        {
          processDirectory(this._metadata.getDirectory(NikonType2MakernoteDirectory.class), paramHashMap, paramInt1 + 18, paramInt1 + 10);
          return;
        }
        localDirectory.addError("Unsupported makernote data ignored.");
        return;
      }
      processDirectory(this._metadata.getDirectory(NikonType2MakernoteDirectory.class), paramHashMap, paramInt1, paramInt2);
      return;
    }
    if (("SONY CAM".equals(str8)) || ("SONY DSC".equals(str8)))
    {
      processDirectory(this._metadata.getDirectory(SonyMakernoteDirectory.class), paramHashMap, paramInt1 + 12, paramInt2);
      return;
    }
    if ("KDK".equals(str3))
    {
      processDirectory(this._metadata.getDirectory(KodakMakernoteDirectory.class), paramHashMap, paramInt1 + 20, paramInt2);
      return;
    }
    if ("Canon".equalsIgnoreCase(str1))
    {
      processDirectory(this._metadata.getDirectory(CanonMakernoteDirectory.class), paramHashMap, paramInt1, paramInt2);
      return;
    }
    if ((str1 != null) && (str1.toUpperCase().startsWith("CASIO")))
    {
      if ("".equals(str6))
      {
        processDirectory(this._metadata.getDirectory(CasioType2MakernoteDirectory.class), paramHashMap, paramInt1 + 6, paramInt2);
        return;
      }
      processDirectory(this._metadata.getDirectory(CasioType1MakernoteDirectory.class), paramHashMap, paramInt1, paramInt2);
      return;
    }
    if (("FUJIFILM".equals(str8)) || ("Fujifilm".equalsIgnoreCase(str1)))
    {
      boolean bool = this._isMotorollaByteOrder;
      this._isMotorollaByteOrder = false;
      int i = paramInt1 + get32Bits(paramInt1 + 8);
      processDirectory(this._metadata.getDirectory(FujifilmMakernoteDirectory.class), paramHashMap, i, paramInt2);
      this._isMotorollaByteOrder = bool;
      return;
    }
    if ((str1 != null) && (str1.toUpperCase().startsWith("MINOLTA")))
    {
      processDirectory(this._metadata.getDirectory(OlympusMakernoteDirectory.class), paramHashMap, paramInt1, paramInt2);
      return;
    }
    if (("KC".equals(str2)) || ("MINOL".equals(str5)) || ("MLY".equals(str3)) || ("+M+M+M+M".equals(str8)))
    {
      localDirectory.addError("Unsupported Konica/Minolta data ignored.");
      return;
    }
    if ("KYOCERA".equals(str7))
    {
      processDirectory(this._metadata.getDirectory(KyoceraMakernoteDirectory.class), paramHashMap, paramInt1 + 22, paramInt2);
      return;
    }
    String str9 = new String(this._data, paramInt1, 12);
    if ("".equals(str9))
    {
      processDirectory(this._metadata.getDirectory(PanasonicMakernoteDirectory.class), paramHashMap, paramInt1 + 12, paramInt2);
      return;
    }
    if ("".equals(str4))
    {
      processDirectory(this._metadata.getDirectory(CasioType2MakernoteDirectory.class), paramHashMap, paramInt1 + 6, paramInt1);
      return;
    }
    if ((str1 != null) && ((str1.toUpperCase().startsWith("PENTAX")) || (str1.toUpperCase().startsWith("ASAHI"))))
    {
      processDirectory(this._metadata.getDirectory(PentaxMakernoteDirectory.class), paramHashMap, paramInt1, paramInt1);
      return;
    }
    localDirectory.addError("Unsupported makernote data ignored.");
  }
  
  private void processTag(Directory paramDirectory, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    switch (paramInt4)
    {
    default: 
      paramDirectory.addError("Unknown format code " + paramInt4 + " for tag " + paramInt1);
      return;
    case 7: 
      byte[] arrayOfByte = new byte[paramInt3];
      int i1 = paramInt3 * BYTES_PER_FORMAT[paramInt4];
      for (int i2 = 0;; i2++)
      {
        if (i2 >= i1)
        {
          paramDirectory.setByteArray(paramInt1, arrayOfByte);
          return;
        }
        arrayOfByte[i2] = this._data[(paramInt2 + i2)];
      }
    case 2: 
      paramDirectory.setString(paramInt1, readString(paramInt2, paramInt3));
      return;
    case 5: 
    case 10: 
      if (paramInt3 == 1)
      {
        paramDirectory.setRational(paramInt1, new Rational(get32Bits(paramInt2), get32Bits(paramInt2 + 4)));
        return;
      }
      Rational[] arrayOfRational = new Rational[paramInt3];
      for (int n = 0;; n++)
      {
        if (n >= paramInt3)
        {
          paramDirectory.setRationalArray(paramInt1, arrayOfRational);
          return;
        }
        arrayOfRational[n] = new Rational(get32Bits(paramInt2 + n * 8), get32Bits(paramInt2 + 4 + n * 8));
      }
    case 1: 
    case 6: 
      if (paramInt3 == 1)
      {
        paramDirectory.setInt(paramInt1, this._data[paramInt2]);
        return;
      }
      int[] arrayOfInt4 = new int[paramInt3];
      for (int m = 0;; m++)
      {
        if (m >= paramInt3)
        {
          paramDirectory.setIntArray(paramInt1, arrayOfInt4);
          return;
        }
        arrayOfInt4[m] = this._data[(paramInt2 + m)];
      }
    case 11: 
    case 12: 
      if (paramInt3 == 1)
      {
        paramDirectory.setInt(paramInt1, this._data[paramInt2]);
        return;
      }
      int[] arrayOfInt3 = new int[paramInt3];
      for (int k = 0;; k++)
      {
        if (k >= paramInt3)
        {
          paramDirectory.setIntArray(paramInt1, arrayOfInt3);
          return;
        }
        arrayOfInt3[k] = this._data[(paramInt2 + k)];
      }
    case 3: 
    case 8: 
      if (paramInt3 == 1)
      {
        paramDirectory.setInt(paramInt1, get16Bits(paramInt2));
        return;
      }
      int[] arrayOfInt2 = new int[paramInt3];
      for (int j = 0;; j++)
      {
        if (j >= paramInt3)
        {
          paramDirectory.setIntArray(paramInt1, arrayOfInt2);
          return;
        }
        arrayOfInt2[j] = get16Bits(paramInt2 + j * 2);
      }
    }
    if (paramInt3 == 1)
    {
      paramDirectory.setInt(paramInt1, get32Bits(paramInt2));
      return;
    }
    int[] arrayOfInt1 = new int[paramInt3];
    for (int i = 0;; i++)
    {
      if (i >= paramInt3)
      {
        paramDirectory.setIntArray(paramInt1, arrayOfInt1);
        return;
      }
      arrayOfInt1[i] = get32Bits(paramInt2 + i * 4);
    }
  }
  
  private String readString(int paramInt1, int paramInt2)
  {
    for (int i = 0;; i++) {
      if ((paramInt1 + i >= this._data.length) || (this._data[(paramInt1 + i)] == 0) || (i >= paramInt2)) {
        return new String(this._data, paramInt1, i);
      }
    }
  }
  
  private boolean setByteOrder(String paramString)
  {
    if ("MM".equals(paramString)) {}
    for (this._isMotorollaByteOrder = true;; this._isMotorollaByteOrder = false)
    {
      boolean bool2 = true;
      boolean bool1;
      do
      {
        return bool2;
        bool1 = "II".equals(paramString);
        bool2 = false;
      } while (!bool1);
    }
  }
  
  private void storeThumbnailBytes(ExifDirectory paramExifDirectory, int paramInt)
  {
    if (!paramExifDirectory.containsTag(259)) {}
    while ((!paramExifDirectory.containsTag(514)) || (!paramExifDirectory.containsTag(513))) {
      return;
    }
    for (;;)
    {
      int i;
      byte[] arrayOfByte;
      int j;
      try
      {
        i = paramExifDirectory.getInt(513);
        arrayOfByte = new byte[paramExifDirectory.getInt(514)];
        j = 0;
        if (j >= arrayOfByte.length)
        {
          paramExifDirectory.setByteArray(61441, arrayOfByte);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        paramExifDirectory.addError("Unable to extract thumbnail: " + localThrowable.getMessage());
        return;
      }
      arrayOfByte[j] = this._data[(j + (paramInt + i))];
      j++;
    }
  }
  
  public Metadata extract()
  {
    return extract(new Metadata());
  }
  
  public Metadata extract(Metadata paramMetadata)
  {
    this._metadata = paramMetadata;
    if (this._data == null) {
      return this._metadata;
    }
    ExifDirectory localExifDirectory = (ExifDirectory)this._metadata.getDirectory(ExifDirectory.class);
    if (this._data.length <= 14)
    {
      localExifDirectory.addError("Exif data segment must contain at least 14 bytes");
      return this._metadata;
    }
    if (!"".equals(new String(this._data, 0, 6)))
    {
      localExifDirectory.addError("Exif data segment doesn't begin with 'Exif'");
      return this._metadata;
    }
    String str = new String(this._data, 6, 2);
    if (!setByteOrder(str))
    {
      localExifDirectory.addError("Unclear distinction between Motorola/Intel byte ordering: " + str);
      return this._metadata;
    }
    if (get16Bits(8) != 42)
    {
      localExifDirectory.addError("Invalid Exif start - should have 0x2A at offset 8 in Exif header");
      return this._metadata;
    }
    int i = 6 + get32Bits(10);
    if (i >= -1 + this._data.length)
    {
      localExifDirectory.addError("First exif directory offset is beyond end of Exif data segment");
      i = 14;
    }
    processDirectory(localExifDirectory, new HashMap(), i, 6);
    storeThumbnailBytes(localExifDirectory, 6);
    return this._metadata;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.ExifReader
 * JD-Core Version:    0.7.0.1
 */