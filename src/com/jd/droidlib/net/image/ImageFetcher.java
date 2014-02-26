package com.jd.droidlib.net.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.widget.ImageView;
import com.jd.droidlib.executor.concurrent.BackgroundExecutor;
import com.jd.droidlib.inner.BitmapFactoryUtils;
import com.jd.droidlib.net.http.RESTClient;
import com.jd.droidlib.net.http.worker.HTTPWorker;
import com.jd.droidlib.net.image.cache.BitmapDiskCache;
import com.jd.droidlib.net.image.cache.BitmapMemoryCache;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.Strings;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

public class ImageFetcher
{
  protected final ThreadPoolExecutor cacheExecutor;
  private final BitmapDiskCache diskCache;
  protected final ThreadPoolExecutor fetchExecutor;
  private Handler handler;
  private final BitmapMemoryCache memoryCache;
  private volatile boolean paused;
  private final LinkedHashSet<ImageViewSpec> pending = new LinkedHashSet();
  private final RESTClient restClient;
  private final ConcurrentHashMap<ImageViewSpec, Long> wip = new ConcurrentHashMap();
  
  public ImageFetcher(Context paramContext)
  {
    this(paramContext, new BackgroundExecutor(2), new RESTClient(paramContext), BitmapMemoryCache.getDefaultInstance(paramContext), BitmapDiskCache.getDefaultInstance(paramContext));
  }
  
  protected ImageFetcher(Context paramContext, ThreadPoolExecutor paramThreadPoolExecutor, RESTClient paramRESTClient, BitmapMemoryCache paramBitmapMemoryCache, BitmapDiskCache paramBitmapDiskCache)
  {
    this.fetchExecutor = paramThreadPoolExecutor;
    this.restClient = paramRESTClient;
    this.memoryCache = paramBitmapMemoryCache;
    this.diskCache = paramBitmapDiskCache;
    this.handler = new Handler(Looper.getMainLooper());
    this.cacheExecutor = new BackgroundExecutor(1);
  }
  
  void attachIfMostRecent(ImageViewSpec paramImageViewSpec, long paramLong, Bitmap paramBitmap)
  {
    Long localLong = (Long)this.wip.get(paramImageViewSpec);
    if ((localLong != null) && (paramLong == localLong.longValue()))
    {
      this.wip.remove(paramImageViewSpec);
      if ((!this.paused) || (!this.pending.contains(paramImageViewSpec))) {
        runOnUiThread(new SetBitmapRunnable(paramImageViewSpec, paramBitmap));
      }
    }
  }
  
  public void attachImage(ImageView paramImageView, String paramString)
  {
    attachImage(paramImageView, paramString, 0);
  }
  
  public void attachImage(ImageView paramImageView, String paramString, int paramInt)
  {
    attachImage(paramImageView, paramString, paramInt, null);
  }
  
  public void attachImage(ImageView paramImageView, String paramString, int paramInt, ImageReshaper paramImageReshaper)
  {
    attachImage(paramImageView, paramString, paramInt, paramImageReshaper, null);
  }
  
  public void attachImage(ImageView paramImageView, String paramString, int paramInt, ImageReshaper paramImageReshaper, ImageFetchListener paramImageFetchListener)
  {
    attachImage(paramImageView, paramString, paramInt, paramImageReshaper, paramImageFetchListener, null);
  }
  
  public void attachImage(ImageView paramImageView, String paramString, int paramInt, ImageReshaper paramImageReshaper, ImageFetchListener paramImageFetchListener, Bitmap paramBitmap)
  {
    ImageViewSpec localImageViewSpec = new ImageViewSpec(paramImageView, paramString, paramBitmap, paramInt, paramImageReshaper, paramImageFetchListener);
    long l = System.nanoTime();
    this.wip.put(localImageViewSpec, Long.valueOf(l));
    if (this.paused)
    {
      this.pending.remove(localImageViewSpec);
      this.pending.add(localImageViewSpec);
    }
    do
    {
      return;
      if (paramImageFetchListener != null) {
        paramImageFetchListener.onFetchAdded(paramImageView, paramString);
      }
      ReadFromCacheRunnable localReadFromCacheRunnable = new ReadFromCacheRunnable(localImageViewSpec, l);
      this.cacheExecutor.remove(localReadFromCacheRunnable);
      this.fetchExecutor.remove(localReadFromCacheRunnable);
      if (Strings.isNotEmpty(paramString))
      {
        this.cacheExecutor.execute(localReadFromCacheRunnable);
        return;
      }
    } while (paramImageFetchListener == null);
    paramImageFetchListener.onFetchCompleted(paramImageView, paramString, null);
  }
  
  void cacheRawImage(String paramString, byte[] paramArrayOfByte)
  {
    if (this.diskCache != null) {
      this.diskCache.put(paramString, paramArrayOfByte);
    }
  }
  
  public void clearCacheOlderThan(int paramInt)
  {
    if (this.diskCache != null)
    {
      final long l = System.currentTimeMillis() - 1000 * (60 * (paramInt * 60));
      this.cacheExecutor.execute(new Runnable()
      {
        public void run()
        {
          ImageFetcher.this.diskCache.purgeFilesAccessedBefore(l);
        }
      });
      return;
    }
    L.w("Disk cache not set.");
  }
  
  /* Error */
  Pair<byte[], Pair<Bitmap, BitmapFactory.Options>> fetchAndDecode(final ImageViewSpec paramImageViewSpec)
    throws Exception
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 211	com/jd/droidlib/net/image/ImageFetcher$ImageViewSpec:imgViewRef	Ljava/lang/ref/WeakReference;
    //   4: invokevirtual 216	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   7: checkcast 218	android/widget/ImageView
    //   10: astore_2
    //   11: aload_2
    //   12: ifnonnull +13 -> 25
    //   15: new 220	java/lang/IllegalStateException
    //   18: dup
    //   19: ldc 222
    //   21: invokespecial 225	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   24: athrow
    //   25: iconst_0
    //   26: istore_3
    //   27: sipush 8192
    //   30: newarray byte
    //   32: astore 4
    //   34: aconst_null
    //   35: astore 5
    //   37: new 227	java/io/ByteArrayOutputStream
    //   40: dup
    //   41: invokespecial 228	java/io/ByteArrayOutputStream:<init>	()V
    //   44: astore 6
    //   46: aload_0
    //   47: getfield 65	com/jd/droidlib/net/image/ImageFetcher:restClient	Lcom/jd/droidlib/net/http/RESTClient;
    //   50: aload_1
    //   51: getfield 232	com/jd/droidlib/net/image/ImageFetcher$ImageViewSpec:imgUrl	Ljava/lang/String;
    //   54: invokevirtual 236	com/jd/droidlib/net/http/RESTClient:getInputStream	(Ljava/lang/String;)Lcom/jd/droidlib/net/http/HTTPResponse;
    //   57: astore 8
    //   59: aload 8
    //   61: ldc 238
    //   63: invokevirtual 244	com/jd/droidlib/net/http/HTTPResponse:getHeaderInt	(Ljava/lang/String;)I
    //   66: sipush 1024
    //   69: idiv
    //   70: istore 9
    //   72: aload 8
    //   74: getfield 248	com/jd/droidlib/net/http/HTTPResponse:inputStream	Lcom/jd/droidlib/net/http/worker/HTTPInputStream;
    //   77: astore 5
    //   79: aload 5
    //   81: aload 4
    //   83: invokevirtual 254	java/io/BufferedInputStream:read	([B)I
    //   86: istore 10
    //   88: iload 10
    //   90: iconst_m1
    //   91: if_icmpne +64 -> 155
    //   94: aload 6
    //   96: invokevirtual 258	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   99: astore 11
    //   101: aload 11
    //   103: aload 11
    //   105: aload_1
    //   106: getfield 262	com/jd/droidlib/net/image/ImageFetcher$ImageViewSpec:widthHint	I
    //   109: aload_1
    //   110: getfield 265	com/jd/droidlib/net/image/ImageFetcher$ImageViewSpec:heightHint	I
    //   113: aload_1
    //   114: getfield 269	com/jd/droidlib/net/image/ImageFetcher$ImageViewSpec:configHint	Landroid/graphics/Bitmap$Config;
    //   117: aload_1
    //   118: getfield 272	com/jd/droidlib/net/image/ImageFetcher$ImageViewSpec:inBitmapRef	Ljava/lang/ref/WeakReference;
    //   121: invokevirtual 216	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   124: checkcast 274	android/graphics/Bitmap
    //   127: invokestatic 280	com/jd/droidlib/inner/BitmapFactoryUtils:decodeScaled	([BIILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/util/Pair;
    //   130: invokestatic 286	android/util/Pair:create	(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    //   133: astore 12
    //   135: iconst_2
    //   136: anewarray 288	java/io/Closeable
    //   139: dup
    //   140: iconst_0
    //   141: aload 5
    //   143: aastore
    //   144: dup
    //   145: iconst_1
    //   146: aload 6
    //   148: aastore
    //   149: invokestatic 294	com/jd/droidlib/util/IOUtils:silentlyClose	([Ljava/io/Closeable;)V
    //   152: aload 12
    //   154: areturn
    //   155: aload 6
    //   157: aload 4
    //   159: iconst_0
    //   160: iload 10
    //   162: invokevirtual 298	java/io/ByteArrayOutputStream:write	([BII)V
    //   165: iload_3
    //   166: iload 10
    //   168: iadd
    //   169: istore_3
    //   170: aload_1
    //   171: getfield 302	com/jd/droidlib/net/image/ImageFetcher$ImageViewSpec:listener	Lcom/jd/droidlib/net/image/ImageFetchListener;
    //   174: ifnull -95 -> 79
    //   177: aload_0
    //   178: new 304	com/jd/droidlib/net/image/ImageFetcher$2
    //   181: dup
    //   182: aload_0
    //   183: aload_1
    //   184: aload_2
    //   185: iload 9
    //   187: iload_3
    //   188: sipush 1024
    //   191: idiv
    //   192: invokespecial 307	com/jd/droidlib/net/image/ImageFetcher$2:<init>	(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;Landroid/widget/ImageView;II)V
    //   195: invokevirtual 116	com/jd/droidlib/net/image/ImageFetcher:runOnUiThread	(Ljava/lang/Runnable;)V
    //   198: goto -119 -> 79
    //   201: astore 7
    //   203: iconst_2
    //   204: anewarray 288	java/io/Closeable
    //   207: dup
    //   208: iconst_0
    //   209: aload 5
    //   211: aastore
    //   212: dup
    //   213: iconst_1
    //   214: aload 6
    //   216: aastore
    //   217: invokestatic 294	com/jd/droidlib/util/IOUtils:silentlyClose	([Ljava/io/Closeable;)V
    //   220: aload 7
    //   222: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	ImageFetcher
    //   0	223	1	paramImageViewSpec	ImageViewSpec
    //   10	175	2	localImageView	ImageView
    //   26	166	3	i	int
    //   32	126	4	arrayOfByte1	byte[]
    //   35	175	5	localHTTPInputStream	com.jd.droidlib.net.http.worker.HTTPInputStream
    //   44	171	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   201	20	7	localObject	Object
    //   57	16	8	localHTTPResponse	com.jd.droidlib.net.http.HTTPResponse
    //   70	116	9	j	int
    //   86	83	10	k	int
    //   99	5	11	arrayOfByte2	byte[]
    //   133	20	12	localPair	Pair
    // Exception table:
    //   from	to	target	type
    //   46	79	201	finally
    //   79	88	201	finally
    //   94	135	201	finally
    //   155	165	201	finally
    //   170	198	201	finally
  }
  
  public Bitmap getImage(String paramString, ImageReshaper paramImageReshaper, ImageView paramImageView)
    throws Exception
  {
    ImageViewSpec localImageViewSpec = new ImageViewSpec(paramImageView, paramString, null, 0, paramImageReshaper, null);
    Bitmap localBitmap = readCached(localImageViewSpec);
    if (localBitmap == null)
    {
      Pair localPair = fetchAndDecode(localImageViewSpec);
      cacheRawImage(paramString, (byte[])localPair.first);
      localBitmap = reshapeAndCache(localImageViewSpec, (Pair)localPair.second);
    }
    return localBitmap;
  }
  
  public void pause()
  {
    this.paused = true;
  }
  
  Bitmap readCached(ImageViewSpec paramImageViewSpec)
  {
    BitmapMemoryCache localBitmapMemoryCache = this.memoryCache;
    Bitmap localBitmap = null;
    if (localBitmapMemoryCache != null) {
      localBitmap = this.memoryCache.get(paramImageViewSpec.cacheKey);
    }
    if ((localBitmap == null) && (this.diskCache != null))
    {
      Pair localPair1 = this.diskCache.get(paramImageViewSpec.cacheKey, paramImageViewSpec.widthHint, paramImageViewSpec.heightHint, paramImageViewSpec.configHint, (Bitmap)paramImageViewSpec.inBitmapRef.get());
      if (localPair1 == null) {
        break label105;
      }
      localBitmap = (Bitmap)localPair1.first;
      if (this.memoryCache != null) {
        this.memoryCache.put(paramImageViewSpec.cacheKey, localBitmap);
      }
    }
    label105:
    Pair localPair2;
    do
    {
      return localBitmap;
      localPair2 = this.diskCache.get(paramImageViewSpec.imgUrl, paramImageViewSpec.widthHint, paramImageViewSpec.heightHint, paramImageViewSpec.configHint, (Bitmap)paramImageViewSpec.inBitmapRef.get());
    } while (localPair2 == null);
    return reshapeAndCache(paramImageViewSpec, localPair2);
  }
  
  Bitmap reshapeAndCache(ImageViewSpec paramImageViewSpec, Pair<Bitmap, BitmapFactory.Options> paramPair)
  {
    Object localObject = (Bitmap)paramPair.first;
    if (paramImageViewSpec.reshaper != null)
    {
      Bitmap localBitmap = paramImageViewSpec.reshaper.reshape((Bitmap)localObject);
      if (localObject != localBitmap) {
        ((Bitmap)localObject).recycle();
      }
      localObject = localBitmap;
    }
    if (this.memoryCache != null) {
      this.memoryCache.put(paramImageViewSpec.cacheKey, (Bitmap)localObject);
    }
    if ((this.diskCache != null) && (paramImageViewSpec.reshaper != null))
    {
      Pair localPair = paramImageViewSpec.reshaper.getCacheFormat(((BitmapFactory.Options)paramPair.second).outMimeType);
      this.diskCache.put(paramImageViewSpec.cacheKey, (Bitmap)localObject, localPair);
    }
    return localObject;
  }
  
  public void resume(boolean paramBoolean)
  {
    this.paused = false;
    Iterator localIterator;
    if (paramBoolean) {
      localIterator = this.pending.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        this.pending.clear();
        return;
      }
      ImageViewSpec localImageViewSpec = (ImageViewSpec)localIterator.next();
      ImageView localImageView = (ImageView)localImageViewSpec.imgViewRef.get();
      if (localImageView != null) {
        attachImage(localImageView, localImageViewSpec.imgUrl, localImageViewSpec.crossFadeMillis, localImageViewSpec.reshaper, localImageViewSpec.listener, (Bitmap)localImageViewSpec.inBitmapRef.get());
      }
    }
  }
  
  void runOnUiThread(Runnable paramRunnable)
  {
    boolean bool = this.handler.post(paramRunnable);
    for (;;)
    {
      if (bool) {
        return;
      }
      this.handler = new Handler(Looper.getMainLooper());
      runOnUiThread(paramRunnable);
    }
  }
  
  class FetchAndCacheRunnable
    extends ImageFetcher.ImageViewSpecRunnable
  {
    public FetchAndCacheRunnable(ImageFetcher.ImageViewSpec paramImageViewSpec, long paramLong)
    {
      super(paramImageViewSpec, paramLong);
    }
    
    public void run()
    {
      try
      {
        Pair localPair = ImageFetcher.this.fetchAndDecode(this.spec);
        ImageFetcher.this.cacheRawImage(this.spec.imgUrl, (byte[])localPair.first);
        Bitmap localBitmap = ImageFetcher.this.reshapeAndCache(this.spec, (Pair)localPair.second);
        ImageFetcher.this.attachIfMostRecent(this.spec, this.submitted, localBitmap);
        return;
      }
      catch (Exception localException)
      {
        final ImageView localImageView;
        do
        {
          HTTPWorker.throwIfNetworkOnMainThreadException(localException);
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = this.spec.imgUrl;
          L.w("Failed to fetch %s.", arrayOfObject);
          L.d(localException);
          localImageView = (ImageView)this.spec.imgViewRef.get();
        } while ((this.spec.listener == null) || (localImageView == null));
        ImageFetcher.this.runOnUiThread(new Runnable()
        {
          public void run()
          {
            ImageFetcher.FetchAndCacheRunnable.this.spec.listener.onFetchFailed(localImageView, ImageFetcher.FetchAndCacheRunnable.this.spec.imgUrl, localException);
          }
        });
      }
    }
  }
  
  static class ImageViewSpec
  {
    final String cacheKey;
    final Bitmap.Config configHint;
    final int crossFadeMillis;
    final int heightHint;
    final String imgUrl;
    private final int imgViewHash;
    final WeakReference<ImageView> imgViewRef;
    final WeakReference<Bitmap> inBitmapRef;
    final ImageFetchListener listener;
    final ImageReshaper reshaper;
    final int widthHint;
    
    public ImageViewSpec(ImageView paramImageView, String paramString, Bitmap paramBitmap, int paramInt, ImageReshaper paramImageReshaper, ImageFetchListener paramImageFetchListener)
    {
      this.imgViewRef = new WeakReference(paramImageView);
      this.imgUrl = paramString;
      this.inBitmapRef = new WeakReference(paramBitmap);
      this.crossFadeMillis = paramInt;
      this.reshaper = paramImageReshaper;
      this.listener = paramImageFetchListener;
      this.cacheKey = getCacheKey(paramImageView);
      this.configHint = getConfigHint();
      Point localPoint = getSizeHint(paramImageView);
      this.widthHint = localPoint.x;
      this.heightHint = localPoint.y;
      this.imgViewHash = paramImageView.hashCode();
    }
    
    private String getCacheKey(ImageView paramImageView)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.imgUrl);
      if (this.reshaper != null)
      {
        localStringBuilder.append("-");
        localStringBuilder.append(this.reshaper.getCacheId());
      }
      Point localPoint = getSizeHint(paramImageView);
      if ((localPoint.x > 0) || (localPoint.y > 0))
      {
        localStringBuilder.append("-");
        localStringBuilder.append(localPoint.x);
        localStringBuilder.append("x");
        localStringBuilder.append(localPoint.y);
      }
      return localStringBuilder.toString();
    }
    
    private Bitmap.Config getConfigHint()
    {
      if (this.reshaper != null) {
        return this.reshaper.getBitmapConfig();
      }
      return null;
    }
    
    private Point getSizeHint(ImageView paramImageView)
    {
      Point localPoint = new Point();
      if (this.reshaper != null)
      {
        localPoint.x = this.reshaper.getImageWidthHint();
        localPoint.y = this.reshaper.getImageHeightHint();
      }
      if ((localPoint.x <= 0) && (localPoint.y <= 0)) {
        localPoint = BitmapFactoryUtils.calcDecodeSizeHint(paramImageView);
      }
      return localPoint;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2;
      if (this == paramObject) {
        bool2 = true;
      }
      boolean bool1;
      do
      {
        return bool2;
        bool1 = paramObject instanceof ImageViewSpec;
        bool2 = false;
      } while (!bool1);
      return this.imgViewHash == ((ImageViewSpec)paramObject).imgViewHash;
    }
    
    public int hashCode()
    {
      return this.imgViewHash;
    }
  }
  
  abstract class ImageViewSpecRunnable
    implements Runnable
  {
    final ImageFetcher.ImageViewSpec spec;
    final long submitted;
    
    public ImageViewSpecRunnable(ImageFetcher.ImageViewSpec paramImageViewSpec, long paramLong)
    {
      this.spec = paramImageViewSpec;
      this.submitted = paramLong;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2;
      if (this == paramObject) {
        bool2 = true;
      }
      boolean bool1;
      do
      {
        return bool2;
        bool1 = paramObject instanceof ImageViewSpecRunnable;
        bool2 = false;
      } while (!bool1);
      return this.spec.equals(((ImageViewSpecRunnable)paramObject).spec);
    }
    
    public int hashCode()
    {
      return this.spec.hashCode();
    }
  }
  
  class ReadFromCacheRunnable
    extends ImageFetcher.ImageViewSpecRunnable
  {
    public ReadFromCacheRunnable(ImageFetcher.ImageViewSpec paramImageViewSpec, long paramLong)
    {
      super(paramImageViewSpec, paramLong);
    }
    
    public void run()
    {
      Bitmap localBitmap = ImageFetcher.this.readCached(this.spec);
      if (localBitmap == null)
      {
        ImageFetcher.FetchAndCacheRunnable localFetchAndCacheRunnable = new ImageFetcher.FetchAndCacheRunnable(ImageFetcher.this, this.spec, this.submitted);
        ImageFetcher.this.fetchExecutor.execute(localFetchAndCacheRunnable);
        return;
      }
      ImageFetcher.this.attachIfMostRecent(this.spec, this.submitted, localBitmap);
    }
  }
  
  class SetBitmapRunnable
    extends ImageFetcher.ImageViewSpecRunnable
  {
    final Bitmap bitmap;
    
    public SetBitmapRunnable(ImageFetcher.ImageViewSpec paramImageViewSpec, Bitmap paramBitmap)
    {
      super(paramImageViewSpec, -1L);
      this.bitmap = paramBitmap;
    }
    
    public void run()
    {
      ImageView localImageView = (ImageView)this.spec.imgViewRef.get();
      if (localImageView != null)
      {
        if (this.spec.crossFadeMillis <= 0) {
          break label131;
        }
        Object localObject = localImageView.getDrawable();
        if (localObject == null) {
          localObject = new ColorDrawable(0);
        }
        TransitionDrawable localTransitionDrawable = new TransitionDrawable(new Drawable[] { localObject, new BitmapDrawable(localImageView.getResources(), this.bitmap) });
        localImageView.setImageDrawable(localTransitionDrawable);
        localTransitionDrawable.startTransition(this.spec.crossFadeMillis);
      }
      for (;;)
      {
        if (this.spec.listener != null) {
          this.spec.listener.onFetchCompleted(localImageView, this.spec.imgUrl, this.bitmap);
        }
        return;
        label131:
        localImageView.setImageBitmap(this.bitmap);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.image.ImageFetcher
 * JD-Core Version:    0.7.0.1
 */