package com.jingdong.app.mall.home.slide;

import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;

public class SalesPromotion
{
  private Button errorLoadingBut;
  private View errorView;
  private View layout = null;
  private ProgressBar loadingViewPb = null;
  
  public SalesPromotion()
  {
    init();
  }
  
  private void init()
  {
    this.errorView = this.layout.findViewById(2131493224);
    this.errorLoadingBut = ((Button)this.errorView.findViewById(2131493613));
    this.loadingViewPb = ((ProgressBar)this.layout.findViewById(2131494422));
  }
  
  public View getCustomView()
  {
    return this.layout;
  }
  
  public Button getLoadingButton()
  {
    return this.errorLoadingBut;
  }
  
  public ProgressBar getProgressBar()
  {
    return this.loadingViewPb;
  }
  
  public View getView()
  {
    return this.errorView;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.slide.SalesPromotion
 * JD-Core Version:    0.7.0.1
 */