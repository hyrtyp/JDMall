package com.jingdong.app.mall.home;

import android.view.View;
import com.jingdong.app.mall.utils.MyActivity;

public abstract interface JDComponents
{
  public abstract void createComponent();
  
  public abstract void onResume();
  
  public abstract void setContext(MyActivity paramMyActivity);
  
  public abstract void setView(View paramView);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.JDComponents
 * JD-Core Version:    0.7.0.1
 */