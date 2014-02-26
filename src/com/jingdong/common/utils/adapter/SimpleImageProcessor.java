package com.jingdong.common.utils.adapter;

import android.graphics.Bitmap;
import android.widget.AdapterView;
import com.jingdong.common.MyApplication;
import com.jingdong.common.utils.AdapterHelper;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.MySimpleAdapter.ImageProcessor;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;

public class SimpleImageProcessor
  implements MySimpleAdapter.ImageProcessor
{
  public Bitmap create(ImageUtil.InputWay paramInputWay, GlobalImageCache.BitmapDigest paramBitmapDigest)
  {
    return ImageUtil.createBitmap(paramInputWay, paramBitmapDigest);
  }
  
  protected void loadImage(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
  {
    new ImageLoader(paramSubViewHolder, paramImageState, this).load();
  }
  
  protected UIRunnable provideUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
  {
    return new UIRunnable(paramSubViewHolder, paramImageState);
  }
  
  public void show(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
  {
    if ((paramSubViewHolder.getSubView() == null) && (paramSubViewHolder.getAdapter().getAdapterHelper().getAdapterView().getChildCount() < 1)) {}
    try
    {
      Thread.sleep(200L);
      label30:
      Thread localThread = MyApplication.getInstance().getUiThread();
      if (Thread.currentThread() == localThread) {
        provideUIRunnable(paramSubViewHolder, paramImageState).run();
      }
      for (;;)
      {
        Object localObject = paramSubViewHolder.getMoreParameter("loaded");
        boolean bool1 = false;
        if (localObject != null)
        {
          boolean bool2 = localObject instanceof Boolean;
          bool1 = false;
          if (bool2) {
            bool1 = ((Boolean)localObject).booleanValue();
          }
        }
        if (bool1) {
          paramSubViewHolder.putMoreParameter("loaded", Boolean.valueOf(false));
        }
        if (((paramImageState.getState() == 0) || (2 == paramImageState.getState())) && (!bool1)) {
          loadImage(paramSubViewHolder, paramImageState);
        }
        return;
        paramSubViewHolder.getAdapter().UIWorkCentralized(provideUIRunnable(paramSubViewHolder, paramImageState));
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      break label30;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.adapter.SimpleImageProcessor
 * JD-Core Version:    0.7.0.1
 */