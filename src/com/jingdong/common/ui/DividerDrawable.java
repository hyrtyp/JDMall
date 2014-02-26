package com.jingdong.common.ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;

public class DividerDrawable
  extends Drawable
{
  public static final int HORIZONTAL = 0;
  public static final int VERTICAL = 1;
  private int orientation;
  
  public DividerDrawable(int paramInt)
  {
    this.orientation = paramInt;
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = paramCanvas.getClipBounds();
    Paint localPaint = new Paint();
    if (this.orientation == 1)
    {
      localPaint.setShader(new LinearGradient(localRect.left, localRect.top, localRect.right, 1 + localRect.top, new int[] { 592137, -16185079, 592137 }, null, Shader.TileMode.REPEAT));
      paramCanvas.drawRect(localRect.left, localRect.top, localRect.right, 1 + localRect.top, localPaint);
      localPaint.setShader(new LinearGradient(localRect.left, 1 + localRect.top, localRect.right, 2 + localRect.top, new int[] { 8026746, -8750470, 8026746 }, null, Shader.TileMode.REPEAT));
      paramCanvas.drawRect(localRect.left, 1 + localRect.top, localRect.right, 2 + localRect.top, localPaint);
      return;
    }
    LinearGradient localLinearGradient = new LinearGradient(localRect.left, localRect.top, 1 + localRect.left, localRect.bottom, new int[] { 592137, -16185079, 592137 }, null, Shader.TileMode.REPEAT);
    localPaint.setShader(localLinearGradient);
    paramCanvas.drawRect(localRect.left, localRect.top, 1 + localRect.left, localRect.bottom, localPaint);
    localPaint.setShader(new LinearGradient(1 + localRect.left, localRect.top, 2 + localRect.left, localRect.bottom, new int[] { 8026746, -8750470, 8026746 }, null, Shader.TileMode.REPEAT));
    paramCanvas.drawRect(1 + localRect.left, localRect.top, 2 + localRect.left, localRect.bottom, localPaint);
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.DividerDrawable
 * JD-Core Version:    0.7.0.1
 */