package com.drew.metadata.jpeg;

import com.drew.imaging.jpeg.JpegProcessingException;
import com.drew.imaging.jpeg.JpegSegmentReader;
import com.drew.metadata.Metadata;
import com.drew.metadata.MetadataException;
import com.drew.metadata.MetadataReader;
import java.io.File;
import java.io.InputStream;

public class JpegReader
  implements MetadataReader
{
  private final byte[] _data;
  
  public JpegReader(File paramFile)
    throws JpegProcessingException
  {
    this(new JpegSegmentReader(paramFile).readSegment((byte)-64));
  }
  
  public JpegReader(InputStream paramInputStream)
    throws JpegProcessingException
  {
    this(new JpegSegmentReader(paramInputStream).readSegment((byte)-19));
  }
  
  public JpegReader(byte[] paramArrayOfByte)
  {
    this._data = paramArrayOfByte;
  }
  
  private int get16Bits(int paramInt)
    throws MetadataException
  {
    if (paramInt >= this._data.length) {
      throw new MetadataException("Attempt to read bytes from outside Jpeg segment data buffer");
    }
    return 0xFF & this._data[paramInt];
  }
  
  private int get32Bits(int paramInt)
    throws MetadataException
  {
    if (paramInt + 1 >= this._data.length) {
      throw new MetadataException("Attempt to read bytes from outside Jpeg segment data buffer");
    }
    return (0xFF & this._data[paramInt]) << 8 | 0xFF & this._data[(paramInt + 1)];
  }
  
  public Metadata extract()
  {
    return extract(new Metadata());
  }
  
  public Metadata extract(Metadata paramMetadata)
  {
    if (this._data == null) {}
    for (;;)
    {
      return paramMetadata;
      JpegDirectory localJpegDirectory = (JpegDirectory)paramMetadata.getDirectory(JpegDirectory.class);
      try
      {
        localJpegDirectory.setInt(0, get16Bits(0));
        localJpegDirectory.setInt(1, get32Bits(1));
        localJpegDirectory.setInt(3, get32Bits(3));
        int i = get16Bits(5);
        localJpegDirectory.setInt(5, i);
        int j = 0;
        int i3;
        for (int k = 6; j < i; k = i3)
        {
          int m = k + 1;
          int n = get16Bits(k);
          int i1 = m + 1;
          int i2 = get16Bits(m);
          i3 = i1 + 1;
          JpegComponent localJpegComponent = new JpegComponent(n, i2, get16Bits(i1));
          localJpegDirectory.setObject(j + 6, localJpegComponent);
          j++;
        }
        return paramMetadata;
      }
      catch (MetadataException localMetadataException)
      {
        localJpegDirectory.addError("MetadataException: " + localMetadataException);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.jpeg.JpegReader
 * JD-Core Version:    0.7.0.1
 */