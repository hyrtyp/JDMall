package com.jingdong.common.utils.cache;

import android.graphics.Bitmap;
import java.util.HashMap;

public class WidgetImageCache
{
  protected static HashMap<String, Bitmap> bitmapCache = new HashMap();
  
  /* Error */
  public static void clearAllBitmap()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 16	com/jingdong/common/utils/cache/WidgetImageCache:bitmapCache	Ljava/util/HashMap;
    //   6: invokevirtual 22	java/util/HashMap:keySet	()Ljava/util/Set;
    //   9: invokeinterface 28 1 0
    //   14: astore_1
    //   15: aload_1
    //   16: invokeinterface 34 1 0
    //   21: ifne +13 -> 34
    //   24: getstatic 16	com/jingdong/common/utils/cache/WidgetImageCache:bitmapCache	Ljava/util/HashMap;
    //   27: invokevirtual 37	java/util/HashMap:clear	()V
    //   30: ldc 2
    //   32: monitorexit
    //   33: return
    //   34: getstatic 16	com/jingdong/common/utils/cache/WidgetImageCache:bitmapCache	Ljava/util/HashMap;
    //   37: aload_1
    //   38: invokeinterface 41 1 0
    //   43: invokevirtual 45	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   46: checkcast 47	android/graphics/Bitmap
    //   49: astore_2
    //   50: aload_2
    //   51: ifnull -36 -> 15
    //   54: aload_2
    //   55: ifnull -40 -> 15
    //   58: aload_2
    //   59: invokevirtual 50	android/graphics/Bitmap:recycle	()V
    //   62: goto -47 -> 15
    //   65: astore_0
    //   66: ldc 2
    //   68: monitorexit
    //   69: aload_0
    //   70: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   65	5	0	localObject	Object
    //   14	24	1	localIterator	java.util.Iterator
    //   49	10	2	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   3	15	65	finally
    //   15	30	65	finally
    //   34	50	65	finally
    //   58	62	65	finally
  }
  
  public static boolean containsKeyBitmap(Object paramObject)
  {
    try
    {
      boolean bool = bitmapCache.containsKey(paramObject);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static Bitmap getBitmap(Object paramObject)
  {
    try
    {
      Bitmap localBitmap = (Bitmap)bitmapCache.get(paramObject);
      return localBitmap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static Bitmap putBitmap(String paramString, Bitmap paramBitmap)
  {
    try
    {
      Bitmap localBitmap = (Bitmap)bitmapCache.put(paramString, paramBitmap);
      return localBitmap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.cache.WidgetImageCache
 * JD-Core Version:    0.7.0.1
 */