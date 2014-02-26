package com.drew.metadata.iptc;

import com.drew.metadata.Directory;
import com.drew.metadata.TagDescriptor;

public class IptcDescriptor
  extends TagDescriptor
{
  public IptcDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getDescription(int paramInt)
  {
    return this._directory.getString(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.iptc.IptcDescriptor
 * JD-Core Version:    0.7.0.1
 */