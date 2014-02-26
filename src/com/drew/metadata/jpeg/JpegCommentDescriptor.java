package com.drew.metadata.jpeg;

import com.drew.metadata.Directory;
import com.drew.metadata.TagDescriptor;

public class JpegCommentDescriptor
  extends TagDescriptor
{
  public JpegCommentDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getDescription(int paramInt)
  {
    return this._directory.getString(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.jpeg.JpegCommentDescriptor
 * JD-Core Version:    0.7.0.1
 */