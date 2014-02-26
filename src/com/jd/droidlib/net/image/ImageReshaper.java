package com.jd.droidlib.net.image;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.util.Pair;

public abstract interface ImageReshaper
{
  public abstract Bitmap.Config getBitmapConfig();
  
  public abstract Pair<Bitmap.CompressFormat, Integer> getCacheFormat(String paramString);
  
  public abstract String getCacheId();
  
  public abstract int getImageHeightHint();
  
  public abstract int getImageWidthHint();
  
  public abstract Bitmap reshape(Bitmap paramBitmap);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.image.ImageReshaper
 * JD-Core Version:    0.7.0.1
 */