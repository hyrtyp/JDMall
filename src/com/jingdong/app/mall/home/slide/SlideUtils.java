package com.jingdong.app.mall.home.slide;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.common.utils.DPIUtil;

public class SlideUtils
{
  public static void addDivider(ViewGroup paramViewGroup, LinearLayout.LayoutParams paramLayoutParams, int paramInt)
  {
    ImageView localImageView = new ImageView(MyApplication.getInstance().getApplicationContext());
    localImageView.setBackgroundResource(paramInt);
    paramViewGroup.addView(localImageView, paramLayoutParams);
  }
  
  public static LinearLayout.LayoutParams getLayoutParamsValue(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, DPIUtil.dip2px(1.0F));
    localLayoutParams.setMargins(paramInt1, paramInt2, paramInt3, paramInt4);
    return localLayoutParams;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.slide.SlideUtils
 * JD-Core Version:    0.7.0.1
 */