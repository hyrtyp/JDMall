package com.novoda.imageloader.core.cache.util;

import java.util.LinkedHashMap;
import java.util.Map;

public class LruCache<K, V>
{
  private int createCount;
  private int evictionCount;
  private int hitCount;
  private final LinkedHashMap<K, V> map;
  private long maxSize;
  private int missCount;
  private int putCount;
  private long size;
  
  public LruCache(long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    this.maxSize = paramLong;
    this.map = new LinkedHashMap(0, 0.75F, true);
  }
  
  private long safeSizeOf(K paramK, V paramV)
  {
    long l = sizeOf(paramK, paramV);
    if (l < 0L) {
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    }
    return l;
  }
  
  /* Error */
  private void trimToSize(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 68	com/novoda/imageloader/core/cache/util/LruCache:size	J
    //   6: lconst_0
    //   7: lcmp
    //   8: iflt +22 -> 30
    //   11: aload_0
    //   12: getfield 39	com/novoda/imageloader/core/cache/util/LruCache:map	Ljava/util/LinkedHashMap;
    //   15: invokevirtual 72	java/util/LinkedHashMap:isEmpty	()Z
    //   18: ifeq +50 -> 68
    //   21: aload_0
    //   22: getfield 68	com/novoda/imageloader/core/cache/util/LruCache:size	J
    //   25: lconst_0
    //   26: lcmp
    //   27: ifeq +41 -> 68
    //   30: new 46	java/lang/IllegalStateException
    //   33: dup
    //   34: new 48	java/lang/StringBuilder
    //   37: dup
    //   38: aload_0
    //   39: invokevirtual 76	java/lang/Object:getClass	()Ljava/lang/Class;
    //   42: invokevirtual 81	java/lang/Class:getName	()Ljava/lang/String;
    //   45: invokestatic 87	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   48: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   51: ldc 89
    //   53: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokespecial 65	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   62: athrow
    //   63: astore_3
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_3
    //   67: athrow
    //   68: aload_0
    //   69: getfield 68	com/novoda/imageloader/core/cache/util/LruCache:size	J
    //   72: lload_1
    //   73: lcmp
    //   74: ifgt +6 -> 80
    //   77: aload_0
    //   78: monitorexit
    //   79: return
    //   80: aload_0
    //   81: getfield 39	com/novoda/imageloader/core/cache/util/LruCache:map	Ljava/util/LinkedHashMap;
    //   84: invokevirtual 93	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   87: invokeinterface 99 1 0
    //   92: invokeinterface 105 1 0
    //   97: checkcast 107	java/util/Map$Entry
    //   100: astore 4
    //   102: aload 4
    //   104: ifnonnull +6 -> 110
    //   107: aload_0
    //   108: monitorexit
    //   109: return
    //   110: aload 4
    //   112: invokeinterface 110 1 0
    //   117: astore 5
    //   119: aload 4
    //   121: invokeinterface 113 1 0
    //   126: astore 6
    //   128: aload_0
    //   129: getfield 39	com/novoda/imageloader/core/cache/util/LruCache:map	Ljava/util/LinkedHashMap;
    //   132: aload 5
    //   134: invokevirtual 117	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   137: pop
    //   138: aload_0
    //   139: aload_0
    //   140: getfield 68	com/novoda/imageloader/core/cache/util/LruCache:size	J
    //   143: aload_0
    //   144: aload 5
    //   146: aload 6
    //   148: invokespecial 119	com/novoda/imageloader/core/cache/util/LruCache:safeSizeOf	(Ljava/lang/Object;Ljava/lang/Object;)J
    //   151: lsub
    //   152: putfield 68	com/novoda/imageloader/core/cache/util/LruCache:size	J
    //   155: aload_0
    //   156: iconst_1
    //   157: aload_0
    //   158: getfield 121	com/novoda/imageloader/core/cache/util/LruCache:evictionCount	I
    //   161: iadd
    //   162: putfield 121	com/novoda/imageloader/core/cache/util/LruCache:evictionCount	I
    //   165: aload_0
    //   166: monitorexit
    //   167: aload_0
    //   168: iconst_1
    //   169: aload 5
    //   171: aload 6
    //   173: aconst_null
    //   174: invokevirtual 125	com/novoda/imageloader/core/cache/util/LruCache:entryRemoved	(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   177: goto -177 -> 0
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	180	0	this	LruCache
    //   0	180	1	paramLong	long
    //   63	4	3	localObject1	Object
    //   100	20	4	localEntry	java.util.Map.Entry
    //   117	53	5	localObject2	Object
    //   126	46	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	30	63	finally
    //   30	63	63	finally
    //   64	66	63	finally
    //   68	79	63	finally
    //   80	102	63	finally
    //   107	109	63	finally
    //   110	167	63	finally
  }
  
  protected V create(K paramK)
  {
    return null;
  }
  
  public final int createCount()
  {
    try
    {
      int i = this.createCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected void entryRemoved(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final void evict(long paramLong)
  {
    trimToSize(paramLong);
  }
  
  public final void evictAll()
  {
    trimToSize(0L);
  }
  
  public final int evictionCount()
  {
    try
    {
      int i = this.evictionCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final V get(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    Object localObject3;
    try
    {
      Object localObject2 = this.map.get(paramK);
      if (localObject2 != null)
      {
        this.hitCount = (1 + this.hitCount);
        return localObject2;
      }
      this.missCount = (1 + this.missCount);
      localObject3 = create(paramK);
      if (localObject3 == null) {
        return null;
      }
    }
    finally {}
    try
    {
      this.createCount = (1 + this.createCount);
      Object localObject5 = this.map.put(paramK, localObject3);
      if (localObject5 != null) {
        this.map.put(paramK, localObject5);
      }
      for (;;)
      {
        if (localObject5 == null) {
          break;
        }
        entryRemoved(false, paramK, localObject3, localObject5);
        return localObject5;
        this.size += safeSizeOf(paramK, localObject3);
      }
      trimToSize(this.maxSize);
    }
    finally {}
    return localObject3;
  }
  
  public final int hitCount()
  {
    try
    {
      int i = this.hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final long maxSize()
  {
    try
    {
      long l = this.maxSize;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int missCount()
  {
    try
    {
      int i = this.missCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final V put(K paramK, V paramV)
    throws NullPointerException
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      this.putCount = (1 + this.putCount);
      this.size += safeSizeOf(paramK, paramV);
      Object localObject2 = this.map.put(paramK, paramV);
      if (localObject2 != null) {
        this.size -= safeSizeOf(paramK, localObject2);
      }
      if (localObject2 != null) {
        entryRemoved(false, paramK, localObject2, paramV);
      }
      trimToSize(this.maxSize);
      return localObject2;
    }
    finally {}
  }
  
  public final int putCount()
  {
    try
    {
      int i = this.putCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final V remove(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      Object localObject2 = this.map.remove(paramK);
      if (localObject2 != null) {
        this.size -= safeSizeOf(paramK, localObject2);
      }
      if (localObject2 != null) {
        entryRemoved(false, paramK, localObject2, null);
      }
      return localObject2;
    }
    finally {}
  }
  
  public final long size()
  {
    try
    {
      long l = this.size;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected long sizeOf(K paramK, V paramV)
  {
    return 1L;
  }
  
  public final Map<K, V> snapshot()
  {
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(this.map);
      return localLinkedHashMap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final String toString()
  {
    try
    {
      int i = this.hitCount + this.missCount;
      int j = 0;
      if (i != 0) {
        j = 100 * this.hitCount / i;
      }
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Long.valueOf(this.maxSize);
      arrayOfObject[1] = Integer.valueOf(this.hitCount);
      arrayOfObject[2] = Integer.valueOf(this.missCount);
      arrayOfObject[3] = Integer.valueOf(j);
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", arrayOfObject);
      return str;
    }
    finally {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.novoda.imageloader.core.cache.util.LruCache
 * JD-Core Version:    0.7.0.1
 */