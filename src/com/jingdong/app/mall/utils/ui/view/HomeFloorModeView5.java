package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.common.entity.HomeFloorElement;
import com.jingdong.common.utils.DPIUtil;
import java.util.ArrayList;

public class HomeFloorModeView5
  extends HomeFloorModeBaseView
{
  private final String TAG = "HomeFloorModeView5";
  private int height = 561 * DPIUtil.getHeight() / 1280;
  private int imageMargin = 4 * DPIUtil.getHeight() / 1280;
  private int imagePadding = 0;
  private LinearLayout layout;
  private int layoutHeight = 145 * DPIUtil.getHeight() / 1280;
  
  public HomeFloorModeView5(Context paramContext)
  {
    super(paramContext);
  }
  
  public HomeFloorModeView5(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private ImageView generatorImageView(HomeFloorElement paramHomeFloorElement, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ImageView localImageView = new ImageView(getContext());
    localImageView.setBackgroundResource(2130838266);
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    localImageView.setPadding(this.imagePadding, this.imagePadding, this.imagePadding, 0);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.weight = 1.0F;
    localLayoutParams.bottomMargin = paramInt5;
    localLayoutParams.topMargin = paramInt3;
    localLayoutParams.rightMargin = paramInt4;
    localLayoutParams.leftMargin = paramInt2;
    localImageView.setLayoutParams(localLayoutParams);
    initImageView(this.activity, localImageView, paramHomeFloorElement, true);
    return localImageView;
  }
  
  private void initView(ArrayList<HomeFloorElement> paramArrayList)
  {
    if (Log.D) {
      Log.d("HomeFloorModeView5", "initView() list: " + paramArrayList);
    }
    int i = 0;
    if (i >= paramArrayList.size()) {
      return;
    }
    HomeFloorElement localHomeFloorElement = (HomeFloorElement)paramArrayList.get(i);
    if (localHomeFloorElement == null) {}
    for (;;)
    {
      i++;
      break;
      int j = this.viewList.size();
      ImageView localImageView1 = null;
      if (j > i) {
        localImageView1 = (ImageView)this.viewList.get(i);
      }
      if (localImageView1 != null)
      {
        initImageView(this.activity, localImageView1, localHomeFloorElement, false);
        continue;
      }
      ImageView localImageView2;
      if (i % 2 == 0)
      {
        this.layout = new LinearLayout(getContext());
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, this.layoutHeight);
        localLayoutParams.bottomMargin = (2 * this.imageMargin);
        this.layout.setLayoutParams(localLayoutParams);
        this.layout.setOrientation(0);
        addView(this.layout);
        localImageView2 = generatorImageView(localHomeFloorElement, i, 0, 0, this.imageMargin, 0);
        if (i != -1 + paramArrayList.size()) {}
      }
      try
      {
        ((ViewGroup.MarginLayoutParams)this.layout.getLayoutParams()).bottomMargin = 0;
        this.viewList.add(localImageView2);
        if (this.layout == null) {
          continue;
        }
        this.layout.addView(localImageView2);
        continue;
        int k = this.imageMargin;
        localImageView2 = generatorImageView(localHomeFloorElement, i, k, 0, 0, 0);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          if (Log.E) {
            localException.printStackTrace();
          }
        }
      }
    }
  }
  
  protected int getPriority()
  {
    return 105;
  }
  
  protected void initLayoutParams()
  {
    super.initLayoutParams();
    getLayoutParams().height = this.height;
    setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), 0);
  }
  
  protected void refreshUI(ArrayList<HomeFloorElement> paramArrayList)
  {
    initView(paramArrayList);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.HomeFloorModeView5
 * JD-Core Version:    0.7.0.1
 */