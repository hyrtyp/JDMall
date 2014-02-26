package com.drew.metadata.exif;

import com.drew.metadata.Directory;
import java.util.HashMap;

public class KyoceraMakernoteDirectory
  extends Directory
{
  public static final int TAG_KYOCERA_PRINT_IMAGE_MATCHING_INFO = 3584;
  public static final int TAG_KYOCERA_PROPRIETARY_THUMBNAIL = 1;
  protected static final HashMap tagNameMap = new HashMap();
  
  static
  {
    tagNameMap.put(new Integer(1), "Proprietary Thumbnail Format Data");
    tagNameMap.put(new Integer(3584), "Print Image Matching (PIM) Info");
  }
  
  public KyoceraMakernoteDirectory()
  {
    setDescriptor(new KyoceraMakernoteDescriptor(this));
  }
  
  public String getName()
  {
    return "Kyocera/Contax Makernote";
  }
  
  protected HashMap getTagNameMap()
  {
    return tagNameMap;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.exif.KyoceraMakernoteDirectory
 * JD-Core Version:    0.7.0.1
 */