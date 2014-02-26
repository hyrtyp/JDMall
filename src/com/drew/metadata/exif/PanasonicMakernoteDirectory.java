package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import java.util.HashMap;

public class PanasonicMakernoteDirectory
  extends Directory
{
  public static final int TAG_PANASONIC_MACRO_MODE = 28;
  public static final int TAG_PANASONIC_PRINT_IMAGE_MATCHING_INFO = 3584;
  public static final int TAG_PANASONIC_QUALITY_MODE = 1;
  public static final int TAG_PANASONIC_RECORD_MODE = 31;
  public static final int TAG_PANASONIC_VERSION = 2;
  protected static final HashMap tagNameMap = new HashMap();
  
  static
  {
    tagNameMap.put(new Integer(1), "Quality Mode");
    tagNameMap.put(new Integer(2), "Version");
    tagNameMap.put(new Integer(28), "Macro Mode");
    tagNameMap.put(new Integer(31), "Record Mode");
    tagNameMap.put(new Integer(3584), "Print Image Matching (PIM) Info");
  }
  
  public PanasonicMakernoteDirectory()
  {
    setDescriptor(new PanasonicMakernoteDescriptor(this));
  }
  
  public String getName()
  {
    return "Panasonic Makernote";
  }
  
  protected HashMap getTagNameMap()
  {
    return tagNameMap;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.PanasonicMakernoteDirectory
 * JD-Core Version:    0.7.0.1
 */