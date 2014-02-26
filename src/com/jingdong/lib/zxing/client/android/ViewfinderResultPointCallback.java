package com.jingdong.lib.zxing.client.android;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

final class ViewfinderResultPointCallback
  implements ResultPointCallback
{
  private final ViewfinderView viewfinderView;
  
  ViewfinderResultPointCallback(ViewfinderView paramViewfinderView)
  {
    this.viewfinderView = paramViewfinderView;
  }
  
  public void foundPossibleResultPoint(ResultPoint paramResultPoint)
  {
    this.viewfinderView.addPossibleResultPoint(paramResultPoint);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.ViewfinderResultPointCallback
 * JD-Core Version:    0.7.0.1
 */