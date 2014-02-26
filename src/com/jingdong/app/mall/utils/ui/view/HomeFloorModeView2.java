package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.common.entity.HomeFloorElement;
import com.jingdong.common.utils.DPIUtil;
import java.util.ArrayList;

public class HomeFloorModeView2
  extends HomeFloorModeBaseView
{
  private final String TAG = "HomeFloorModeView2";
  private int height = 478 * DPIUtil.getHeight() / 1280;
  private int imagePadding = 0;
  private LinearLayout layout;
  private int layoutHeight = 390 * DPIUtil.getHeight() / 1280;
  private LinearLayout leftLayout;
  
  public HomeFloorModeView2(Context paramContext)
  {
    super(paramContext);
  }
  
  public HomeFloorModeView2(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private ImageView generatorImageView(HomeFloorElement paramHomeFloorElement)
  {
    ImageView localImageView = new ImageView(getContext());
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    localImageView.setPadding(this.imagePadding, this.imagePadding, this.imagePadding, this.imagePadding);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.weight = 1.0F;
    localImageView.setLayoutParams(localLayoutParams);
    initImageView(this.activity, localImageView, paramHomeFloorElement, true);
    return localImageView;
  }
  
  private void initView(ArrayList<HomeFloorElement> paramArrayList)
  {
    if (Log.D) {
      Log.d("HomeFloorModeView2", "initView() list: " + paramArrayList);
    }
    getHeader().setPadding(this.paddingHorizontal, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    if (this.layout == null)
    {
      this.layout = new LinearLayout(getContext());
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, this.layoutHeight);
      this.layout.setLayoutParams(localLayoutParams2);
      this.layout.setOrientation(0);
    }
    if (this.leftLayout == null)
    {
      this.leftLayout = new LinearLayout(getContext());
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -1);
      localLayoutParams1.weight = 1.0F;
      this.leftLayout.setLayoutParams(localLayoutParams1);
      this.leftLayout.setOrientation(1);
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
      ImageView localImageView = null;
      if (j > i) {
        localImageView = (ImageView)this.viewList.get(i);
      }
      if (localImageView != null)
      {
        initImageView(this.activity, localImageView, localHomeFloorElement, false);
      }
      else
      {
        if (i == 0)
        {
          if (this.layout.getParent() == null)
          {
            addView(getHorizontalDivider());
            addView(this.layout);
          }
          if (this.leftLayout.getParent() == null) {
            this.layout.addView(this.leftLayout);
          }
          localImageView = generatorImageView(localHomeFloorElement);
          this.leftLayout.addView(localImageView);
          this.leftLayout.addView(getHorizontalDivider());
        }
        if (i == 1)
        {
          localImageView = generatorImageView(localHomeFloorElement);
          this.leftLayout.addView(localImageView);
        }
        if (i == 2)
        {
          this.layout.addView(getVerticalDivider());
          localImageView = generatorImageView(localHomeFloorElement);
          this.layout.addView(localImageView);
        }
        this.viewList.add(localImageView);
      }
    }
  }
  
  protected int getImageRoundPx()
  {
    return -1;
  }
  
  protected int getPriority()
  {
    return 102;
  }
  
  protected void initLayoutParams()
  {
    super.initLayoutParams();
    getLayoutParams().height = this.height;
    setPadding(0, 0, 0, 0);
  }
  
  protected void refreshUI(ArrayList<HomeFloorElement> paramArrayList)
  {
    initView(paramArrayList);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.HomeFloorModeView2
 * JD-Core Version:    0.7.0.1
 */