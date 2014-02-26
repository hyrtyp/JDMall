package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import java.util.HashMap;

public class SonyMakernoteDirectory
  extends Directory
{
  protected static final HashMap _tagNameMap = new HashMap();
  
  public String getName()
  {
    return "Sony Makernote";
  }
  
  protected HashMap getTagNameMap()
  {
    return _tagNameMap;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.SonyMakernoteDirectory
 * JD-Core Version:    0.7.0.1
 */