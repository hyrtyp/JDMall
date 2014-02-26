package com.drew.metadata;

import java.io.Serializable;

public class Tag
  implements Serializable
{
  private final Directory _directory;
  private final int _tagType;
  
  public Tag(int paramInt, Directory paramDirectory)
  {
    this._tagType = paramInt;
    this._directory = paramDirectory;
  }
  
  public String getDescription()
    throws MetadataException
  {
    return this._directory.getDescription(this._tagType);
  }
  
  public String getDirectoryName()
  {
    return this._directory.getName();
  }
  
  public String getTagName()
  {
    return this._directory.getTagName(this._tagType);
  }
  
  public int getTagType()
  {
    return this._tagType;
  }
  
  public String getTagTypeHex()
  {
    for (String str = Integer.toHexString(this._tagType);; str = "0" + str) {
      if (str.length() >= 4) {
        return "0x" + str;
      }
    }
  }
  
  public String toString()
  {
    try
    {
      String str2 = getDescription();
      str1 = str2;
    }
    catch (MetadataException localMetadataException)
    {
      for (;;)
      {
        String str1 = this._directory.getString(getTagType()) + " (unable to formulate description)";
      }
    }
    return "[" + this._directory.getName() + "] " + getTagName() + " - " + str1;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.Tag
 * JD-Core Version:    0.7.0.1
 */