package com.drew.metadata;

import com.drew.lang.CompoundException;

public class MetadataException
  extends CompoundException
{
  public MetadataException(String paramString)
  {
    super(paramString);
  }
  
  public MetadataException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public MetadataException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.MetadataException
 * JD-Core Version:    0.7.0.1
 */