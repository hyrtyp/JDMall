package com.jingdong.common.utils.adapter;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.SubViewBinder;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class MyBitmapDrawable
  extends BitmapDrawable
{
  private GlobalImageCache.BitmapDigest digest;
  private boolean isGc;
  private SimpleBeanAdapter.SubViewHolder subViewHolder;
  
  public MyBitmapDrawable(Resources paramResources, SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.BitmapDigest paramBitmapDigest, Bitmap paramBitmap)
  {
    super(paramResources, paramBitmap);
    this.subViewHolder = paramSubViewHolder;
    this.digest = paramBitmapDigest;
  }
  
  public void draw(Canvas paramCanvas)
  {
    try
    {
      super.draw(paramCanvas);
      return;
    }
    catch (Throwable localThrowable)
    {
      SubViewBinder localSubViewBinder;
      do
      {
        while ((getBitmap() == null) || (!getBitmap().isRecycled()) || (this.isGc)) {}
        localSubViewBinder = this.subViewHolder.getAdapter().getViewBinder();
      } while (!(localSubViewBinder instanceof SimpleSubViewBinder));
      SimpleImageProcessor localSimpleImageProcessor = ((SimpleSubViewBinder)localSubViewBinder).getSimpleImageProcessor();
      GlobalImageCache.ImageState localImageState = GlobalImageCache.getImageState(this.digest);
      localImageState.none();
      localSimpleImageProcessor.show(this.subViewHolder, localImageState);
      gc();
    }
  }
  
  public void gc()
  {
    this.subViewHolder = null;
    this.digest = null;
    this.isGc = true;
  }
  
  public int getChangingConfigurations()
  {
    return super.getChangingConfigurations();
  }
  
  public int getGravity()
  {
    return super.getGravity();
  }
  
  public int getIntrinsicHeight()
  {
    return super.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return super.getIntrinsicWidth();
  }
  
  public int getOpacity()
  {
    return super.getOpacity();
  }
  
  public Shader.TileMode getTileModeX()
  {
    return super.getTileModeX();
  }
  
  public Shader.TileMode getTileModeY()
  {
    return super.getTileModeY();
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    super.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
  }
  
  public Drawable mutate()
  {
    return super.mutate();
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
  }
  
  public void setAlpha(int paramInt)
  {
    super.setAlpha(paramInt);
  }
  
  public void setAntiAlias(boolean paramBoolean)
  {
    super.setAntiAlias(paramBoolean);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    super.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    super.setFilterBitmap(paramBoolean);
  }
  
  public void setGravity(int paramInt)
  {
    super.setGravity(paramInt);
  }
  
  public void setTargetDensity(int paramInt)
  {
    super.setTargetDensity(paramInt);
  }
  
  public void setTargetDensity(Canvas paramCanvas)
  {
    super.setTargetDensity(paramCanvas);
  }
  
  public void setTargetDensity(DisplayMetrics paramDisplayMetrics)
  {
    super.setTargetDensity(paramDisplayMetrics);
  }
  
  public void setTileModeX(Shader.TileMode paramTileMode)
  {
    super.setTileModeX(paramTileMode);
  }
  
  public void setTileModeXY(Shader.TileMode paramTileMode1, Shader.TileMode paramTileMode2)
  {
    super.setTileModeXY(paramTileMode1, paramTileMode2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.adapter.MyBitmapDrawable
 * JD-Core Version:    0.7.0.1
 */