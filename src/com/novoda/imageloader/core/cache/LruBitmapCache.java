package com.novoda.imageloader.core.cache;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.jingdong.common.utils.ActivityManagerUtils;
import com.jingdong.common.utils.SDKUtils;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.novoda.imageloader.core.cache.util.LruCache;
import java.util.ArrayList;

public class LruBitmapCache
{
  public static final int DEFAULT_MEMORY_CACHE_PERCENTAGE = 25;
  private static final int DEFAULT_MEMORY_CAPACITY_FOR_DEVICES_OLDER_THAN_API_LEVEL_4 = 12;
  private static final long MAX_IMAGE_MEMERY_CACHE = 16L;
  private static final long ONE_M_BYTES = 1048576L;
  private static boolean needAlive = true;
  public static final BitmapRecycleTask recycleTask = new BitmapRecycleTask();
  private LruCache<GlobalImageCache.BitmapDigest, Bitmap> cache;
  private long capacity;
  
  public LruBitmapCache(Context paramContext)
  {
    this(paramContext, 25);
  }
  
  public LruBitmapCache(Context paramContext, int paramInt)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    boolean bool = SDKUtils.isSDKVersionMoreThan16();
    int i = 0;
    if (bool) {
      i = ActivityManagerUtils.getMemoryClass(localActivityManager);
    }
    if (i == 0) {
      i = 12;
    }
    if (paramInt < 0) {
      paramInt = 0;
    }
    if (paramInt > 81) {
      paramInt = 80;
    }
    this.capacity = (i * paramInt / 100L);
    if (this.capacity <= 0L) {
      this.capacity = 4L;
    }
    this.capacity = (1048576L * this.capacity);
    reset();
  }
  
  public static void quit()
  {
    needAlive = false;
    synchronized (recycleTask)
    {
      recycleTask.notify();
      return;
    }
  }
  
  private void recycleMemery() {}
  
  private void reset()
  {
    if (this.cache != null) {
      this.cache.evictAll();
    }
    this.cache = new LruCache(this.capacity)
    {
      protected void entryRemoved(boolean paramAnonymousBoolean, GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, Bitmap paramAnonymousBitmap1, Bitmap paramAnonymousBitmap2)
      {
        if (paramAnonymousBitmapDigest.isAllowRecycle()) {
          LruBitmapCache.recycleTask.recycleBitmap(paramAnonymousBitmap1);
        }
        if (paramAnonymousBoolean) {
          GlobalImageCache.remove(paramAnonymousBitmapDigest);
        }
      }
      
      protected long sizeOf(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, Bitmap paramAnonymousBitmap)
      {
        return 4L * (paramAnonymousBitmap.getWidth() * paramAnonymousBitmap.getHeight());
      }
    };
  }
  
  public void clean()
  {
    cleanMost();
  }
  
  public void cleanMost()
  {
    long l = Math.round(0.5D * this.capacity);
    this.cache.evict(l);
  }
  
  public Bitmap get(GlobalImageCache.BitmapDigest paramBitmapDigest)
  {
    return (Bitmap)this.cache.get(paramBitmapDigest);
  }
  
  public void put(GlobalImageCache.BitmapDigest paramBitmapDigest, Bitmap paramBitmap)
    throws NullPointerException
  {
    this.cache.put(paramBitmapDigest, paramBitmap);
  }
  
  public void remove(GlobalImageCache.BitmapDigest paramBitmapDigest)
  {
    this.cache.remove(paramBitmapDigest);
  }
  
  public static class BitmapRecycleTask
    extends Thread
  {
    private boolean hasStarted = false;
    private ArrayList<Bitmap> queue = new ArrayList();
    
    public void recycleBitmap(Bitmap paramBitmap)
    {
      synchronized (LruBitmapCache.recycleTask)
      {
        this.queue.add(paramBitmap);
        LruBitmapCache.recycleTask.notify();
        if (!this.hasStarted)
        {
          this.hasStarted = true;
          start();
        }
        return;
      }
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: invokestatic 47	com/novoda/imageloader/core/cache/LruBitmapCache:access$0	()Z
      //   3: ifne +4 -> 7
      //   6: return
      //   7: getstatic 28	com/novoda/imageloader/core/cache/LruBitmapCache:recycleTask	Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;
      //   10: astore_2
      //   11: aload_2
      //   12: monitorenter
      //   13: aload_0
      //   14: getfield 18	com/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask:queue	Ljava/util/ArrayList;
      //   17: invokevirtual 51	java/util/ArrayList:size	()I
      //   20: iconst_1
      //   21: if_icmpge +12 -> 33
      //   24: invokestatic 56	java/lang/System:gc	()V
      //   27: getstatic 28	com/novoda/imageloader/core/cache/LruBitmapCache:recycleTask	Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;
      //   30: invokevirtual 59	java/lang/Object:wait	()V
      //   33: aload_0
      //   34: getfield 18	com/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask:queue	Ljava/util/ArrayList;
      //   37: iconst_0
      //   38: invokevirtual 63	java/util/ArrayList:remove	(I)Ljava/lang/Object;
      //   41: checkcast 65	android/graphics/Bitmap
      //   44: astore 4
      //   46: aload_2
      //   47: monitorexit
      //   48: aload 4
      //   50: ifnull -50 -> 0
      //   53: aload 4
      //   55: invokevirtual 68	android/graphics/Bitmap:isRecycled	()Z
      //   58: ifne -58 -> 0
      //   61: aload 4
      //   63: invokevirtual 71	android/graphics/Bitmap:recycle	()V
      //   66: goto -66 -> 0
      //   69: astore_1
      //   70: goto -70 -> 0
      //   73: astore_3
      //   74: aload_2
      //   75: monitorexit
      //   76: aload_3
      //   77: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	78	0	this	BitmapRecycleTask
      //   69	1	1	localThrowable	java.lang.Throwable
      //   73	4	3	localObject	Object
      //   44	18	4	localBitmap	Bitmap
      // Exception table:
      //   from	to	target	type
      //   7	13	69	java/lang/Throwable
      //   53	66	69	java/lang/Throwable
      //   76	78	69	java/lang/Throwable
      //   13	33	73	finally
      //   33	48	73	finally
      //   74	76	73	finally
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.novoda.imageloader.core.cache.LruBitmapCache
 * JD-Core Version:    0.7.0.1
 */