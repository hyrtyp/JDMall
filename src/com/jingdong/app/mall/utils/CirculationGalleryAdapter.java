package com.jingdong.app.mall.utils;

import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Gallery;
import com.jingdong.app.mall.R.styleable;
import com.jingdong.app.mall.plug.PlugSimpleAdapter;
import com.jingdong.common.utils.SimpleSubViewBinder;
import java.util.List;

public class CirculationGalleryAdapter
  extends PlugSimpleAdapter
{
  private List<?> beanList;
  
  public CirculationGalleryAdapter(MyActivity paramMyActivity, List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt, boolean paramBoolean)
  {
    super(paramMyActivity, paramList, paramInt, paramArrayOfString, paramArrayOfInt, paramBoolean);
    setViewBinder(new SimpleSubViewBinder(new CirculationSimpleImageProcessor()));
    this.beanList = paramList;
    paramMyActivity.obtainStyledAttributes(R.styleable.gallery_bg).recycle();
  }
  
  public int getActualCount()
  {
    if (this.beanList == null) {
      return 0;
    }
    return this.beanList.size();
  }
  
  public int getCount()
  {
    if (getActualCount() <= 3) {
      return getActualCount();
    }
    return 2147483647;
  }
  
  public Object getItem(int paramInt)
  {
    if ((this.beanList == null) || (this.beanList.size() < 1)) {
      return null;
    }
    return this.beanList.get(toActualPosition(paramInt));
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return super.getView(toActualPosition(paramInt), paramView, paramViewGroup);
  }
  
  public void init(Gallery paramGallery)
  {
    paramGallery.setSelection(Math.abs(getCount() / 2));
  }
  
  public int toActualPosition(int paramInt)
  {
    return paramInt % getActualCount();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.CirculationGalleryAdapter
 * JD-Core Version:    0.7.0.1
 */