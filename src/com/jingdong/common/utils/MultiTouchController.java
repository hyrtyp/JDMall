package com.jingdong.common.utils;

import android.util.Log;
import android.view.MotionEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class MultiTouchController<T>
{
  private static int ACTION_POINTER_INDEX_SHIFT = 0;
  private static int ACTION_POINTER_UP = 6;
  public static final boolean DEBUG = false;
  private static final long EVENT_SETTLE_TIME_INTERVAL = 20L;
  private static final float MAX_MULTITOUCH_DIM_JUMP_SIZE = 40.0F;
  private static final float MAX_MULTITOUCH_POS_JUMP_SIZE = 30.0F;
  public static final int MAX_TOUCH_POINTS = 20;
  private static final float MIN_MULTITOUCH_SEPARATION = 30.0F;
  private static final int MODE_DRAG = 1;
  private static final int MODE_NOTHING = 0;
  private static final int MODE_PINCH = 2;
  private static Method m_getHistoricalPressure;
  private static Method m_getHistoricalX;
  private static Method m_getHistoricalY;
  private static Method m_getPointerCount;
  private static Method m_getPointerId;
  private static Method m_getPressure;
  private static Method m_getX;
  private static Method m_getY;
  public static final boolean multiTouchSupported;
  private static final int[] pointerIds;
  private static final float[] pressureVals;
  private static final float[] xVals;
  private static final float[] yVals;
  private boolean handleSingleTouchEvents;
  private PointInfo mCurrPt = new PointInfo();
  private float mCurrPtAng;
  private float mCurrPtDiam;
  private float mCurrPtHeight;
  private float mCurrPtWidth;
  private float mCurrPtX;
  private float mCurrPtY;
  private PositionAndScale mCurrXform = new PositionAndScale();
  private int mMode = 0;
  private PointInfo mPrevPt = new PointInfo();
  private long mSettleEndTime;
  private long mSettleStartTime;
  MultiTouchObjectCanvas<T> objectCanvas;
  private T selectedObject = null;
  private float startPosX;
  private float startPosY;
  private float startScaleOverPinchDiam;
  private float startScaleXOverPinchWidth;
  private float startScaleYOverPinchHeight;
  
  static
  {
    ACTION_POINTER_INDEX_SHIFT = 8;
    try
    {
      m_getPointerCount = MotionEvent.class.getMethod("getPointerCount", new Class[0]);
      Class[] arrayOfClass1 = new Class[1];
      arrayOfClass1[0] = Integer.TYPE;
      m_getPointerId = MotionEvent.class.getMethod("getPointerId", arrayOfClass1);
      Class[] arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = Integer.TYPE;
      m_getPressure = MotionEvent.class.getMethod("getPressure", arrayOfClass2);
      Class[] arrayOfClass3 = new Class[2];
      arrayOfClass3[0] = Integer.TYPE;
      arrayOfClass3[1] = Integer.TYPE;
      m_getHistoricalX = MotionEvent.class.getMethod("getHistoricalX", arrayOfClass3);
      Class[] arrayOfClass4 = new Class[2];
      arrayOfClass4[0] = Integer.TYPE;
      arrayOfClass4[1] = Integer.TYPE;
      m_getHistoricalY = MotionEvent.class.getMethod("getHistoricalY", arrayOfClass4);
      Class[] arrayOfClass5 = new Class[2];
      arrayOfClass5[0] = Integer.TYPE;
      arrayOfClass5[1] = Integer.TYPE;
      m_getHistoricalPressure = MotionEvent.class.getMethod("getHistoricalPressure", arrayOfClass5);
      Class[] arrayOfClass6 = new Class[1];
      arrayOfClass6[0] = Integer.TYPE;
      m_getX = MotionEvent.class.getMethod("getX", arrayOfClass6);
      Class[] arrayOfClass7 = new Class[1];
      arrayOfClass7[0] = Integer.TYPE;
      m_getY = MotionEvent.class.getMethod("getY", arrayOfClass7);
      bool = true;
    }
    catch (Exception localException1)
    {
      try
      {
        ACTION_POINTER_UP = MotionEvent.class.getField("ACTION_POINTER_UP").getInt(null);
        ACTION_POINTER_INDEX_SHIFT = MotionEvent.class.getField("ACTION_POINTER_INDEX_SHIFT").getInt(null);
        xVals = new float[20];
        yVals = new float[20];
        pressureVals = new float[20];
        pointerIds = new int[20];
        return;
        localException1 = localException1;
        Log.e("MultiTouchController", "static initializer failed", localException1);
        boolean bool = false;
      }
      catch (Exception localException2)
      {
        break label260;
      }
    }
    multiTouchSupported = bool;
    if (!multiTouchSupported) {}
  }
  
  public MultiTouchController(MultiTouchObjectCanvas<T> paramMultiTouchObjectCanvas)
  {
    this(paramMultiTouchObjectCanvas, true);
  }
  
  public MultiTouchController(MultiTouchObjectCanvas<T> paramMultiTouchObjectCanvas, boolean paramBoolean)
  {
    this.handleSingleTouchEvents = paramBoolean;
    this.objectCanvas = paramMultiTouchObjectCanvas;
  }
  
  private void anchorAtThisPositionAndScale()
  {
    if (this.selectedObject == null) {
      return;
    }
    this.objectCanvas.getPositionAndScale(this.selectedObject, this.mCurrXform);
    float f1;
    if (!this.mCurrXform.updateScale) {
      f1 = 1.0F;
    }
    for (;;)
    {
      float f2 = 1.0F / f1;
      extractCurrPtInfo();
      this.startPosX = (f2 * (this.mCurrPtX - this.mCurrXform.xOff));
      this.startPosY = (f2 * (this.mCurrPtY - this.mCurrXform.yOff));
      this.startScaleOverPinchDiam = (this.mCurrXform.scale / this.mCurrPtDiam);
      this.startScaleXOverPinchWidth = (this.mCurrXform.scaleX / this.mCurrPtWidth);
      this.startScaleYOverPinchHeight = (this.mCurrXform.scaleY / this.mCurrPtHeight);
      return;
      if (this.mCurrXform.scale == 0.0F) {
        f1 = 1.0F;
      } else {
        f1 = this.mCurrXform.scale;
      }
    }
  }
  
  private void decodeTouchEvent(int paramInt1, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, float[] paramArrayOfFloat3, int[] paramArrayOfInt, int paramInt2, boolean paramBoolean, long paramLong)
  {
    PointInfo localPointInfo = this.mPrevPt;
    this.mPrevPt = this.mCurrPt;
    this.mCurrPt = localPointInfo;
    this.mCurrPt.set(paramInt1, paramArrayOfFloat1, paramArrayOfFloat2, paramArrayOfFloat3, paramArrayOfInt, paramInt2, paramBoolean, paramLong);
    multiTouchController();
  }
  
  private void extractCurrPtInfo()
  {
    this.mCurrPtX = this.mCurrPt.getX();
    this.mCurrPtY = this.mCurrPt.getY();
    float f1;
    float f2;
    label56:
    float f3;
    label78:
    float f4;
    if (!this.mCurrXform.updateScale)
    {
      f1 = 0.0F;
      this.mCurrPtDiam = Math.max(21.299999F, f1);
      if (this.mCurrXform.updateScaleXY) {
        break label123;
      }
      f2 = 0.0F;
      this.mCurrPtWidth = Math.max(30.0F, f2);
      if (this.mCurrXform.updateScaleXY) {
        break label134;
      }
      f3 = 0.0F;
      this.mCurrPtHeight = Math.max(30.0F, f3);
      boolean bool = this.mCurrXform.updateAngle;
      f4 = 0.0F;
      if (bool) {
        break label145;
      }
    }
    for (;;)
    {
      this.mCurrPtAng = f4;
      return;
      f1 = this.mCurrPt.getMultiTouchDiameter();
      break;
      label123:
      f2 = this.mCurrPt.getMultiTouchWidth();
      break label56;
      label134:
      f3 = this.mCurrPt.getMultiTouchHeight();
      break label78;
      label145:
      f4 = this.mCurrPt.getMultiTouchAngle();
    }
  }
  
  private void multiTouchController()
  {
    float f1 = 1.0F;
    switch (this.mMode)
    {
    }
    do
    {
      do
      {
        do
        {
          return;
        } while (!this.mCurrPt.isDown());
        this.selectedObject = this.objectCanvas.getDraggableObjectAtPoint(this.mCurrPt);
      } while (this.selectedObject == null);
      this.mMode = 1;
      anchorAtThisPositionAndScale();
      long l = this.mCurrPt.getEventTime();
      this.mSettleEndTime = l;
      this.mSettleStartTime = l;
      return;
      if (!this.mCurrPt.isDown())
      {
        this.mMode = 0;
        return;
      }
      if (this.mCurrPt.isMultiTouch())
      {
        this.mMode = 2;
        anchorAtThisPositionAndScale();
        this.mSettleStartTime = this.mCurrPt.getEventTime();
        this.mSettleEndTime = (20L + this.mSettleStartTime);
        this.objectCanvas.onScaleBegin(this.mCurrPt.getX(), this.mCurrPt.getY());
        return;
      }
      if (this.mCurrPt.getEventTime() < this.mSettleEndTime)
      {
        anchorAtThisPositionAndScale();
        return;
      }
      performDragOrPinch();
      return;
      if ((!this.mCurrPt.isMultiTouch()) || (!this.mCurrPt.isDown()))
      {
        if (!this.mCurrPt.isDown())
        {
          this.mMode = 0;
          this.objectCanvas.onScaleEnd();
          return;
        }
        this.mMode = 1;
        anchorAtThisPositionAndScale();
        this.mSettleStartTime = this.mCurrPt.getEventTime();
        this.mSettleEndTime = (20L + this.mSettleStartTime);
        return;
      }
      if ((Math.abs(this.mCurrPt.getX() - this.mPrevPt.getX()) > 30.0F) || (Math.abs(this.mCurrPt.getY() - this.mPrevPt.getY()) > 30.0F) || (0.5F * Math.abs(this.mCurrPt.getMultiTouchWidth() - this.mPrevPt.getMultiTouchWidth()) > 40.0F) || (0.5F * Math.abs(this.mCurrPt.getMultiTouchHeight() - this.mPrevPt.getMultiTouchHeight()) > 40.0F))
      {
        anchorAtThisPositionAndScale();
        this.mSettleStartTime = this.mCurrPt.getEventTime();
        this.mSettleEndTime = (20L + this.mSettleStartTime);
        return;
      }
      if (this.mCurrPt.eventTime < this.mSettleEndTime)
      {
        anchorAtThisPositionAndScale();
        return;
      }
      performDragOrPinch();
    } while (this.selectedObject == null);
    if (!this.mCurrXform.updateScale) {}
    for (;;)
    {
      extractCurrPtInfo();
      float f2 = this.mCurrPtX - f1 * this.startPosX;
      float f3 = this.mCurrPtY - f1 * this.startPosY;
      float f4 = this.startScaleOverPinchDiam * this.mCurrPtDiam;
      this.objectCanvas.onScale(f2, f3, f4);
      return;
      if (this.mCurrXform.scale != 0.0F) {
        f1 = this.mCurrXform.scale;
      }
    }
  }
  
  private void performDragOrPinch() {}
  
  protected boolean getHandleSingleTouchEvents()
  {
    return this.handleSingleTouchEvents;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i;
    int j;
    int k;
    int m;
    label68:
    int n;
    label98:
    label122:
    int i4;
    label146:
    label183:
    label570:
    try
    {
      if (!multiTouchSupported) {
        break label663;
      }
      i = ((Integer)m_getPointerCount.invoke(paramMotionEvent, new Object[0])).intValue();
      if ((this.mMode == 0) && (!this.handleSingleTouchEvents) && (i == 1)) {
        return false;
      }
      j = paramMotionEvent.getAction();
      k = paramMotionEvent.getHistorySize() / i;
      m = 0;
    }
    catch (Exception localException)
    {
      float[] arrayOfFloat7;
      float f1;
      float[] arrayOfFloat8;
      float f2;
      float[] arrayOfFloat9;
      float f3;
      float[] arrayOfFloat4;
      float[] arrayOfFloat5;
      float[] arrayOfFloat6;
      int[] arrayOfInt;
      label196:
      label231:
      label240:
      label504:
      Log.e("MultiTouchController", "onTouchEvent() failed", localException);
      label361:
      return false;
    }
    if ((!multiTouchSupported) || (i == 1))
    {
      arrayOfFloat7 = xVals;
      if (n != 0)
      {
        f1 = paramMotionEvent.getHistoricalX(m);
        arrayOfFloat7[0] = f1;
        arrayOfFloat8 = yVals;
        if (n == 0) {
          break label231;
        }
        f2 = paramMotionEvent.getHistoricalY(m);
        arrayOfFloat8[0] = f2;
        arrayOfFloat9 = pressureVals;
        if (n == 0) {
          break label240;
        }
        f3 = paramMotionEvent.getHistoricalPressure(m);
        arrayOfFloat9[0] = f3;
        arrayOfFloat4 = xVals;
        arrayOfFloat5 = yVals;
        arrayOfFloat6 = pressureVals;
        arrayOfInt = pointerIds;
        if (n == 0) {
          break label708;
        }
        i4 = 2;
        break label691;
      }
    }
    for (;;)
    {
      long l1;
      if (n != 0)
      {
        l1 = paramMotionEvent.getHistoricalEventTime(m);
        decodeTouchEvent(i, arrayOfFloat4, arrayOfFloat5, arrayOfFloat6, arrayOfInt, i4, bool, l1);
        m++;
        break label669;
        f1 = paramMotionEvent.getX();
        break label98;
        f2 = paramMotionEvent.getY();
        break label122;
        f3 = paramMotionEvent.getPressure();
        break label146;
        int i1 = Math.min(i, 20);
        int i2 = 0;
        label261:
        Object localObject1;
        Object localObject2;
        label423:
        float[] arrayOfFloat3;
        Method localMethod4;
        Object[] arrayOfObject4;
        if (i2 < i1)
        {
          Method localMethod1 = m_getPointerId;
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(i2);
          int i3 = ((Integer)localMethod1.invoke(paramMotionEvent, arrayOfObject1)).intValue();
          pointerIds[i2] = i3;
          float[] arrayOfFloat1 = xVals;
          if (n == 0) {
            break label504;
          }
          Method localMethod2 = m_getHistoricalX;
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(i2);
          arrayOfObject2[1] = Integer.valueOf(m);
          localObject1 = localMethod2.invoke(paramMotionEvent, arrayOfObject2);
          arrayOfFloat1[i2] = ((Float)localObject1).floatValue();
          float[] arrayOfFloat2 = yVals;
          if (n == 0) {
            break label537;
          }
          Method localMethod3 = m_getHistoricalY;
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = Integer.valueOf(i2);
          arrayOfObject3[1] = Integer.valueOf(m);
          localObject2 = localMethod3.invoke(paramMotionEvent, arrayOfObject3);
          arrayOfFloat2[i2] = ((Float)localObject2).floatValue();
          arrayOfFloat3 = pressureVals;
          if (n == 0) {
            break label570;
          }
          localMethod4 = m_getHistoricalPressure;
          arrayOfObject4 = new Object[2];
          arrayOfObject4[0] = Integer.valueOf(i2);
          arrayOfObject4[1] = Integer.valueOf(m);
        }
        label537:
        Method localMethod5;
        Object[] arrayOfObject5;
        for (Object localObject3 = localMethod4.invoke(paramMotionEvent, arrayOfObject4);; localObject3 = localMethod5.invoke(paramMotionEvent, arrayOfObject5))
        {
          arrayOfFloat3[i2] = ((Float)localObject3).floatValue();
          i2++;
          break label261;
          break;
          Method localMethod7 = m_getX;
          Object[] arrayOfObject7 = new Object[1];
          arrayOfObject7[0] = Integer.valueOf(i2);
          localObject1 = localMethod7.invoke(paramMotionEvent, arrayOfObject7);
          break label361;
          Method localMethod6 = m_getY;
          Object[] arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = Integer.valueOf(i2);
          localObject2 = localMethod6.invoke(paramMotionEvent, arrayOfObject6);
          break label423;
          localMethod5 = m_getPressure;
          arrayOfObject5 = new Object[1];
          arrayOfObject5[0] = Integer.valueOf(i2);
        }
      }
      label663:
      label669:
      label691:
      label708:
      label713:
      for (;;)
      {
        if ((j == 1) || ((j & -1 + (1 << ACTION_POINTER_INDEX_SHIFT)) == ACTION_POINTER_UP) || (j == 3)) {
          break label715;
        }
        bool = true;
        break label183;
        long l2 = paramMotionEvent.getEventTime();
        l1 = l2;
        break label196;
        i = 1;
        break;
        if (m > k) {
          return true;
        }
        if (m < k)
        {
          n = 1;
          break label68;
        }
        for (;;)
        {
          if (n == 0) {
            break label713;
          }
          bool = true;
          break label183;
          n = 0;
          break;
          i4 = j;
        }
      }
      label715:
      boolean bool = false;
    }
  }
  
  protected void setHandleSingleTouchEvents(boolean paramBoolean)
  {
    this.handleSingleTouchEvents = paramBoolean;
  }
  
  public static abstract interface MultiTouchObjectCanvas<T>
  {
    public abstract T getDraggableObjectAtPoint(MultiTouchController.PointInfo paramPointInfo);
    
    public abstract void getPositionAndScale(T paramT, MultiTouchController.PositionAndScale paramPositionAndScale);
    
    public abstract boolean onScale(float paramFloat1, float paramFloat2, float paramFloat3);
    
    public abstract boolean onScaleBegin(float paramFloat1, float paramFloat2);
    
    public abstract void onScaleEnd();
  }
  
  public static class PointInfo
  {
    private int action;
    private float angle;
    private boolean angleIsCalculated;
    private float diameter;
    private boolean diameterIsCalculated;
    private float diameterSq;
    private boolean diameterSqIsCalculated;
    private float dx;
    private float dy;
    private long eventTime;
    private boolean isDown;
    private boolean isMultiTouch;
    private int numPoints;
    private int[] pointerIds = new int[20];
    private float pressureMid;
    private float[] pressures = new float[20];
    private float xMid;
    private float[] xs = new float[20];
    private float yMid;
    private float[] ys = new float[20];
    
    private int julery_isqrt(int paramInt)
    {
      int i = 0;
      int j = 32768;
      int n;
      for (int k = 15;; k = n)
      {
        int m = j + (i << 1);
        n = k - 1;
        int i1 = m << k;
        if (paramInt >= i1)
        {
          i += j;
          paramInt -= i1;
        }
        j >>= 1;
        if (j <= 0) {
          return i;
        }
      }
    }
    
    private void set(int paramInt1, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, float[] paramArrayOfFloat3, int[] paramArrayOfInt, int paramInt2, boolean paramBoolean, long paramLong)
    {
      this.eventTime = paramLong;
      this.action = paramInt2;
      this.numPoints = paramInt1;
      int i = 0;
      boolean bool;
      if (i >= paramInt1)
      {
        this.isDown = paramBoolean;
        if (paramInt1 < 2) {
          break label193;
        }
        bool = true;
        label40:
        this.isMultiTouch = bool;
        if (!this.isMultiTouch) {
          break label199;
        }
        this.xMid = (0.5F * (paramArrayOfFloat1[0] + paramArrayOfFloat1[1]));
        this.yMid = (0.5F * (paramArrayOfFloat2[0] + paramArrayOfFloat2[1]));
        this.pressureMid = (0.5F * (paramArrayOfFloat3[0] + paramArrayOfFloat3[1]));
        this.dx = Math.abs(paramArrayOfFloat1[1] - paramArrayOfFloat1[0]);
        this.dy = Math.abs(paramArrayOfFloat2[1] - paramArrayOfFloat2[0]);
      }
      for (;;)
      {
        this.angleIsCalculated = false;
        this.diameterIsCalculated = false;
        this.diameterSqIsCalculated = false;
        return;
        this.xs[i] = paramArrayOfFloat1[i];
        this.ys[i] = paramArrayOfFloat2[i];
        this.pressures[i] = paramArrayOfFloat3[i];
        this.pointerIds[i] = paramArrayOfInt[i];
        i++;
        break;
        label193:
        bool = false;
        break label40;
        label199:
        this.xMid = paramArrayOfFloat1[0];
        this.yMid = paramArrayOfFloat2[0];
        this.pressureMid = paramArrayOfFloat3[0];
        this.dy = 0.0F;
        this.dx = 0.0F;
      }
    }
    
    public int getAction()
    {
      return this.action;
    }
    
    public long getEventTime()
    {
      return this.eventTime;
    }
    
    public float getMultiTouchAngle()
    {
      if (!this.angleIsCalculated) {
        if (this.isMultiTouch) {
          break label29;
        }
      }
      label29:
      for (this.angle = 0.0F;; this.angle = ((float)Math.atan2(this.ys[1] - this.ys[0], this.xs[1] - this.xs[0])))
      {
        this.angleIsCalculated = true;
        return this.angle;
      }
    }
    
    public float getMultiTouchDiameter()
    {
      if (!this.diameterIsCalculated)
      {
        if (!this.isMultiTouch)
        {
          this.diameter = 0.0F;
          this.diameterIsCalculated = true;
        }
      }
      else {
        return this.diameter;
      }
      float f1 = getMultiTouchDiameterSq();
      boolean bool = f1 < 0.0F;
      float f2 = 0.0F;
      if (!bool) {}
      for (;;)
      {
        this.diameter = f2;
        if (this.diameter < this.dx) {
          this.diameter = this.dx;
        }
        if (this.diameter >= this.dy) {
          break;
        }
        this.diameter = this.dy;
        break;
        f2 = julery_isqrt((int)(256.0F * f1)) / 16.0F;
      }
    }
    
    public float getMultiTouchDiameterSq()
    {
      if (!this.diameterSqIsCalculated) {
        if (!this.isMultiTouch) {
          break label49;
        }
      }
      label49:
      for (float f = this.dx * this.dx + this.dy * this.dy;; f = 0.0F)
      {
        this.diameterSq = f;
        this.diameterSqIsCalculated = true;
        return this.diameterSq;
      }
    }
    
    public float getMultiTouchHeight()
    {
      if (this.isMultiTouch) {
        return this.dy;
      }
      return 0.0F;
    }
    
    public float getMultiTouchWidth()
    {
      if (this.isMultiTouch) {
        return this.dx;
      }
      return 0.0F;
    }
    
    public int getNumTouchPoints()
    {
      return this.numPoints;
    }
    
    public int[] getPointerIds()
    {
      return this.pointerIds;
    }
    
    public float getPressure()
    {
      return this.pressureMid;
    }
    
    public float[] getPressures()
    {
      return this.pressures;
    }
    
    public float getX()
    {
      return this.xMid;
    }
    
    public float[] getXs()
    {
      return this.xs;
    }
    
    public float getY()
    {
      return this.yMid;
    }
    
    public float[] getYs()
    {
      return this.ys;
    }
    
    public boolean isDown()
    {
      return this.isDown;
    }
    
    public boolean isMultiTouch()
    {
      return this.isMultiTouch;
    }
    
    public void set(PointInfo paramPointInfo)
    {
      this.numPoints = paramPointInfo.numPoints;
      for (int i = 0;; i++)
      {
        if (i >= this.numPoints)
        {
          this.xMid = paramPointInfo.xMid;
          this.yMid = paramPointInfo.yMid;
          this.pressureMid = paramPointInfo.pressureMid;
          this.dx = paramPointInfo.dx;
          this.dy = paramPointInfo.dy;
          this.diameter = paramPointInfo.diameter;
          this.diameterSq = paramPointInfo.diameterSq;
          this.angle = paramPointInfo.angle;
          this.isDown = paramPointInfo.isDown;
          this.action = paramPointInfo.action;
          this.isMultiTouch = paramPointInfo.isMultiTouch;
          this.diameterIsCalculated = paramPointInfo.diameterIsCalculated;
          this.diameterSqIsCalculated = paramPointInfo.diameterSqIsCalculated;
          this.angleIsCalculated = paramPointInfo.angleIsCalculated;
          this.eventTime = paramPointInfo.eventTime;
          return;
        }
        this.xs[i] = paramPointInfo.xs[i];
        this.ys[i] = paramPointInfo.ys[i];
        this.pressures[i] = paramPointInfo.pressures[i];
        this.pointerIds[i] = paramPointInfo.pointerIds[i];
      }
    }
  }
  
  public static class PositionAndScale
  {
    private float scale;
    private float scaleX;
    private float scaleY;
    private boolean updateAngle;
    private boolean updateScale;
    private boolean updateScaleXY;
    private float xOff;
    private float yOff;
    
    public float getScale()
    {
      if (!this.updateScale) {
        return 1.0F;
      }
      return this.scale;
    }
    
    public float getScaleX()
    {
      if (!this.updateScaleXY) {
        return 1.0F;
      }
      return this.scaleX;
    }
    
    public float getScaleY()
    {
      if (!this.updateScaleXY) {
        return 1.0F;
      }
      return this.scaleY;
    }
    
    public float getXOff()
    {
      return this.xOff;
    }
    
    public float getYOff()
    {
      return this.yOff;
    }
    
    protected void set(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
    {
      float f = 1.0F;
      this.xOff = paramFloat1;
      this.yOff = paramFloat2;
      if (paramFloat3 == 0.0F) {
        paramFloat3 = f;
      }
      this.scale = paramFloat3;
      if (paramFloat4 == 0.0F) {
        paramFloat4 = f;
      }
      this.scaleX = paramFloat4;
      if (paramFloat5 == 0.0F) {}
      for (;;)
      {
        this.scaleY = f;
        return;
        f = paramFloat5;
      }
    }
    
    public void set(float paramFloat1, float paramFloat2, boolean paramBoolean1, float paramFloat3, boolean paramBoolean2, float paramFloat4, float paramFloat5, boolean paramBoolean3)
    {
      float f = 1.0F;
      this.xOff = paramFloat1;
      this.yOff = paramFloat2;
      this.updateScale = paramBoolean1;
      if (paramFloat3 == 0.0F) {
        paramFloat3 = f;
      }
      this.scale = paramFloat3;
      this.updateScaleXY = paramBoolean2;
      if (paramFloat4 == 0.0F) {
        paramFloat4 = f;
      }
      this.scaleX = paramFloat4;
      if (paramFloat5 == 0.0F) {}
      for (;;)
      {
        this.scaleY = f;
        this.updateAngle = paramBoolean3;
        return;
        f = paramFloat5;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.MultiTouchController
 * JD-Core Version:    0.7.0.1
 */