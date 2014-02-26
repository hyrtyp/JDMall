package com.drew.metadata;

import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.imaging.jpeg.JpegProcessingException;
import com.drew.imaging.jpeg.JpegSegmentReader;
import com.drew.metadata.exif.ExifReader;
import com.drew.metadata.iptc.IptcReader;
import java.io.File;
import java.io.PrintStream;
import java.util.Iterator;

public class SampleUsage
{
  public SampleUsage(String paramString)
  {
    File localFile = new File(paramString);
    try
    {
      printImageTags(1, JpegMetadataReader.readMetadata(localFile));
    }
    catch (JpegProcessingException localJpegProcessingException1)
    {
      try
      {
        for (;;)
        {
          Metadata localMetadata1 = new Metadata();
          new ExifReader(localFile).extract(localMetadata1);
          new IptcReader(localFile).extract(localMetadata1);
          printImageTags(2, localMetadata1);
          try
          {
            JpegSegmentReader localJpegSegmentReader = new JpegSegmentReader(localFile);
            byte[] arrayOfByte1 = localJpegSegmentReader.readSegment((byte)-31);
            byte[] arrayOfByte2 = localJpegSegmentReader.readSegment((byte)-19);
            Metadata localMetadata2 = new Metadata();
            new ExifReader(arrayOfByte1).extract(localMetadata2);
            new IptcReader(arrayOfByte2).extract(localMetadata2);
            printImageTags(3, localMetadata2);
            return;
          }
          catch (JpegProcessingException localJpegProcessingException3)
          {
            System.err.println("error 3a");
          }
          localJpegProcessingException1 = localJpegProcessingException1;
          System.err.println("error 1a");
        }
      }
      catch (JpegProcessingException localJpegProcessingException2)
      {
        for (;;)
        {
          System.err.println("error 2a");
        }
      }
    }
  }
  
  public static void main(String[] paramArrayOfString)
  {
    new SampleUsage("src/com/drew/metadata/test/withIptcExifGps.jpg");
  }
  
  private void printImageTags(int paramInt, Metadata paramMetadata)
  {
    System.out.println();
    System.out.println("*** APPROACH " + paramInt + " ***");
    System.out.println();
    Iterator localIterator1 = paramMetadata.getDirectoryIterator();
    if (!localIterator1.hasNext()) {
      return;
    }
    Directory localDirectory = (Directory)localIterator1.next();
    Iterator localIterator2 = localDirectory.getTagIterator();
    for (;;)
    {
      if (!localIterator2.hasNext())
      {
        if (!localDirectory.hasErrors()) {
          break;
        }
        Iterator localIterator3 = localDirectory.getErrors();
        while (localIterator3.hasNext()) {
          System.out.println("ERROR: " + localIterator3.next());
        }
        break;
      }
      Tag localTag = (Tag)localIterator2.next();
      System.out.println(localTag);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.SampleUsage
 * JD-Core Version:    0.7.0.1
 */