package com.drew.metadata.jpeg;

import com.drew.imaging.jpeg.JpegProcessingException;
import com.drew.imaging.jpeg.JpegSegmentReader;
import com.drew.metadata.Metadata;
import com.drew.metadata.MetadataReader;
import java.io.File;
import java.io.InputStream;

public class JpegCommentReader
  implements MetadataReader
{
  private final byte[] _data;
  
  public JpegCommentReader(File paramFile)
    throws JpegProcessingException
  {
    this(new JpegSegmentReader(paramFile).readSegment((byte)-2));
  }
  
  public JpegCommentReader(InputStream paramInputStream)
    throws JpegProcessingException
  {
    this(new JpegSegmentReader(paramInputStream).readSegment((byte)-19));
  }
  
  public JpegCommentReader(byte[] paramArrayOfByte)
  {
    this._data = paramArrayOfByte;
  }
  
  public Metadata extract()
  {
    return extract(new Metadata());
  }
  
  public Metadata extract(Metadata paramMetadata)
  {
    if (this._data == null) {
      return paramMetadata;
    }
    ((JpegCommentDirectory)paramMetadata.getDirectory(JpegCommentDirectory.class)).setString(0, new String(this._data));
    return paramMetadata;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.jpeg.JpegCommentReader
 * JD-Core Version:    0.7.0.1
 */