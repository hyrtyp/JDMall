package com.jingdong.app.mall.search;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.jingdong.common.utils.DPIUtil;
import java.io.PrintStream;

public class JDImageView
  extends ImageView
{
  private static final int LEFT_AREA_ALPHA = 127;
  private static final int PRESS_LB = 0;
  private static final int PRESS_LT = 1;
  private static final int PRESS_RB = 2;
  private static final int PRESS_RT = 3;
  private RectF ChooseArea = null;
  private Bitmap bitMap = null;
  private boolean cutFlag = false;
  private Bitmap dot;
  private int dotOfferX;
  private int dotOfferY;
  private RectF dst = null;
  private boolean firstFlag = false;
  private boolean isDrawRect;
  private Paint leftAreaPaint = null;
  private RectF leftRectB = null;
  private RectF leftRectL = null;
  private RectF leftRectR = null;
  private RectF leftRectT = null;
  private Paint mPaint = null;
  private Matrix matrix = null;
  private int mx = 0;
  private int my = 0;
  private BitmapFactory.Options options;
  private int recFlag = -1;
  private RectF recLB = null;
  private RectF recLT = null;
  private RectF recRB = null;
  private RectF recRT = null;
  private RectF src = null;
  private boolean touchFlag = false;
  private Vibrator vibrator;
  
  public JDImageView(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public JDImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public JDImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private boolean isOutOfArea(int paramInt1, int paramInt2)
  {
    switch (this.recFlag)
    {
    default: 
      return false;
    case 0: 
      pressLB(paramInt1 - this.mx, paramInt2 - this.my);
    }
    for (;;)
    {
      this.mx = paramInt1;
      this.my = paramInt2;
      invalidate();
      return true;
      pressLT(paramInt1 - this.mx, paramInt2 - this.my);
      continue;
      pressRB(paramInt1 - this.mx, paramInt2 - this.my);
      continue;
      pressRT(paramInt1 - this.mx, paramInt2 - this.my);
    }
  }
  
  private void pressLB(int paramInt1, int paramInt2)
  {
    float f1 = this.ChooseArea.left + paramInt1;
    float f2 = this.ChooseArea.right;
    float f3 = this.ChooseArea.top;
    float f4 = this.ChooseArea.bottom + paramInt2;
    if ((f1 <= f2 - 30.0F) && (f1 >= this.dst.left) && (f4 <= this.dst.bottom) && (f4 >= f3 + 30.0F)) {
      this.ChooseArea.set(f1, f3, f2, f4);
    }
    for (;;)
    {
      setPressRecLoc();
      return;
      if (f1 + paramInt1 < this.dst.left) {
        f1 = this.dst.left;
      }
      if (f4 + paramInt2 > this.dst.bottom) {
        f4 = this.dst.bottom;
      }
      if (this.ChooseArea.left + paramInt1 > this.ChooseArea.right - 30.0F) {
        f1 = this.ChooseArea.right - 30.0F;
      }
      if (this.ChooseArea.bottom + paramInt2 < 30.0F + this.ChooseArea.top) {
        f4 = 30.0F + this.ChooseArea.top;
      }
      this.ChooseArea.set(f1, f3, f2, f4);
    }
  }
  
  private void pressLT(int paramInt1, int paramInt2)
  {
    float f1 = this.ChooseArea.left + paramInt1;
    float f2 = this.ChooseArea.right;
    float f3 = this.ChooseArea.top + paramInt2;
    float f4 = this.ChooseArea.bottom;
    if ((f1 <= f2 - 30.0F) && (f1 >= this.dst.left) && (f3 <= f4 - 30.0F) && (f3 >= this.dst.top)) {
      this.ChooseArea.set(f1, f3, f2, f4);
    }
    for (;;)
    {
      setPressRecLoc();
      return;
      if (f1 < this.dst.left) {
        f1 = this.dst.left;
      }
      if (f3 < this.dst.top) {
        f3 = this.dst.top;
      }
      if (f1 > f2 - 30.0F) {
        f1 = f2 - 30.0F;
      }
      if (f3 > f4 - 30.0F) {
        f3 = f4 - 30.0F;
      }
      this.ChooseArea.set(f1, f3, f2, f4);
    }
  }
  
  private void pressRB(int paramInt1, int paramInt2)
  {
    float f1 = this.ChooseArea.left;
    float f2 = this.ChooseArea.right + paramInt1;
    float f3 = this.ChooseArea.top;
    float f4 = this.ChooseArea.bottom + paramInt2;
    if ((f2 <= this.dst.right) && (f2 >= f1 + 30.0F) && (f4 <= this.dst.bottom) && (f4 >= f3 + 30.0F)) {
      this.ChooseArea.set(f1, f3, f2, f4);
    }
    for (;;)
    {
      setPressRecLoc();
      return;
      if (f2 > this.dst.right) {
        f2 = this.dst.right;
      }
      if (f4 > this.dst.bottom) {
        f4 = this.dst.bottom;
      }
      if (f2 < f1 + 30.0F) {
        f2 = f1 + 30.0F;
      }
      if (f4 < f3 + 30.0F) {
        f4 = f3 + 30.0F;
      }
      this.ChooseArea.set(f1, f3, f2, f4);
    }
  }
  
  private void pressRT(int paramInt1, int paramInt2)
  {
    float f1 = this.ChooseArea.left;
    float f2 = this.ChooseArea.right + paramInt1;
    float f3 = this.ChooseArea.top + paramInt2;
    float f4 = this.ChooseArea.bottom;
    if ((f2 <= this.dst.right) && (f2 >= f1 + 30.0F) && (f3 <= f4 - 30.0F) && (f3 >= this.dst.top)) {
      this.ChooseArea.set(f1, f3, f2, f4);
    }
    for (;;)
    {
      setPressRecLoc();
      return;
      if (f2 > this.dst.right) {
        f2 = this.dst.right;
      }
      if (f3 < this.dst.top) {
        f3 = this.dst.top;
      }
      if (f2 < f1 + 30.0F) {
        f2 = f1 + 30.0F;
      }
      if (f3 > f4 - 30.0F) {
        f3 = f4 - 30.0F;
      }
      this.ChooseArea.set(f1, f3, f2, f4);
    }
  }
  
  private void setPressRecLoc()
  {
    this.recLT.set(this.ChooseArea.left - this.dotOfferX, this.ChooseArea.top - this.dotOfferY, 5.0F + this.ChooseArea.left, 5.0F + this.ChooseArea.top);
    this.recLB.set(this.ChooseArea.left - this.dotOfferX, this.ChooseArea.bottom - this.dotOfferY, 5.0F + this.ChooseArea.left, 5.0F + this.ChooseArea.bottom);
    this.recRT.set(this.ChooseArea.right - this.dotOfferX, this.ChooseArea.top - this.dotOfferY, 5.0F + this.ChooseArea.right, 5.0F + this.ChooseArea.top);
    this.recRB.set(this.ChooseArea.right - this.dotOfferX, this.ChooseArea.bottom - this.dotOfferY, 5.0F + this.ChooseArea.right, 5.0F + this.ChooseArea.bottom);
  }
  
  private void validateMoveChooseArea(int paramInt1, int paramInt2)
  {
    float f1 = this.ChooseArea.left + paramInt1;
    float f2 = this.ChooseArea.right + paramInt1;
    float f3 = this.ChooseArea.top + paramInt2;
    float f4 = this.ChooseArea.bottom + paramInt2;
    int i;
    int j;
    label79:
    int k;
    label94:
    int m;
    if (f3 >= this.dst.top)
    {
      i = 1;
      if (f4 > this.dst.bottom) {
        break label151;
      }
      j = 1;
      if (f1 < this.dst.left) {
        break label157;
      }
      k = 1;
      if (f2 > this.dst.right) {
        break label163;
      }
      m = 1;
      label110:
      if ((i == 0) || (j == 0) || (k == 0) || (m == 0)) {
        break label169;
      }
      this.ChooseArea.set(f1, f3, f2, f4);
    }
    label151:
    label157:
    label163:
    label169:
    label246:
    do
    {
      return;
      i = 0;
      break;
      j = 0;
      break label79;
      k = 0;
      break label94;
      m = 0;
      break label110;
      if ((i == 0) || (j == 0))
      {
        float f5;
        float f6;
        if (k == m) {
          if (k == 0)
          {
            f5 = this.ChooseArea.left;
            if (m != 0) {
              break label246;
            }
            f6 = this.ChooseArea.right;
          }
        }
        for (;;)
        {
          this.ChooseArea.set(f5, this.ChooseArea.top, f6, this.ChooseArea.bottom);
          return;
          f5 = f1;
          break;
          f6 = f2;
          continue;
          f5 = this.ChooseArea.left;
          f6 = this.ChooseArea.right;
        }
      }
    } while ((m != 0) && (k != 0));
    RectF localRectF = this.ChooseArea;
    float f7 = this.ChooseArea.left;
    if (i == 0) {
      f3 = this.ChooseArea.top;
    }
    float f8 = this.ChooseArea.right;
    if (j == 0) {
      f4 = this.ChooseArea.bottom;
    }
    localRectF.set(f7, f3, f8, f4);
  }
  
  public boolean findPresseddst(int paramInt1, int paramInt2)
  {
    boolean bool2;
    if (isInRect(paramInt1, paramInt2, this.recLB))
    {
      this.recFlag = 0;
      bool2 = true;
    }
    boolean bool1;
    do
    {
      return bool2;
      if (isInRect(paramInt1, paramInt2, this.recLT))
      {
        this.recFlag = 1;
        return true;
      }
      if (isInRect(paramInt1, paramInt2, this.recRB))
      {
        this.recFlag = 2;
        return true;
      }
      bool1 = isInRect(paramInt1, paramInt2, this.recRT);
      bool2 = false;
    } while (!bool1);
    this.recFlag = 3;
    return true;
  }
  
  public Bitmap getBitmap()
  {
    return this.bitMap;
  }
  
  public RectF getChooseArea()
  {
    return this.ChooseArea;
  }
  
  public Rect getRect()
  {
    float f1 = this.bitMap.getWidth() / (this.dst.right - this.dst.left);
    float f2 = this.bitMap.getHeight() / (this.dst.bottom - this.dst.top);
    int i = (int)(f1 * (this.ChooseArea.left - this.dst.left));
    int j = (int)(i + f1 * (this.ChooseArea.right - this.ChooseArea.left));
    int k = (int)(f2 * (this.ChooseArea.top - this.dst.top));
    return new Rect(i, k, j, (int)(k + f2 * (this.ChooseArea.bottom - this.ChooseArea.top)));
  }
  
  public Bitmap getSubsetBitmap()
  {
    float f1 = this.bitMap.getWidth() / (this.dst.right - this.dst.left);
    float f2 = this.bitMap.getHeight() / (this.dst.bottom - this.dst.top);
    int i = (int)(f1 * (this.ChooseArea.left - this.dst.left));
    int j = (int)(i + f1 * (this.ChooseArea.right - this.ChooseArea.left));
    int k = (int)(f2 * (this.ChooseArea.top - this.dst.top));
    int m = (int)(k + f2 * (this.ChooseArea.bottom - this.ChooseArea.top));
    this.src = new RectF(i, k, j, m);
    this.firstFlag = true;
    set_LeftArea_Alpha();
    if ((j - i > 0) && (m - k > 0)) {
      return Bitmap.createBitmap(this.bitMap, i, k, j - i, m - k);
    }
    return getBitmap();
  }
  
  public void imageScale()
  {
    this.matrix = getImageMatrix();
    if ((this.matrix != null) && (this.dst != null) && (this.src != null))
    {
      this.matrix.mapRect(this.dst, this.src);
      int i = getPaddingBottom();
      int j = getPaddingLeft();
      int k = getPaddingRight();
      int m = getPaddingTop();
      this.dst.set(this.dst.left + j, this.dst.top + m, this.dst.right + k, this.dst.bottom + i);
      getDrawable().getIntrinsicWidth();
      getDrawable().getIntrinsicHeight();
      int n = (int)this.dst.right >> 3;
      int i1 = (int)this.dst.bottom >> 3;
      this.ChooseArea = new RectF(this.dst.left + n, this.dst.top + i1, this.dst.right - n, this.dst.bottom - i1);
      setPressRecLoc();
    }
  }
  
  public void init()
  {
    this.cutFlag = true;
    this.recLT = new RectF();
    this.recLB = new RectF();
    this.recRT = new RectF();
    this.recRB = new RectF();
    this.dst = new RectF();
    this.mPaint = new Paint();
    this.mPaint.setColor(-65536);
    this.mPaint.setStyle(Paint.Style.STROKE);
    this.ChooseArea = new RectF();
    setPressRecLoc();
    this.src = null;
    this.firstFlag = true;
    this.leftAreaPaint = new Paint();
    this.leftAreaPaint.setStyle(Paint.Style.FILL);
    this.leftAreaPaint.setAlpha(127);
    this.options = new BitmapFactory.Options();
    this.options.inSampleSize = 2;
    this.dot = BitmapFactory.decodeResource(getResources(), 2130837689, this.options);
    this.dotOfferX = (this.dot.getWidth() >> 1);
    this.dotOfferY = (this.dot.getHeight() >> 1);
  }
  
  public boolean isInRect(int paramInt1, int paramInt2, RectF paramRectF)
  {
    if ((paramInt1 >= paramRectF.left - 20.0F) && (paramInt1 <= 20.0F + paramRectF.right) && (paramInt2 > paramRectF.top - 20.0F) && (paramInt2 < 20.0F + paramRectF.bottom))
    {
      vibrator();
      return true;
    }
    return false;
  }
  
  public boolean judgeLocation(float paramFloat1, float paramFloat2)
  {
    float f1 = getChooseArea().left;
    float f2 = getChooseArea().top;
    float f3 = getChooseArea().right;
    float f4 = getChooseArea().bottom;
    return (paramFloat1 > f1 + 10.0F) && (paramFloat1 < f3 - 10.0F) && (paramFloat2 > f2 + 10.0F) && (paramFloat2 < f4 - 10.0F);
  }
  
  public void moveChooseArea(MotionEvent paramMotionEvent, int paramInt1, int paramInt2)
  {
    if ((paramMotionEvent.getX() < this.dst.left) || (paramMotionEvent.getX() > this.dst.right) || (paramMotionEvent.getY() < this.dst.top) || (paramMotionEvent.getY() > this.dst.bottom)) {
      return;
    }
    validateMoveChooseArea(paramInt1, paramInt2);
    setPressRecLoc();
    this.mPaint.setColor(-1609717538);
    invalidate();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    try
    {
      super.onDraw(paramCanvas);
      if (this.isDrawRect)
      {
        if (this.firstFlag)
        {
          imageScale();
          this.firstFlag = false;
          this.mPaint.setColor(-1);
        }
        set_LeftArea_Alpha();
        paramCanvas.drawRect(this.leftRectL, this.leftAreaPaint);
        paramCanvas.drawRect(this.leftRectR, this.leftAreaPaint);
        paramCanvas.drawRect(this.leftRectT, this.leftAreaPaint);
        paramCanvas.drawRect(this.leftRectB, this.leftAreaPaint);
        paramCanvas.drawRect(this.ChooseArea, this.mPaint);
        this.mPaint.setColor(-16776961);
        paramCanvas.drawBitmap(this.dot, this.recLT.left, this.recLT.top, this.mPaint);
        paramCanvas.drawBitmap(BitmapFactory.decodeResource(getResources(), 2130837687, this.options), this.recLB.left, this.recLB.top, this.mPaint);
        paramCanvas.drawBitmap(BitmapFactory.decodeResource(getResources(), 2130837690, this.options), this.recRT.left, this.recRT.top, this.mPaint);
        paramCanvas.drawBitmap(BitmapFactory.decodeResource(getResources(), 2130837688, this.options), this.recRB.left, this.recRB.top, this.mPaint);
      }
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.mPaint.setColor(-1);
    if ((paramMotionEvent.getAction() == 0) && (this.cutFlag))
    {
      this.mx = ((int)paramMotionEvent.getX());
      this.my = ((int)paramMotionEvent.getY());
      if (judgeLocation(this.mx, this.my))
      {
        this.touchFlag = true;
        this.mPaint.setColor(-1609717538);
        invalidate();
      }
    }
    do
    {
      return true;
      if (findPresseddst((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
      {
        this.touchFlag = true;
        this.mPaint.setColor(-1);
        return true;
      }
      if ((paramMotionEvent.getAction() != 2) || (!this.touchFlag)) {
        break;
      }
    } while (isOutOfArea((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()));
    if ((this.ChooseArea.left == this.dst.left) && (this.ChooseArea.top == this.dst.top) && (this.ChooseArea.right == this.dst.right) && (this.ChooseArea.bottom == this.dst.bottom)) {
      System.err.println("full screen");
    }
    for (;;)
    {
      if (paramMotionEvent.getAction() == 1)
      {
        this.recFlag = -1;
        invalidate();
        this.touchFlag = false;
      }
      return super.onTouchEvent(paramMotionEvent);
      moveChooseArea(paramMotionEvent, (int)paramMotionEvent.getX() - this.mx, (int)paramMotionEvent.getY() - this.my);
      this.mx = ((int)paramMotionEvent.getX());
      this.my = ((int)paramMotionEvent.getY());
    }
  }
  
  public void setBitmap(Bitmap paramBitmap)
  {
    init();
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(paramBitmap);
    float f = 1.0F;
    if ((paramBitmap.getWidth() != localBitmapDrawable.getIntrinsicWidth()) || (paramBitmap.getHeight() != localBitmapDrawable.getIntrinsicHeight())) {
      f = DPIUtil.getDensity();
    }
    this.src = new RectF(0.0F, 0.0F, f * localBitmapDrawable.getIntrinsicWidth(), f * localBitmapDrawable.getIntrinsicHeight());
    this.bitMap = paramBitmap;
    setImageBitmap(this.bitMap);
    this.leftRectB = new RectF();
    this.leftRectL = new RectF();
    this.leftRectR = new RectF();
    this.leftRectT = new RectF();
  }
  
  public void setDSTRect(RectF paramRectF)
  {
    this.dst = paramRectF;
  }
  
  public void setDrawRect(boolean paramBoolean)
  {
    this.isDrawRect = paramBoolean;
  }
  
  public void setVibrator(Vibrator paramVibrator)
  {
    this.vibrator = paramVibrator;
  }
  
  public void set_LeftArea_Alpha()
  {
    if ((this.leftRectB != null) && (this.leftRectL != null) && (this.leftRectR != null) && (this.leftRectT != null))
    {
      this.leftRectL.set(this.dst.left, this.dst.top, this.ChooseArea.left, this.dst.bottom);
      this.leftRectR.set(this.ChooseArea.right, this.dst.top, this.dst.right, this.dst.bottom);
      this.leftRectT.set(this.ChooseArea.left, this.dst.top, this.ChooseArea.right, this.ChooseArea.top);
      this.leftRectB.set(this.ChooseArea.left, this.ChooseArea.bottom, this.ChooseArea.right, this.dst.bottom);
    }
  }
  
  public void vibrator()
  {
    if (this.vibrator == null) {
      return;
    }
    this.vibrator.vibrate(100L);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.search.JDImageView
 * JD-Core Version:    0.7.0.1
 */