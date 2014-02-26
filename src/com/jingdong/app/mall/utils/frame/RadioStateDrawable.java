package com.jingdong.app.mall.utils.frame;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import com.jingdong.common.utils.DPIUtil;

public class RadioStateDrawable
  extends Drawable
{
  public static final int SHADE_BLUE = 1;
  public static final int SHADE_GRAY = 0;
  public static final int SHADE_GREEN = 4;
  public static final int SHADE_MAGENTA = 2;
  public static final int SHADE_ORANGE = 6;
  public static final int SHADE_RED = 5;
  public static final int SHADE_YELLOW = 3;
  public static int screen_width;
  public static int width;
  private Bitmap bitmap;
  Context context;
  private boolean highlight;
  private Bitmap highlightBitmap;
  private String label;
  private Shader shader;
  private TabBarButton.StateController stateController;
  private Shader textShader;
  
  public RadioStateDrawable(Context paramContext, int paramInt1, String paramString, boolean paramBoolean, int paramInt2)
  {
    this.highlight = paramBoolean;
    this.context = paramContext;
    this.label = paramString;
    this.bitmap = BitmapFactory.decodeStream(paramContext.getResources().openRawResource(paramInt1));
    setShade(paramInt2);
    this.highlightBitmap = BitmapFactory.decodeResource(paramContext.getResources(), 2130837751);
  }
  
  public RadioStateDrawable(Context paramContext, int paramInt1, String paramString, boolean paramBoolean, int paramInt2, int paramInt3)
  {
    this.highlight = paramBoolean;
    this.context = paramContext;
    this.label = paramString;
    this.bitmap = BitmapFactory.decodeStream(paramContext.getResources().openRawResource(paramInt1));
    int[] arrayOfInt = { paramInt2, paramInt3 };
    this.shader = new LinearGradient(0.0F, 0.0F, 0.0F, this.bitmap.getHeight(), arrayOfInt, null, Shader.TileMode.MIRROR);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i = this.context.getResources().getDimensionPixelSize(2131427562);
    int j = (width - i) / 2;
    int k = DPIUtil.dip2px(9.0F);
    paramCanvas.drawColor(0);
    Paint localPaint1 = new Paint();
    localPaint1.setColor(-1);
    localPaint1.setStyle(Paint.Style.FILL);
    localPaint1.setTextSize(DPIUtil.dip2px(13.0F));
    localPaint1.setTypeface(Typeface.DEFAULT_BOLD);
    localPaint1.setFakeBoldText(true);
    localPaint1.setTextAlign(Paint.Align.CENTER);
    localPaint1.setAntiAlias(true);
    Rect localRect = new Rect(j, k, j + i, k + i);
    Paint localPaint2 = new Paint();
    localPaint2.setAntiAlias(true);
    localPaint2.setFilterBitmap(true);
    localPaint2.setDither(true);
    paramCanvas.drawBitmap(this.bitmap, null, localRect, localPaint2);
    String str;
    float f1;
    float f2;
    float f3;
    float[] arrayOfFloat;
    if ((this.stateController != null) && (this.stateController.getNum() != null))
    {
      str = this.stateController.getNum().toString();
      f1 = width - DPIUtil.dip2px(23.0F);
      f2 = k + DPIUtil.dip2px(9.0F);
      f3 = 0.0F;
      arrayOfFloat = new float[str.length()];
      localPaint1.getTextWidths(str, arrayOfFloat);
    }
    for (int m = 0;; m++)
    {
      int n = arrayOfFloat.length;
      if (m >= n)
      {
        Paint.FontMetrics localFontMetrics = localPaint1.getFontMetrics();
        float f4 = localFontMetrics.descent - localFontMetrics.top;
        float f5 = Math.max(f4, f3 + DPIUtil.dip2px(10.0F));
        Paint localPaint3 = new Paint();
        localPaint3.setAntiAlias(true);
        RectF localRectF = new RectF();
        localRectF.left = (f1 - f5 / 2.0F);
        localRectF.top = (f2 - DPIUtil.dip2px(4.0F) - f4 / 2.0F);
        localRectF.right = (f5 + localRectF.left);
        localRectF.bottom = (f4 + localRectF.top);
        float f6 = f4 / 2.0F;
        LinearGradient localLinearGradient = new LinearGradient(0.0F, 0.0F, 0.0F, f4, -720896, -5176830, Shader.TileMode.CLAMP);
        localPaint3.setStyle(Paint.Style.FILL);
        localPaint3.setShader(localLinearGradient);
        paramCanvas.drawRoundRect(localRectF, f6, f6, localPaint3);
        localPaint3.setStyle(Paint.Style.STROKE);
        localPaint3.setShader(null);
        localPaint3.setColor(-1);
        localPaint3.setStrokeWidth(DPIUtil.dip2px(2.0F));
        paramCanvas.drawRoundRect(localRectF, f6, f6, localPaint3);
        paramCanvas.drawText(str, f1, f2, localPaint1);
        return;
      }
      f3 += arrayOfFloat[m];
    }
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
  
  public void setShade(int paramInt)
  {
    int[] arrayOfInt = new int[2];
    switch (paramInt)
    {
    }
    for (;;)
    {
      this.shader = new LinearGradient(0.0F, 0.0F, 0.0F, this.bitmap.getHeight(), arrayOfInt, null, Shader.TileMode.MIRROR);
      if (!this.highlight) {
        break;
      }
      this.textShader = new LinearGradient(0.0F, 0.0F, 0.0F, 10.0F, new int[] { -1, -3355444 }, null, Shader.TileMode.MIRROR);
      return;
      arrayOfInt = new int[] { -3355444, -12303292 };
      continue;
      arrayOfInt = new int[] { -16711681, -16776961 };
      continue;
      arrayOfInt = new int[] { -65281, -65536 };
      continue;
      arrayOfInt = new int[2];
      arrayOfInt[0] = -65281;
      arrayOfInt[1] = Color.rgb(292, 52, 100);
      continue;
      arrayOfInt = new int[2];
      arrayOfInt[0] = -256;
      arrayOfInt[1] = Color.rgb(255, 126, 0);
      continue;
      arrayOfInt = new int[2];
      arrayOfInt[0] = Color.rgb(255, 126, 0);
      arrayOfInt[1] = Color.rgb(255, 90, 0);
      continue;
      arrayOfInt = new int[2];
      arrayOfInt[0] = -16711936;
      arrayOfInt[1] = Color.rgb(0, 79, 4);
    }
    this.textShader = new LinearGradient(0.0F, 0.0F, 0.0F, 10.0F, new int[] { -3355444, -12303292 }, null, Shader.TileMode.MIRROR);
  }
  
  public void setStateController(TabBarButton.StateController paramStateController)
  {
    this.stateController = paramStateController;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.frame.RadioStateDrawable
 * JD-Core Version:    0.7.0.1
 */