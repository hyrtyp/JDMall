package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import com.drew.metadata.MetadataException;
import com.drew.metadata.TagDescriptor;

public class KodakMakernoteDescriptor
  extends TagDescriptor
{
  public KodakMakernoteDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    return this._directory.getString(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.KodakMakernoteDescriptor
 * JD-Core Version:    0.7.0.1
 */