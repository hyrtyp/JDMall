package com.jd.droidlib.net.image.cache;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;

public class SupportBitmapLruCache
  extends LruCache<String, Bitmap>
  implements BitmapMemoryCache.BitmapLruCache
{
  public SupportBitmapLruCache(int paramInt)
  {
    super(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.image.cache.SupportBitmapLruCache
 * JD-Core Version:    0.7.0.1
 */