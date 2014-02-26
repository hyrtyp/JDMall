package com.drew.imaging.jpeg;

import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.MetadataException;
import com.drew.metadata.Tag;
import com.drew.metadata.exif.ExifDirectory;
import com.drew.metadata.exif.ExifReader;
import com.drew.metadata.iptc.IptcReader;
import com.drew.metadata.jpeg.JpegCommentReader;
import com.drew.metadata.jpeg.JpegReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.Iterator;

public class JpegMetadataReader
{
  public static Metadata extractMetadataFromJpegSegmentReader(JpegSegmentReader paramJpegSegmentReader)
  {
    Metadata localMetadata = new Metadata();
    try
    {
      new ExifReader(paramJpegSegmentReader.readSegment((byte)-31)).extract(localMetadata);
      try
      {
        label26:
        new IptcReader(paramJpegSegmentReader.readSegment((byte)-19)).extract(localMetadata);
        try
        {
          label44:
          new JpegReader(paramJpegSegmentReader.readSegment((byte)-64)).extract(localMetadata);
          try
          {
            label62:
            new JpegCommentReader(paramJpegSegmentReader.readSegment((byte)-2)).extract(localMetadata);
            return localMetadata;
          }
          catch (JpegProcessingException localJpegProcessingException4)
          {
            return localMetadata;
          }
        }
        catch (JpegProcessingException localJpegProcessingException3)
        {
          break label62;
        }
      }
      catch (JpegProcessingException localJpegProcessingException2)
      {
        break label44;
      }
    }
    catch (JpegProcessingException localJpegProcessingException1)
    {
      break label26;
    }
  }
  
  public static void main(String[] paramArrayOfString)
    throws MetadataException, IOException
  {
    try
    {
      Metadata localMetadata2 = readMetadata(new File(paramArrayOfString[0]));
      localMetadata1 = localMetadata2;
    }
    catch (Exception localException)
    {
      Iterator localIterator1;
      for (;;)
      {
        ExifDirectory localExifDirectory;
        localException.printStackTrace(System.err);
        System.exit(1);
        Metadata localMetadata1 = null;
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
        }
        Tag localTag = (Tag)localIterator2.next();
        try
        {
          System.out.println("[" + localDirectory.getName() + "] " + localTag.getTagName() + " = " + localTag.getDescription());
        }
        catch (MetadataException localMetadataException)
        {
          System.err.println(localMetadataException.getMessage());
          System.err.println(localTag.getDirectoryName() + " " + localTag.getTagName() + " (error)");
        }
      }
      label335:
      System.out.println("No thumbnail data exists in this image");
    }
    localIterator1 = localMetadata1.getDirectoryIterator();
    if (!localIterator1.hasNext()) {
      if ((paramArrayOfString.length > 1) && (paramArrayOfString[1].trim().equals("/thumb")))
      {
        localExifDirectory = (ExifDirectory)localMetadata1.getDirectory(ExifDirectory.class);
        if (!localExifDirectory.containsThumbnail()) {
          break label335;
        }
        System.out.println("Writing thumbnail...");
        localExifDirectory.writeThumbnail(paramArrayOfString[0].trim() + ".thumb.jpg");
      }
    }
  }
  
  public static Metadata readMetadata(File paramFile)
    throws JpegProcessingException
  {
    return extractMetadataFromJpegSegmentReader(new JpegSegmentReader(paramFile));
  }
  
  public static Metadata readMetadata(InputStream paramInputStream)
    throws JpegProcessingException
  {
    return extractMetadataFromJpegSegmentReader(new JpegSegmentReader(paramInputStream));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.imaging.jpeg.JpegMetadataReader
 * JD-Core Version:    0.7.0.1
 */