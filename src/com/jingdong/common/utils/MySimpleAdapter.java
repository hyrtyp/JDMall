package com.jingdong.common.utils;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.jingdong.common.frame.IDestroyListener;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.frame.IPauseListener;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import java.util.List;

public class MySimpleAdapter
  extends SimpleBeanAdapter
  implements IDestroyListener, IPauseListener, IResumeListener
{
  public static final int THUMB_TYPE_CENTER = 1;
  public static final int THUMB_TYPE_NONE;
  
  public MySimpleAdapter(IMyActivity paramIMyActivity, List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    this(paramIMyActivity, paramList, paramInt, paramArrayOfString, paramArrayOfInt, true);
  }
  
  public MySimpleAdapter(IMyActivity paramIMyActivity, List<?> paramList, int paramInt1, String[] paramArrayOfString, int[] paramArrayOfInt, int paramInt2, float paramFloat1, float paramFloat2)
  {
    this(paramIMyActivity, paramList, paramInt1, paramArrayOfString, paramArrayOfInt);
  }
  
  public MySimpleAdapter(IMyActivity paramIMyActivity, List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt, boolean paramBoolean)
  {
    super(paramIMyActivity.getThisActivity(), paramList, paramInt, paramArrayOfString, paramArrayOfInt);
    if (paramBoolean)
    {
      paramIMyActivity.addDestroyListener(this);
      paramIMyActivity.addPauseListener(this);
      paramIMyActivity.addResumeListener(this);
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return super.getView(paramInt, paramView, paramViewGroup);
  }
  
  public boolean isNoImage()
  {
    return (isAllowNoImage()) && (NoImageUtils.needNoImage());
  }
  
  public void onDestroy()
  {
    gc();
  }
  
  public void onPause() {}
  
  public void onResume()
  {
    notifyDataSetChanged();
  }
  
  public void setNextPageLoader(NextPageLoader paramNextPageLoader) {}
  
  public static abstract interface ImageProcessor
  {
    public abstract Bitmap create(ImageUtil.InputWay paramInputWay, GlobalImageCache.BitmapDigest paramBitmapDigest);
    
    public abstract void show(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.MySimpleAdapter
 * JD-Core Version:    0.7.0.1
 */