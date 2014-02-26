package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.common.entity.HomeFloorElement;
import com.jingdong.common.utils.DPIUtil;
import java.util.ArrayList;

public class HomeFloorModeView4
  extends HomeFloorModeBaseView
{
  private final String TAG = "HomeFloorModeView4";
  private int height;
  private int imageMargin;
  private int imagePadding;
  private LinearLayout layout;
  private int layoutHeight;
  protected int paddingHorizontal;
  private LinearLayout rightLayout;
  
  public HomeFloorModeView4(Context paramContext)
  {
    super(paramContext);
    int i;
    int j;
    if (DPIUtil.getHeight() == 960)
    {
      i = 314;
      this.height = i;
      if (DPIUtil.getHeight() != 960) {
        break label100;
      }
      j = 11;
      label41:
      this.paddingHorizontal = j;
      if (DPIUtil.getHeight() != 960) {
        break label114;
      }
    }
    label100:
    label114:
    for (int k = 224;; k = 295 * DPIUtil.getHeight() / 1280)
    {
      this.layoutHeight = k;
      this.imagePadding = 0;
      this.imageMargin = (4 * DPIUtil.getHeight() / 1280);
      return;
      i = 406 * DPIUtil.getHeight() / 1280;
      break;
      j = 16 * DPIUtil.getWidth() / 720;
      break label41;
    }
  }
  
  public HomeFloorModeView4(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int i;
    int j;
    if (DPIUtil.getHeight() == 960)
    {
      i = 314;
      this.height = i;
      if (DPIUtil.getHeight() != 960) {
        break label103;
      }
      j = 11;
      label43:
      this.paddingHorizontal = j;
      if (DPIUtil.getHeight() != 960) {
        break label118;
      }
    }
    label103:
    label118:
    for (int k = 224;; k = 295 * DPIUtil.getHeight() / 1280)
    {
      this.layoutHeight = k;
      this.imagePadding = 0;
      this.imageMargin = (4 * DPIUtil.getHeight() / 1280);
      return;
      i = 406 * DPIUtil.getHeight() / 1280;
      break;
      j = 16 * DPIUtil.getWidth() / 720;
      break label43;
    }
  }
  
  private ImageView generatorImageView(HomeFloorElement paramHomeFloorElement, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ImageView localImageView = new ImageView(getContext());
    localImageView.setBackgroundResource(2130838266);
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    localImageView.setPadding(this.imagePadding, this.imagePadding, this.imagePadding, 0);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.weight = 1.0F;
    localLayoutParams.bottomMargin = paramInt4;
    localLayoutParams.topMargin = paramInt2;
    localLayoutParams.rightMargin = paramInt3;
    localLayoutParams.leftMargin = paramInt1;
    localImageView.setLayoutParams(localLayoutParams);
    initImageView(this.activity, localImageView, paramHomeFloorElement, true);
    return localImageView;
  }
  
  private void initView(ArrayList<HomeFloorElement> paramArrayList)
  {
    getLayoutParams().height = this.height;
    if (Log.D) {
      Log.d("HomeFloorModeView4", "initView() list: " + paramArrayList);
    }
    if (this.layout == null)
    {
      this.layout = new LinearLayout(getContext());
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, this.layoutHeight);
      this.layout.setLayoutParams(localLayoutParams2);
      this.layout.setOrientation(0);
    }
    if (this.rightLayout == null)
    {
      this.rightLayout = new LinearLayout(getContext());
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -1);
      localLayoutParams1.weight = 1.0F;
      this.rightLayout.setLayoutParams(localLayoutParams1);
      this.rightLayout.setOrientation(1);
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
          if (this.layout.getParent() == null) {
            addView(this.layout);
          }
          localImageView = generatorImageView(localHomeFloorElement, 0, 0, this.imageMargin, 0);
          this.layout.addView(localImageView);
          if (this.rightLayout.getParent() == null) {
            this.layout.addView(this.rightLayout);
          }
        }
        if (i == 1)
        {
          localImageView = generatorImageView(localHomeFloorElement, this.imageMargin, 0, 0, this.imageMargin);
          this.rightLayout.addView(localImageView);
        }
        if (i == 2)
        {
          localImageView = generatorImageView(localHomeFloorElement, this.imageMargin, this.imageMargin, 0, 0);
          this.rightLayout.addView(localImageView);
        }
        this.viewList.add(localImageView);
      }
    }
  }
  
  protected int getPriority()
  {
    return 104;
  }
  
  protected void refreshUI(ArrayList<HomeFloorElement> paramArrayList)
  {
    initView(paramArrayList);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.HomeFloorModeView4
 * JD-Core Version:    0.7.0.1
 */