package com.jingdong.app.mall.utils.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.jingdong.common.utils.DPIUtil;

public class TriangleLineDrawable
  extends Drawable
{
  private Context mContext;
  
  public TriangleLineDrawable(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public void draw(Canvas paramCanvas)
  {
    paramCanvas.drawColor(-1);
    Rect localRect = getBounds();
    int i = localRect.right - localRect.width() / 2;
    int j = localRect.bottom - DPIUtil.dip2px(1.0F);
    int k = localRect.top + DPIUtil.dip2px(1.0F);
    Point localPoint1 = new Point(i - DPIUtil.dip2px(5.0F), j);
    Point localPoint2 = new Point(i, j - DPIUtil.dip2px(5.0F));
    Point localPoint3 = new Point(i + DPIUtil.dip2px(5.0F), j);
    Paint localPaint1 = new Paint();
    localPaint1.setColor(this.mContext.getResources().getColor(2131296284));
    localPaint1.setStyle(Paint.Style.STROKE);
    localPaint1.setStrokeWidth(DPIUtil.dip2px(1.0F));
    Paint localPaint2 = new Paint();
    localPaint2.setColor(this.mContext.getResources().getColor(2131296290));
    localPaint2.setStyle(Paint.Style.FILL);
    Path localPath1 = new Path();
    localPath1.moveTo(localRect.left, j);
    localPath1.lineTo(localPoint1.x, localPoint1.y);
    localPath1.lineTo(localPoint2.x, localPoint2.y);
    localPath1.lineTo(localPoint3.x, localPoint3.y);
    localPath1.lineTo(localRect.right, j);
    Path localPath2 = new Path();
    localPath2.moveTo(localRect.left, k);
    localPath2.lineTo(localRect.right, k);
    paramCanvas.drawPath(localPath1, localPaint2);
    paramCanvas.drawRect(new Rect(localRect.left, j, localRect.right, localRect.bottom), localPaint2);
    paramCanvas.drawRect(new Rect(localRect.left, localRect.top, localRect.right, k), localPaint2);
    paramCanvas.drawPath(localPath1, localPaint1);
    paramCanvas.drawPath(localPath2, localPaint1);
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.TriangleLineDrawable
 * JD-Core Version:    0.7.0.1
 */