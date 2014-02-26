package com.jingdong.common.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.jingdong.common.MyApplication;
import com.jingdong.common.utils.DPIUtil;

public class ExceptionDrawable
  extends Drawable
{
  private static Bitmap bitmap = null;
  private static int height;
  private static int width;
  protected Paint paint = new Paint();
  private final String text;
  
  public ExceptionDrawable(Context paramContext, String paramString)
  {
    this.paint.setColor(-7829368);
    this.paint.setStyle(Paint.Style.FILL);
    this.paint.setTextSize(DPIUtil.dip2px(12.0F));
    this.paint.setTextAlign(Paint.Align.CENTER);
    this.paint.setAntiAlias(true);
    this.text = paramString;
    if (bitmap == null) {}
    try
    {
      bitmap = ((BitmapDrawable)MyApplication.getInstance().getDefalutDrawble()).getBitmap();
      width = bitmap.getWidth();
      height = bitmap.getHeight();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    float f1 = localRect.right - localRect.width() / 2;
    float f2 = localRect.bottom - localRect.height() / 2;
    paramCanvas.drawText(this.text, f1, f2, this.paint);
    if (bitmap != null) {
      paramCanvas.drawBitmap(bitmap, f1 - width / 2, f2 - height / 2 + DPIUtil.dip2px(10.0F), this.paint);
    }
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.ExceptionDrawable
 * JD-Core Version:    0.7.0.1
 */