package com.jd.droidlib.net.image;

import android.graphics.Bitmap;
import android.widget.ImageView;

public abstract interface ImageFetchListener
{
  public abstract void onFetchAdded(ImageView paramImageView, String paramString);
  
  public abstract void onFetchCompleted(ImageView paramImageView, String paramString, Bitmap paramBitmap);
  
  public abstract void onFetchFailed(ImageView paramImageView, String paramString, Exception paramException);
  
  public abstract void onFetchProgressChanged(ImageView paramImageView, String paramString, int paramInt1, int paramInt2);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.image.ImageFetchListener
 * JD-Core Version:    0.7.0.1
 */