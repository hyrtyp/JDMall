package com.jingdong.common.utils.adapter;

import android.graphics.Bitmap;
import com.jingdong.common.utils.AdapterHelper;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.MySimpleAdapter.ImageProcessor;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;

public class ImageLoader
  implements HttpGroup.OnCommonListener
{
  private MySimpleAdapter.ImageProcessor imageProcessor;
  private GlobalImageCache.ImageState imageState;
  private Boolean manualGetImage = Boolean.valueOf(false);
  private SimpleBeanAdapter.SubViewHolder subViewHolder;
  
  public ImageLoader(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState, MySimpleAdapter.ImageProcessor paramImageProcessor)
  {
    this.imageState = paramImageState;
    this.imageProcessor = paramImageProcessor;
    this.subViewHolder = new SimpleBeanAdapter.SubViewHolder();
    this.subViewHolder.setAdapter(paramSubViewHolder.getAdapter());
    this.subViewHolder.setPosition(paramSubViewHolder.getPosition());
    this.subViewHolder.setSubViewId(paramSubViewHolder.getSubViewId());
    this.subViewHolder.setItemData(paramSubViewHolder.getItemData());
    this.subViewHolder.setSubData(paramSubViewHolder.getSubData());
    Object localObject = paramSubViewHolder.getMoreParameter("manualGetImage");
    if ((localObject != null) && ((localObject instanceof Boolean))) {
      this.manualGetImage = ((Boolean)localObject);
    }
  }
  
  public void gc()
  {
    this.imageState = null;
    this.imageProcessor = null;
    this.subViewHolder = null;
  }
  
  public void load()
  {
    GlobalImageCache.BitmapDigest localBitmapDigest = GlobalImageCache.getBitmapDigest(this.imageState);
    if (localBitmapDigest == null) {
      return;
    }
    this.imageState.loading();
    String str = localBitmapDigest.getUrl();
    SimpleBeanAdapter localSimpleBeanAdapter = this.subViewHolder.getAdapter();
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setEffect(0);
    localHttpSetting.setForeverCache(localSimpleBeanAdapter.isForeverCacheImage());
    localHttpSetting.setUrl(str);
    if ((!this.manualGetImage.booleanValue()) && (localSimpleBeanAdapter.allowNoImageAndIsNoImage()))
    {
      localHttpSetting.setCacheMode(1);
      this.subViewHolder.putMoreParameter("localLoadImage", Boolean.valueOf(true));
    }
    if (localSimpleBeanAdapter.isAssetsCache()) {
      localHttpSetting.setCacheMode(3);
    }
    localHttpSetting.setListener(this);
    localSimpleBeanAdapter.getAdapterHelper().getImageHttpGroup().add(localHttpSetting);
  }
  
  public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
  {
    try
    {
      GlobalImageCache.BitmapDigest localBitmapDigest = GlobalImageCache.getBitmapDigest(this.imageState);
      if (localBitmapDigest == null) {
        return;
      }
      Bitmap localBitmap = this.imageProcessor.create(ImageUtil.InputWay.createInputWay(paramHttpResponse), localBitmapDigest);
      if (localBitmap == null)
      {
        this.imageState.none();
        return;
      }
      this.imageState.success(localBitmap);
      this.subViewHolder.putMoreParameter("loaded", Boolean.valueOf(true));
      this.imageProcessor.show(this.subViewHolder, this.imageState);
      return;
    }
    finally
    {
      gc();
    }
  }
  
  public void onError(HttpGroup.HttpError paramHttpError)
  {
    try
    {
      this.imageState.failure();
      this.subViewHolder.putMoreParameter("loaded", Boolean.valueOf(true));
      this.imageProcessor.show(this.subViewHolder, this.imageState);
      return;
    }
    finally
    {
      gc();
    }
  }
  
  public void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.adapter.ImageLoader
 * JD-Core Version:    0.7.0.1
 */