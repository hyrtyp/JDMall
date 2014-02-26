package com.jingdong.common.utils.cache;

import android.graphics.Bitmap;
import com.jingdong.common.MyApplication;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.util.HashMap;
import java.util.Map;

public class GlobalImageCache
{
  public static final int STATE_FAILURE = 2;
  public static final int STATE_LOADING = 1;
  public static final int STATE_NONE = 0;
  public static final int STATE_SUCCESS = 3;
  private static final Map<ImageState, BitmapDigest> digestMap = new HashMap();
  private static final Map<BitmapDigest, ImageState> imageMap = new HashMap();
  private static LruBitmapCache lruBitmapCache;
  
  public static BitmapDigest getBitmapDigest(ImageState paramImageState)
  {
    return (BitmapDigest)digestMap.get(paramImageState);
  }
  
  public static ImageState getImageState(BitmapDigest paramBitmapDigest)
  {
    try
    {
      ImageState localImageState = (ImageState)imageMap.get(paramBitmapDigest);
      if (localImageState == null)
      {
        localImageState = new ImageState();
        imageMap.put(paramBitmapDigest, localImageState);
        digestMap.put(localImageState, paramBitmapDigest);
      }
      return localImageState;
    }
    finally {}
  }
  
  public static LruBitmapCache getLruBitmapCache()
  {
    try
    {
      if (lruBitmapCache == null) {
        lruBitmapCache = new LruBitmapCache(MyApplication.getInstance(), 30);
      }
      LruBitmapCache localLruBitmapCache = lruBitmapCache;
      return localLruBitmapCache;
    }
    finally {}
  }
  
  public static void remove(BitmapDigest paramBitmapDigest)
  {
    ImageState localImageState = (ImageState)imageMap.remove(paramBitmapDigest);
    digestMap.remove(localImageState);
  }
  
  public static class BitmapDigest
  {
    private boolean allowRecycle = true;
    private String custom;
    private String digest;
    private int height;
    private boolean large = false;
    private Map<String, Object> moreParameter;
    private int position;
    private int round;
    private String url;
    private int width;
    
    public BitmapDigest(String paramString)
    {
      this.url = paramString;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      BitmapDigest localBitmapDigest;
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        localBitmapDigest = (BitmapDigest)paramObject;
        if (this.allowRecycle != localBitmapDigest.allowRecycle) {
          return false;
        }
        if (this.custom == null)
        {
          if (localBitmapDigest.custom != null) {
            return false;
          }
        }
        else if (!this.custom.equals(localBitmapDigest.custom)) {
          return false;
        }
        if (this.height != localBitmapDigest.height) {
          return false;
        }
        if (this.position != localBitmapDigest.position) {
          return false;
        }
        if (this.round != localBitmapDigest.round) {
          return false;
        }
        if (this.url == null)
        {
          if (localBitmapDigest.url != null) {
            return false;
          }
        }
        else if (!this.url.equals(localBitmapDigest.url)) {
          return false;
        }
      } while (this.width == localBitmapDigest.width);
      return false;
    }
    
    public String getCustom()
    {
      return this.custom;
    }
    
    public int getHeight()
    {
      return this.height;
    }
    
    public Object getMoreParameter(String paramString)
    {
      if (this.moreParameter == null) {
        return null;
      }
      return this.moreParameter.get(paramString);
    }
    
    public int getPosition()
    {
      return this.position;
    }
    
    public int getRound()
    {
      return this.round;
    }
    
    public String getUrl()
    {
      return this.url;
    }
    
    public int getWidth()
    {
      return this.width;
    }
    
    public int hashCode()
    {
      int i;
      int k;
      label28:
      int m;
      int n;
      if (this.allowRecycle)
      {
        i = 1231;
        int j = 31 * (i + 31);
        if (this.custom != null) {
          break label95;
        }
        k = 0;
        m = 31 * (31 * (31 * (31 * (j + k) + this.height) + this.position) + this.round);
        String str = this.url;
        n = 0;
        if (str != null) {
          break label106;
        }
      }
      for (;;)
      {
        return 31 * (m + n) + this.width;
        i = 1237;
        break;
        label95:
        k = this.custom.hashCode();
        break label28;
        label106:
        n = this.url.hashCode();
      }
    }
    
    public boolean isAllowRecycle()
    {
      return this.allowRecycle;
    }
    
    public boolean isLarge()
    {
      return this.large;
    }
    
    public void putMoreParameter(String paramString, Object paramObject)
    {
      if (this.moreParameter == null) {
        this.moreParameter = new HashMap();
      }
      this.moreParameter.put(paramString, paramObject);
    }
    
    public void setAllowRecycle(boolean paramBoolean)
    {
      this.allowRecycle = paramBoolean;
    }
    
    public void setCustom(String paramString)
    {
      this.custom = paramString;
    }
    
    public void setHeight(int paramInt)
    {
      this.height = paramInt;
    }
    
    public void setLarge(boolean paramBoolean)
    {
      this.large = paramBoolean;
    }
    
    public void setPosition(int paramInt)
    {
      this.position = paramInt;
    }
    
    public void setRound(int paramInt)
    {
      this.round = paramInt;
    }
    
    public void setUrl(String paramString)
    {
      this.url = paramString;
    }
    
    public void setWidth(int paramInt)
    {
      this.width = paramInt;
    }
  }
  
  public static class ImageState
  {
    private int mState = 0;
    
    public void failure()
    {
      this.mState = 2;
    }
    
    public Bitmap getBitmap()
    {
      GlobalImageCache.BitmapDigest localBitmapDigest = GlobalImageCache.getBitmapDigest(this);
      if (localBitmapDigest != null) {
        return GlobalImageCache.getLruBitmapCache().get(localBitmapDigest);
      }
      return null;
    }
    
    public int getState()
    {
      if ((this.mState == 3) && (getBitmap() == null)) {
        this.mState = 0;
      }
      return this.mState;
    }
    
    public void loading()
    {
      this.mState = 1;
    }
    
    public void none()
    {
      this.mState = 0;
    }
    
    public void success(Bitmap paramBitmap)
    {
      try
      {
        GlobalImageCache.getLruBitmapCache().put(GlobalImageCache.getBitmapDigest(this), paramBitmap);
        this.mState = 3;
        return;
      }
      catch (NullPointerException localNullPointerException)
      {
        failure();
      }
    }
    
    public String toString()
    {
      return "ImageState [bitmap=" + getBitmap() + ", mState=" + this.mState + "]";
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.cache.GlobalImageCache
 * JD-Core Version:    0.7.0.1
 */