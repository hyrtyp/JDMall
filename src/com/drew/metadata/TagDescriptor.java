package com.drew.metadata;

import java.io.Serializable;

public abstract class TagDescriptor
  implements Serializable
{
  protected final Directory _directory;
  
  public TagDescriptor(Directory paramDirectory)
  {
    this._directory = paramDirectory;
  }
  
  public abstract String getDescription(int paramInt)
    throws MetadataException;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.TagDescriptor
 * JD-Core Version:    0.7.0.1
 */