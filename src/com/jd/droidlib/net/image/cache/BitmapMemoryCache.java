package com.jd.droidlib.net.image.cache;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.ui.BitmapUtils;

public class BitmapMemoryCache
{
  private static final int DEFAULT_APP_MEMORY_PERCENT = 20;
  private static final int DEFAULT_MAX_ITEM_SIZE = 262144;
  private static BitmapMemoryCache instance;
  private BitmapLruCache cache;
  private final int maxItemSize;
  
  public BitmapMemoryCache(Context paramContext, int paramInt1, int paramInt2)
  {
    this.maxItemSize = paramInt2;
    int i = 1024 * (1024 * (int)(((ActivityManager)paramContext.getSystemService("activity")).getMemoryClass() * (paramInt1 / 100.0F)));
    try
    {
      this.cache = new StockBitmapLruCache(i);
      L.i("Using stock LruCache.");
      return;
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        this.cache = new SupportBitmapLruCache(i);
        L.i("Using Support Package LruCache.");
        return;
      }
      catch (Throwable localThrowable2)
      {
        L.i("LruCache not available.");
      }
    }
  }
  
  public static BitmapMemoryCache getDefaultInstance(Context paramContext)
  {
    if (instance == null) {
      instance = new BitmapMemoryCache(paramContext, 20, 262144);
    }
    return instance;
  }
  
  public Bitmap get(String paramString)
  {
    boolean bool = isAvailable();
    Bitmap localBitmap = null;
    if (bool) {
      localBitmap = this.cache.get(paramString);
    }
    StringBuilder localStringBuilder = new StringBuilder("MemoryCache ");
    if (localBitmap == null) {}
    for (String str = "miss";; str = "hit")
    {
      L.v(str + " for '%s'.", new Object[] { paramString });
      return localBitmap;
    }
  }
  
  public boolean isAvailable()
  {
    return this.cache != null;
  }
  
  public boolean put(String paramString, Bitmap paramBitmap)
  {
    boolean bool1 = isAvailable();
    boolean bool2 = false;
    if (bool1)
    {
      int i = BitmapUtils.getSize(paramBitmap);
      int j = this.maxItemSize;
      bool2 = false;
      if (i <= j)
      {
        this.cache.put(paramString, paramBitmap);
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static abstract interface BitmapLruCache
  {
    public abstract Bitmap get(String paramString);
    
    public abstract Bitmap put(String paramString, Bitmap paramBitmap);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.image.cache.BitmapMemoryCache
 * JD-Core Version:    0.7.0.1
 */