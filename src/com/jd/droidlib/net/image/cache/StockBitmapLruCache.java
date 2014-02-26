package com.jd.droidlib.net.image.cache;

import android.graphics.Bitmap;
import android.util.LruCache;

public class StockBitmapLruCache
  extends LruCache<String, Bitmap>
  implements BitmapMemoryCache.BitmapLruCache
{
  public StockBitmapLruCache(int paramInt)
  {
    super(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.image.cache.StockBitmapLruCache
 * JD-Core Version:    0.7.0.1
 */