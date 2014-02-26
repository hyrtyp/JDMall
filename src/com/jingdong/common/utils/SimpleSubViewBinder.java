package com.jingdong.common.utils;

import android.net.Uri;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.TextView;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;

public class SimpleSubViewBinder
  implements SubViewBinder
{
  private SimpleImageProcessor imageProcessor;
  
  public SimpleSubViewBinder(SimpleImageProcessor paramSimpleImageProcessor)
  {
    this.imageProcessor = paramSimpleImageProcessor;
  }
  
  public boolean bind(SimpleBeanAdapter.SubViewHolder paramSubViewHolder)
  {
    if (subBind(paramSubViewHolder)) {
      return true;
    }
    View localView = paramSubViewHolder.getSubView();
    Object localObject = paramSubViewHolder.getSubData();
    if (((localView instanceof Checkable)) && ((localObject instanceof Boolean)))
    {
      ((Checkable)localView).setChecked(((Boolean)localObject).booleanValue());
      return true;
    }
    if (((localView instanceof TextView)) && ((localObject instanceof CharSequence)))
    {
      ((TextView)localView).setText((CharSequence)localObject);
      return true;
    }
    if ((localView instanceof ImageView))
    {
      if ((localObject instanceof Integer))
      {
        ((ImageView)localView).setImageResource(((Integer)localObject).intValue());
        return true;
      }
      if ((localObject instanceof String)) {
        try
        {
          ((ImageView)localView).setImageResource(Integer.parseInt((String)localObject));
          return true;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          String str = (String)localObject;
          if (!str.startsWith("http"))
          {
            ((ImageView)localView).setImageURI(Uri.parse(str));
            return true;
          }
          GlobalImageCache.BitmapDigest localBitmapDigest = new GlobalImageCache.BitmapDigest(str);
          localBitmapDigest.setPosition(paramSubViewHolder.getPosition());
          ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
          if ((localLayoutParams == null) || (localLayoutParams.width < 1) || (localLayoutParams.height < 1))
          {
            localView.measure(DPIUtil.dip2px(666.0F), DPIUtil.dip2px(666.0F));
            localLayoutParams = localView.getLayoutParams();
          }
          if (localLayoutParams.width > 0) {
            localBitmapDigest.setWidth(localLayoutParams.width);
          }
          if (localLayoutParams.height > 0) {
            localBitmapDigest.setHeight(localLayoutParams.height);
          }
          GlobalImageCache.ImageState localImageState = GlobalImageCache.getImageState(localBitmapDigest);
          this.imageProcessor.show(paramSubViewHolder, localImageState);
          return true;
        }
      }
    }
    return false;
  }
  
  public SimpleImageProcessor getSimpleImageProcessor()
  {
    return this.imageProcessor;
  }
  
  protected boolean subBind(SimpleBeanAdapter.SubViewHolder paramSubViewHolder)
  {
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.SimpleSubViewBinder
 * JD-Core Version:    0.7.0.1
 */