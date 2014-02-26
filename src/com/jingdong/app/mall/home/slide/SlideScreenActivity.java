package com.jingdong.app.mall.home.slide;

import android.content.Intent;
import android.os.Bundle;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.common.entity.HomeFloorElement;

public class SlideScreenActivity
  extends MyActivity
{
  public static final String KEY_DATA = "data";
  private HomeFloorElement element = null;
  private SlideScreen slideScreen;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      this.element = ((HomeFloorElement)getIntent().getSerializableExtra("data"));
      if (this.element == null)
      {
        finish();
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (Log.E) {
          localException.printStackTrace();
        }
      }
      this.slideScreen = new SlideScreen(this);
      SalesPromotion localSalesPromotion = new SalesPromotion();
      this.slideScreen.showScreen(this.element, localSalesPromotion);
      setContentView(localSalesPromotion.getCustomView());
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.slideScreen != null) {}
    try
    {
      this.slideScreen.onResume();
      return;
    }
    catch (Exception localException)
    {
      while (!Log.E) {}
      localException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.slide.SlideScreenActivity
 * JD-Core Version:    0.7.0.1
 */