package com.jingdong.app.mall.utils;

import android.view.View;
import android.widget.AdapterView;
import com.jingdong.common.utils.AdapterHelper;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import com.jingdong.common.utils.adapter.UIRunnable;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;

public class CirculationSimpleImageProcessor
  extends SimpleImageProcessor
{
  protected UIRunnable provideUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
  {
    return new CirculationUIRunnable(paramSubViewHolder, paramImageState);
  }
  
  private class CirculationUIRunnable
    extends UIRunnable
  {
    public CirculationUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
    {
      super(paramImageState);
    }
    
    protected View getItemView()
    {
      SimpleBeanAdapter localSimpleBeanAdapter = getSubViewHolder().getAdapter();
      AdapterView localAdapterView = localSimpleBeanAdapter.getAdapterHelper().getAdapterView();
      if ((localSimpleBeanAdapter instanceof CirculationGalleryAdapter))
      {
        CirculationGalleryAdapter localCirculationGalleryAdapter = (CirculationGalleryAdapter)localSimpleBeanAdapter;
        int i = localCirculationGalleryAdapter.getActualCount();
        int j = 0;
        if (i != 0) {
          j = localAdapterView.getFirstVisiblePosition() % localCirculationGalleryAdapter.getActualCount();
        }
        int k = localAdapterView.getChildCount();
        int m = getSubViewHolder().getPosition();
        if (m < j) {
          m += localCirculationGalleryAdapter.getActualCount();
        }
        Integer localInteger = AdapterHelper.getItemViewIndex(j, k, m);
        if (localInteger != null) {
          return localAdapterView.getChildAt(localInteger.intValue());
        }
      }
      return null;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.CirculationSimpleImageProcessor
 * JD-Core Version:    0.7.0.1
 */