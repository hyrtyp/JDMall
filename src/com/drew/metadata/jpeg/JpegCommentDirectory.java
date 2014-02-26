package com.drew.metadata.jpeg;

import com.drew.metadata.Directory;
import java.util.HashMap;

public class JpegCommentDirectory
  extends Directory
{
  public static final int TAG_JPEG_COMMENT;
  protected static final HashMap tagNameMap = new HashMap();
  
  static
  {
    tagNameMap.put(new Integer(0), "Jpeg Comment");
  }
  
  public JpegCommentDirectory()
  {
    setDescriptor(new JpegCommentDescriptor(this));
  }
  
  public String getName()
  {
    return "JpegComment";
  }
  
  protected HashMap getTagNameMap()
  {
    return tagNameMap;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.jpeg.JpegCommentDirectory
 * JD-Core Version:    0.7.0.1
 */