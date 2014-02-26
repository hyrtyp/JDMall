package com.jingdong.app.mall;

import android.os.Bundle;
import android.view.Window;

public class WebActivityLandscape
  extends WebActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    getWindow().setFlags(1024, 1024);
    requestWindowFeature(1);
    super.onCreate(paramBundle);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.WebActivityLandscape
 * JD-Core Version:    0.7.0.1
 */