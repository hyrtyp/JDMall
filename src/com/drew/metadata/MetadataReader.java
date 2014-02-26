package com.drew.metadata;

public abstract interface MetadataReader
{
  public abstract Metadata extract();
  
  public abstract Metadata extract(Metadata paramMetadata);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.MetadataReader
 * JD-Core Version:    0.7.0.1
 */