package com.drew.metadata;

public class DefaultTagDescriptor
  extends TagDescriptor
{
  public DefaultTagDescriptor(Directory paramDirectory)
  {
    super(paramDirectory);
  }
  
  public String getDescription(int paramInt)
  {
    return this._directory.getString(paramInt);
  }
  
  public String getTagName(int paramInt)
  {
    for (String str = Integer.toHexString(paramInt).toUpperCase();; str = "0" + str) {
      if (str.length() >= 4) {
        return "Unknown tag 0x" + str;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.DefaultTagDescriptor
 * JD-Core Version:    0.7.0.1
 */