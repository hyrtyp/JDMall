package com.jingdong.common.utils.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import com.jingdong.common.MyApplication;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.utils.AdapterHelper;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;

public class UIRunnable
  implements Runnable
{
  private static final Context CONTEXT = MyApplication.getInstance();
  private static final String TAG = UIRunnable.class.getSimpleName();
  private final String APP_NAME = StringUtil.app_name;
  private final String NEED_LONG_CLICK = StringUtil.need_long_click;
  private GlobalImageCache.ImageState imageState;
  private SimpleBeanAdapter.SubViewHolder subViewHolder;
  
  public UIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
  {
    this.subViewHolder = paramSubViewHolder;
    this.imageState = paramImageState;
  }
  
  private void gc()
  {
    this.subViewHolder = null;
    this.imageState = null;
  }
  
  protected View getItemView()
  {
    AdapterHelper localAdapterHelper = getSubViewHolder().getAdapter().getAdapterHelper();
    SimpleBeanAdapter.SubViewHolder localSubViewHolder = getSubViewHolder();
    Object localObject = localSubViewHolder.getAdapter().getItem(localSubViewHolder.getPosition());
    if ((localObject != null) && (localSubViewHolder.getItemData() == localObject)) {
      return localAdapterHelper.getItemView(getSubViewHolder().getPosition(), true);
    }
    return null;
  }
  
  protected SimpleBeanAdapter.SubViewHolder getSubViewHolder()
  {
    return this.subViewHolder;
  }
  
  public void run()
  {
    View localView1 = this.subViewHolder.getItemView();
    if (localView1 == null) {
      localView1 = getItemView();
    }
    if (localView1 == null)
    {
      gc();
      return;
    }
    View localView2 = localView1.findViewById(getSubViewHolder().getSubViewId());
    if ((localView2 == null) && (localView1.getId() == getSubViewHolder().getSubViewId())) {
      localView2 = localView1;
    }
    SimpleBeanAdapter localSimpleBeanAdapter = this.subViewHolder.getAdapter();
    ImageView localImageView;
    ExceptionDrawable localExceptionDrawable1;
    ExceptionDrawable localExceptionDrawable2;
    if ((localView2 instanceof ImageView))
    {
      localImageView = (ImageView)localView2;
      localExceptionDrawable1 = new ExceptionDrawable(CONTEXT, this.NEED_LONG_CLICK);
      localExceptionDrawable2 = new ExceptionDrawable(CONTEXT, this.APP_NAME);
      switch (this.imageState.getState())
      {
      }
    }
    for (;;)
    {
      gc();
      return;
      if (localSimpleBeanAdapter.allowNoImageAndIsNoImage())
      {
        localImageView.setImageDrawable(localExceptionDrawable1);
      }
      else
      {
        localImageView.setImageDrawable(localExceptionDrawable2);
        continue;
        if (localSimpleBeanAdapter.allowNoImageAndIsNoImage())
        {
          localImageView.setImageDrawable(localExceptionDrawable1);
        }
        else
        {
          localImageView.setImageDrawable(localExceptionDrawable2);
          continue;
          Boolean.valueOf(false);
          Object localObject = this.subViewHolder.getMoreParameter("localLoadImage");
          if ((localObject != null) && ((localObject instanceof Boolean))) {
            ((Boolean)localObject);
          }
          if (localSimpleBeanAdapter.allowNoImageAndIsNoImage())
          {
            localImageView.setImageDrawable(localExceptionDrawable1);
            localImageView.setOnLongClickListener(new ViewLongClickForNoImage(this.subViewHolder, GlobalImageCache.getBitmapDigest(this.imageState)));
          }
          else
          {
            localImageView.setImageDrawable(localExceptionDrawable2);
            continue;
            GlobalImageCache.BitmapDigest localBitmapDigest = GlobalImageCache.getBitmapDigest(this.imageState);
            Bitmap localBitmap = this.imageState.getBitmap();
            if ((localBitmap == null) || ((localBitmapDigest == null) && (localBitmap.isRecycled())))
            {
              localImageView.setImageDrawable(localExceptionDrawable2);
              this.imageState.none();
            }
            else
            {
              localImageView.setImageDrawable(new MyBitmapDrawable(localImageView.getResources(), this.subViewHolder, localBitmapDigest, localBitmap));
            }
          }
        }
      }
    }
  }
  
  private static class ViewLongClickForNoImage
    implements View.OnLongClickListener
  {
    private GlobalImageCache.BitmapDigest bitmapDigest;
    private SimpleImageProcessor imageProcessor;
    private SimpleBeanAdapter.SubViewHolder subViewHolder;
    
    public ViewLongClickForNoImage(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.BitmapDigest paramBitmapDigest)
    {
      this.subViewHolder = paramSubViewHolder;
      this.bitmapDigest = paramBitmapDigest;
      this.imageProcessor = ((SimpleSubViewBinder)paramSubViewHolder.getAdapter().getViewBinder()).getSimpleImageProcessor();
    }
    
    private void gc()
    {
      this.subViewHolder = null;
      this.bitmapDigest = null;
      this.imageProcessor = null;
    }
    
    public boolean onLongClick(View paramView)
    {
      paramView.setLongClickable(false);
      if (this.subViewHolder != null)
      {
        this.subViewHolder.putMoreParameter("manualGetImage", Boolean.valueOf(true));
        this.imageProcessor.show(this.subViewHolder, GlobalImageCache.getImageState(this.bitmapDigest));
      }
      gc();
      return true;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.adapter.UIRunnable
 * JD-Core Version:    0.7.0.1
 */