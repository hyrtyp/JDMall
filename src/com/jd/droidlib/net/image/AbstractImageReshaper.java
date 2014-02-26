package com.jd.droidlib.net.image;

import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.util.Pair;

public abstract class AbstractImageReshaper
  implements ImageReshaper
{
  public static final Pair<Bitmap.CompressFormat, Integer> JPEG = Pair.create(Bitmap.CompressFormat.JPEG, Integer.valueOf(80));
  public static final Pair<Bitmap.CompressFormat, Integer> PNG = Pair.create(Bitmap.CompressFormat.PNG, Integer.valueOf(100));
  
  public Bitmap.Config getBitmapConfig()
  {
    return Bitmap.Config.ARGB_8888;
  }
  
  public Pair<Bitmap.CompressFormat, Integer> getCacheFormat(String paramString)
  {
    if ("image/png".equals(paramString)) {
      return PNG;
    }
    return JPEG;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.image.AbstractImageReshaper
 * JD-Core Version:    0.7.0.1
 */