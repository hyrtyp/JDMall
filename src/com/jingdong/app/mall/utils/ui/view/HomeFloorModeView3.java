package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout.LayoutParams;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.common.entity.HomeFloorElement;
import com.jingdong.common.utils.DPIUtil;
import java.util.ArrayList;

public class HomeFloorModeView3
  extends HomeFloorModeBaseView
{
  private final String TAG = "HomeFloorModeView3";
  private int imageHeight = 295 * DPIUtil.getHeight() / 1280;
  private int imagePadding = 0;
  
  public HomeFloorModeView3(Context paramContext)
  {
    super(paramContext);
  }
  
  public HomeFloorModeView3(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void initView(HomeFloorElement paramHomeFloorElement)
  {
    if (Log.D) {
      Log.d("HomeFloorModeView3", "initView() element: " + paramHomeFloorElement);
    }
    if (paramHomeFloorElement == null) {
      return;
    }
    int i = this.viewList.size();
    ImageView localImageView1 = null;
    if (i > 0) {
      localImageView1 = (ImageView)this.viewList.get(0);
    }
    if (localImageView1 != null)
    {
      initImageView(this.activity, localImageView1, paramHomeFloorElement, false);
      return;
    }
    ImageView localImageView2 = new ImageView(getContext());
    localImageView2.setLayoutParams(new LinearLayout.LayoutParams(-1, this.imageHeight));
    localImageView2.setPadding(this.imagePadding, this.imagePadding, this.imagePadding, 0);
    localImageView2.setBackgroundResource(2130838266);
    localImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
    addView(localImageView2);
    this.viewList.add(localImageView2);
    initImageView(this.activity, localImageView2, paramHomeFloorElement, true);
  }
  
  protected int getPriority()
  {
    return 103;
  }
  
  protected void refreshUI(ArrayList<HomeFloorElement> paramArrayList)
  {
    if (Log.D) {
      Log.d("HomeFloorModeView3", "refreshUI() list: " + paramArrayList);
    }
    if ((paramArrayList == null) || (paramArrayList.size() < 1)) {}
    HomeFloorElement localHomeFloorElement;
    do
    {
      return;
      localHomeFloorElement = (HomeFloorElement)paramArrayList.get(0);
      if (Log.D) {
        Log.d("HomeFloorModeView3", "refreshUI() element: " + localHomeFloorElement);
      }
    } while (localHomeFloorElement == null);
    initView(localHomeFloorElement);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.HomeFloorModeView3
 * JD-Core Version:    0.7.0.1
 */