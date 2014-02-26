package com.jingdong.app.mall.utils.ui.wheelview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class WheelView
  extends View
{
  private static final int ADDITIONAL_ITEMS_SPACE = 10;
  private static final int ADDITIONAL_ITEM_HEIGHT = 15;
  private static final int DEF_VISIBLE_ITEMS = 5;
  private static final int ITEMS_TEXT_COLOR = -16777216;
  private static final int LABEL_OFFSET = 8;
  private static final int MIN_DELTA_FOR_SCROLLING = 1;
  private static final int PADDING = 10;
  private static final int SCROLLING_DURATION = 400;
  private static final int[] SHADOWS_COLORS = { -15658735, 11184810, 11184810 };
  private static final int VALUE_TEXT_COLOR = -268435456;
  private final int ITEM_OFFSET = this.TEXT_SIZE / 5;
  private final int MESSAGE_JUSTIFY = 1;
  private final int MESSAGE_SCROLL = 0;
  public int TEXT_SIZE = 36;
  private WheelAdapter adapter = null;
  private Handler animationHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      WheelView.this.scroller.computeScrollOffset();
      int i = WheelView.this.scroller.getCurrY();
      int j = WheelView.this.lastScrollY - i;
      WheelView.this.lastScrollY = i;
      if (j != 0) {
        WheelView.this.doScroll(j);
      }
      if (Math.abs(i - WheelView.this.scroller.getFinalY()) < 1)
      {
        WheelView.this.scroller.getFinalY();
        WheelView.this.scroller.forceFinished(true);
      }
      if (!WheelView.this.scroller.isFinished())
      {
        WheelView.this.animationHandler.sendEmptyMessage(paramAnonymousMessage.what);
        return;
      }
      if (paramAnonymousMessage.what == 0)
      {
        WheelView.this.justify();
        return;
      }
      WheelView.this.finishScrolling();
    }
  };
  private GradientDrawable bottomShadow;
  private Drawable centerDrawable;
  private List<OnWheelChangedListener> changingListeners = new LinkedList();
  private int currentItem = 0;
  private GestureDetector gestureDetector;
  private GestureDetector.SimpleOnGestureListener gestureListener = new GestureDetector.SimpleOnGestureListener()
  {
    public boolean onDown(MotionEvent paramAnonymousMotionEvent)
    {
      if (WheelView.this.isScrollingPerformed)
      {
        WheelView.this.scroller.forceFinished(true);
        WheelView.this.clearMessages();
        return true;
      }
      return false;
    }
    
    public boolean onFling(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      WheelView.this.lastScrollY = (WheelView.this.currentItem * WheelView.this.getItemHeight() + WheelView.this.scrollingOffset);
      int i;
      if (WheelView.this.isCyclic)
      {
        i = 2147483647;
        if (!WheelView.this.isCyclic) {
          break label125;
        }
      }
      label125:
      for (int j = -i;; j = 0)
      {
        WheelView.this.scroller.fling(0, WheelView.this.lastScrollY, 0, (int)-paramAnonymousFloat2 / 2, 0, 0, j, i);
        WheelView.this.setNextMessage(0);
        return true;
        i = WheelView.this.adapter.getItemsCount() * WheelView.this.getItemHeight();
        break;
      }
    }
    
    public boolean onScroll(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      WheelView.this.startScrolling();
      WheelView.this.doScroll((int)-paramAnonymousFloat2);
      return true;
    }
  };
  boolean isCyclic = false;
  private boolean isScrollingPerformed;
  private int itemHeight = 0;
  private StaticLayout itemsLayout;
  private TextPaint itemsPaint;
  private int itemsWidth = 0;
  private String label;
  private StaticLayout labelLayout;
  private int labelWidth = 0;
  private int lastScrollY;
  private Scroller scroller;
  private List<OnWheelScrollListener> scrollingListeners = new LinkedList();
  private int scrollingOffset;
  private GradientDrawable topShadow;
  private StaticLayout valueLayout;
  private TextPaint valuePaint;
  private int visibleItems = 5;
  
  public WheelView(Context paramContext)
  {
    super(paramContext);
    initData(paramContext);
  }
  
  public WheelView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initData(paramContext);
  }
  
  public WheelView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initData(paramContext);
  }
  
  private String buildText(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1 + this.visibleItems / 2;
    for (int j = this.currentItem - i;; j++)
    {
      if (j > i + this.currentItem) {
        return localStringBuilder.toString();
      }
      if ((paramBoolean) || (j != this.currentItem))
      {
        String str = getTextItem(j);
        if (str != null) {
          localStringBuilder.append(str);
        }
      }
      if (j < i + this.currentItem) {
        localStringBuilder.append("\n");
      }
    }
  }
  
  private int calculateLayoutWidth(int paramInt1, int paramInt2)
  {
    initResourcesIfNecessary();
    int i = getMaxTextLength();
    int k;
    int m;
    label97:
    int n;
    if (i > 0)
    {
      this.itemsWidth = ((int)(FloatMath.ceil(Layout.getDesiredWidth("0", this.itemsPaint)) * i));
      this.itemsWidth = (10 + this.itemsWidth);
      this.labelWidth = 0;
      if ((this.label != null) && (this.label.length() > 0)) {
        this.labelWidth = ((int)FloatMath.ceil(Layout.getDesiredWidth(this.label, this.valuePaint)));
      }
      if (paramInt2 != 1073741824) {
        break label200;
      }
      k = paramInt1;
      m = 1;
      if (m != 0)
      {
        n = -20 + (k - 8);
        if (n <= 0)
        {
          this.labelWidth = 0;
          this.itemsWidth = 0;
        }
        if (this.labelWidth <= 0) {
          break label262;
        }
        this.itemsWidth = ((int)(this.itemsWidth * n / (this.itemsWidth + this.labelWidth)));
        this.labelWidth = (n - this.itemsWidth);
      }
    }
    for (;;)
    {
      if (this.itemsWidth > 0) {
        createLayouts(this.itemsWidth, this.labelWidth);
      }
      return k;
      this.itemsWidth = 0;
      break;
      label200:
      int j = 20 + (this.itemsWidth + this.labelWidth);
      if (this.labelWidth > 0) {
        j += 8;
      }
      k = Math.max(j, getSuggestedMinimumWidth());
      m = 0;
      if (paramInt2 != -2147483648) {
        break label97;
      }
      m = 0;
      if (paramInt1 >= k) {
        break label97;
      }
      k = paramInt1;
      m = 1;
      break label97;
      label262:
      this.itemsWidth = (n + 8);
    }
  }
  
  private void clearMessages()
  {
    this.animationHandler.removeMessages(0);
    this.animationHandler.removeMessages(1);
  }
  
  private void createLayouts(int paramInt1, int paramInt2)
  {
    Layout.Alignment localAlignment1;
    label64:
    String str3;
    label127:
    Layout.Alignment localAlignment2;
    if ((this.itemsLayout == null) || (this.itemsLayout.getWidth() > paramInt1))
    {
      String str1 = buildText(this.isScrollingPerformed);
      TextPaint localTextPaint1 = this.itemsPaint;
      if (paramInt2 > 0)
      {
        localAlignment1 = Layout.Alignment.ALIGN_OPPOSITE;
        this.itemsLayout = new StaticLayout(str1, localTextPaint1, paramInt1, localAlignment1, 1.0F, 15.0F, false);
        if ((this.isScrollingPerformed) || ((this.valueLayout != null) && (this.valueLayout.getWidth() <= paramInt1))) {
          break label251;
        }
        WheelAdapter localWheelAdapter = getAdapter();
        String str2 = null;
        if (localWheelAdapter != null) {
          str2 = getAdapter().getItem(this.currentItem);
        }
        if (str2 == null) {
          break label235;
        }
        str3 = str2;
        TextPaint localTextPaint2 = this.valuePaint;
        if (paramInt2 <= 0) {
          break label243;
        }
        localAlignment2 = Layout.Alignment.ALIGN_OPPOSITE;
        label142:
        this.valueLayout = new StaticLayout(str3, localTextPaint2, paramInt1, localAlignment2, 1.0F, 15.0F, false);
      }
    }
    for (;;)
    {
      if (paramInt2 > 0)
      {
        if ((this.labelLayout != null) && (this.labelLayout.getWidth() <= paramInt2)) {
          break label277;
        }
        this.labelLayout = new StaticLayout(this.label, this.valuePaint, paramInt2, Layout.Alignment.ALIGN_NORMAL, 1.0F, 15.0F, false);
      }
      return;
      localAlignment1 = Layout.Alignment.ALIGN_CENTER;
      break;
      this.itemsLayout.increaseWidthTo(paramInt1);
      break label64;
      label235:
      str3 = "";
      break label127;
      label243:
      localAlignment2 = Layout.Alignment.ALIGN_CENTER;
      break label142;
      label251:
      if (this.isScrollingPerformed) {
        this.valueLayout = null;
      } else {
        this.valueLayout.increaseWidthTo(paramInt1);
      }
    }
    label277:
    this.labelLayout.increaseWidthTo(paramInt2);
  }
  
  private void doScroll(int paramInt)
  {
    this.scrollingOffset = (paramInt + this.scrollingOffset);
    int i = this.scrollingOffset / getItemHeight();
    int j = this.currentItem - i;
    label62:
    int k;
    if ((this.isCyclic) && (this.adapter.getItemsCount() > 0)) {
      if (j >= 0)
      {
        j %= this.adapter.getItemsCount();
        k = this.scrollingOffset;
        if (j == this.currentItem) {
          break label229;
        }
        setCurrentItem(j, false);
      }
    }
    for (;;)
    {
      this.scrollingOffset = (k - i * getItemHeight());
      if (this.scrollingOffset > getHeight()) {
        this.scrollingOffset = (this.scrollingOffset % getHeight() + getHeight());
      }
      return;
      j += this.adapter.getItemsCount();
      break;
      if (this.isScrollingPerformed)
      {
        if (j < 0)
        {
          i = this.currentItem;
          j = 0;
          break label62;
        }
        if (j < this.adapter.getItemsCount()) {
          break label62;
        }
        i = 1 + (this.currentItem - this.adapter.getItemsCount());
        j = -1 + this.adapter.getItemsCount();
        break label62;
      }
      j = Math.min(Math.max(j, 0), -1 + this.adapter.getItemsCount());
      break label62;
      label229:
      invalidate();
    }
  }
  
  private void drawCenterRect(Canvas paramCanvas)
  {
    int i = getHeight() / 2;
    int j = getItemHeight() / 2;
    this.centerDrawable.setBounds(0, i - j, getWidth(), i + j);
    this.centerDrawable.draw(paramCanvas);
  }
  
  private void drawItems(Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.translate(0.0F, -this.itemsLayout.getLineTop(1) + this.scrollingOffset);
    this.itemsPaint.setColor(-16777216);
    this.itemsPaint.drawableState = getDrawableState();
    this.itemsLayout.draw(paramCanvas);
    paramCanvas.restore();
  }
  
  private void drawShadows(Canvas paramCanvas)
  {
    this.topShadow.setBounds(0, 0, getWidth(), getHeight() / this.visibleItems);
    this.topShadow.draw(paramCanvas);
    this.bottomShadow.setBounds(0, getHeight() - getHeight() / this.visibleItems, getWidth(), getHeight());
    this.bottomShadow.draw(paramCanvas);
  }
  
  private void drawValue(Canvas paramCanvas)
  {
    this.valuePaint.setColor(-268435456);
    this.valuePaint.drawableState = getDrawableState();
    Rect localRect = new Rect();
    this.itemsLayout.getLineBounds(this.visibleItems / 2, localRect);
    if (this.labelLayout != null)
    {
      paramCanvas.save();
      paramCanvas.translate(8 + this.itemsLayout.getWidth(), localRect.top);
      this.labelLayout.draw(paramCanvas);
      paramCanvas.restore();
    }
    if (this.valueLayout != null)
    {
      paramCanvas.save();
      paramCanvas.translate(0.0F, localRect.top + this.scrollingOffset);
      this.valueLayout.draw(paramCanvas);
      paramCanvas.restore();
    }
  }
  
  private int getDesiredHeight(Layout paramLayout)
  {
    if (paramLayout == null) {
      return 0;
    }
    return Math.max(-15 + (getItemHeight() * this.visibleItems - 2 * this.ITEM_OFFSET), getSuggestedMinimumHeight());
  }
  
  private int getItemHeight()
  {
    if (this.itemHeight != 0) {
      return this.itemHeight;
    }
    if ((this.itemsLayout != null) && (this.itemsLayout.getLineCount() > 2))
    {
      this.itemHeight = (this.itemsLayout.getLineTop(2) - this.itemsLayout.getLineTop(1));
      return this.itemHeight;
    }
    return getHeight() / this.visibleItems;
  }
  
  private int getMaxTextLength()
  {
    WheelAdapter localWheelAdapter = getAdapter();
    if (localWheelAdapter == null) {
      return 0;
    }
    int i = localWheelAdapter.getMaximumLength();
    if (i > 0) {
      return i;
    }
    Object localObject = null;
    int j = this.visibleItems / 2;
    for (int k = Math.max(this.currentItem - j, 0);; k++)
    {
      if (k >= Math.min(this.currentItem + this.visibleItems, localWheelAdapter.getItemsCount()))
      {
        if (localObject == null) {
          break;
        }
        return localObject.length();
      }
      String str = localWheelAdapter.getItem(k);
      if ((str != null) && ((localObject == null) || (localObject.length() < str.length()))) {
        localObject = str;
      }
    }
  }
  
  private String getTextItem(int paramInt)
  {
    if ((this.adapter == null) || (this.adapter.getItemsCount() == 0)) {}
    int i;
    do
    {
      return null;
      i = this.adapter.getItemsCount();
    } while (((paramInt < 0) || (paramInt >= i)) && (!this.isCyclic));
    for (;;)
    {
      if (paramInt >= 0)
      {
        int j = paramInt % i;
        return this.adapter.getItem(j);
      }
      paramInt += i;
    }
  }
  
  private void initData(Context paramContext)
  {
    this.gestureDetector = new GestureDetector(paramContext, this.gestureListener);
    this.gestureDetector.setIsLongpressEnabled(false);
    this.scroller = new Scroller(paramContext);
  }
  
  private void initResourcesIfNecessary()
  {
    if (this.itemsPaint == null)
    {
      this.itemsPaint = new TextPaint(33);
      this.itemsPaint.setTextSize(this.TEXT_SIZE);
    }
    if (this.valuePaint == null)
    {
      this.valuePaint = new TextPaint(37);
      this.valuePaint.setTextSize(this.TEXT_SIZE);
      this.valuePaint.setShadowLayer(0.1F, 0.0F, 0.1F, -4144960);
    }
    if (this.centerDrawable == null) {
      this.centerDrawable = getContext().getResources().getDrawable(2130838572);
    }
    if (this.topShadow == null) {
      this.topShadow = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, SHADOWS_COLORS);
    }
    if (this.bottomShadow == null) {
      this.bottomShadow = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, SHADOWS_COLORS);
    }
    setBackgroundResource(2130838571);
  }
  
  private void invalidateLayouts()
  {
    this.itemsLayout = null;
    this.valueLayout = null;
    this.scrollingOffset = 0;
  }
  
  private void justify()
  {
    if (this.adapter == null) {
      return;
    }
    this.lastScrollY = 0;
    int i = this.scrollingOffset;
    int j = getItemHeight();
    int k;
    if (i > 0) {
      if (this.currentItem < this.adapter.getItemsCount())
      {
        k = 1;
        if (((this.isCyclic) || (k != 0)) && (Math.abs(i) > j / 2.0F))
        {
          if (i >= 0) {
            break label129;
          }
          i += j + 1;
        }
      }
    }
    for (;;)
    {
      if (Math.abs(i) <= 1) {
        break label138;
      }
      this.scroller.startScroll(0, 0, 0, i, 400);
      setNextMessage(1);
      return;
      k = 0;
      break;
      if (this.currentItem > 0)
      {
        k = 1;
        break;
      }
      k = 0;
      break;
      label129:
      i -= j + 1;
    }
    label138:
    finishScrolling();
  }
  
  private void setNextMessage(int paramInt)
  {
    clearMessages();
    this.animationHandler.sendEmptyMessage(paramInt);
  }
  
  private void startScrolling()
  {
    if (!this.isScrollingPerformed)
    {
      this.isScrollingPerformed = true;
      notifyScrollingListenersAboutStart();
    }
  }
  
  public void addChangingListener(OnWheelChangedListener paramOnWheelChangedListener)
  {
    this.changingListeners.add(paramOnWheelChangedListener);
  }
  
  public void addScrollingListener(OnWheelScrollListener paramOnWheelScrollListener)
  {
    this.scrollingListeners.add(paramOnWheelScrollListener);
  }
  
  void finishScrolling()
  {
    if (this.isScrollingPerformed)
    {
      notifyScrollingListenersAboutEnd();
      this.isScrollingPerformed = false;
    }
    invalidateLayouts();
    invalidate();
  }
  
  public WheelAdapter getAdapter()
  {
    return this.adapter;
  }
  
  public int getCurrentItem()
  {
    return this.currentItem;
  }
  
  public String getLabel()
  {
    return this.label;
  }
  
  public int getVisibleItems()
  {
    return this.visibleItems;
  }
  
  public boolean isCyclic()
  {
    return this.isCyclic;
  }
  
  protected void notifyChangingListeners(int paramInt1, int paramInt2)
  {
    Iterator localIterator = this.changingListeners.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((OnWheelChangedListener)localIterator.next()).onChanged(this, paramInt1, paramInt2);
    }
  }
  
  protected void notifyScrollingListenersAboutEnd()
  {
    Iterator localIterator = this.scrollingListeners.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((OnWheelScrollListener)localIterator.next()).onScrollingFinished(this);
    }
  }
  
  protected void notifyScrollingListenersAboutStart()
  {
    Iterator localIterator = this.scrollingListeners.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((OnWheelScrollListener)localIterator.next()).onScrollingStarted(this);
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.itemsLayout == null)
    {
      if (this.itemsWidth != 0) {
        break label80;
      }
      calculateLayoutWidth(getWidth(), 1073741824);
    }
    for (;;)
    {
      if (this.itemsWidth > 0)
      {
        paramCanvas.save();
        paramCanvas.translate(10.0F, -this.ITEM_OFFSET);
        drawItems(paramCanvas);
        drawValue(paramCanvas);
        paramCanvas.restore();
      }
      drawCenterRect(paramCanvas);
      drawShadows(paramCanvas);
      return;
      label80:
      createLayouts(this.itemsWidth, this.labelWidth);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt2);
    int n = calculateLayoutWidth(k, i);
    int i1;
    if (j == 1073741824) {
      i1 = m;
    }
    for (;;)
    {
      setMeasuredDimension(n, i1);
      return;
      i1 = getDesiredHeight(this.itemsLayout);
      if (j == -2147483648) {
        i1 = Math.min(i1, m);
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (getAdapter() == null) {}
    while ((this.gestureDetector.onTouchEvent(paramMotionEvent)) || (paramMotionEvent.getAction() != 1)) {
      return true;
    }
    justify();
    return true;
  }
  
  public void removeChangingListener(OnWheelChangedListener paramOnWheelChangedListener)
  {
    this.changingListeners.remove(paramOnWheelChangedListener);
  }
  
  public void removeScrollingListener(OnWheelScrollListener paramOnWheelScrollListener)
  {
    this.scrollingListeners.remove(paramOnWheelScrollListener);
  }
  
  public void scroll(int paramInt1, int paramInt2)
  {
    this.scroller.forceFinished(true);
    this.lastScrollY = this.scrollingOffset;
    int i = paramInt1 * getItemHeight();
    this.scroller.startScroll(0, this.lastScrollY, 0, i - this.lastScrollY, paramInt2);
    setNextMessage(0);
    startScrolling();
  }
  
  public void setAdapter(WheelAdapter paramWheelAdapter)
  {
    this.adapter = paramWheelAdapter;
    invalidateLayouts();
    invalidate();
  }
  
  public void setCurrentItem(int paramInt)
  {
    setCurrentItem(paramInt, false);
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    if ((this.adapter == null) || (this.adapter.getItemsCount() == 0)) {}
    do
    {
      return;
      if ((paramInt >= 0) && (paramInt < this.adapter.getItemsCount())) {
        break;
      }
    } while (!this.isCyclic);
    for (;;)
    {
      if (paramInt >= 0)
      {
        paramInt %= this.adapter.getItemsCount();
        if (paramInt == this.currentItem) {
          break;
        }
        if (!paramBoolean) {
          break label101;
        }
        scroll(paramInt - this.currentItem, 400);
        return;
      }
      paramInt += this.adapter.getItemsCount();
    }
    label101:
    invalidateLayouts();
    int i = this.currentItem;
    this.currentItem = paramInt;
    notifyChangingListeners(i, this.currentItem);
    invalidate();
  }
  
  public void setCyclic(boolean paramBoolean)
  {
    this.isCyclic = paramBoolean;
    invalidate();
    invalidateLayouts();
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    this.scroller.forceFinished(true);
    this.scroller = new Scroller(getContext(), paramInterpolator);
  }
  
  public void setLabel(String paramString)
  {
    if ((this.label == null) || (!this.label.equals(paramString)))
    {
      this.label = paramString;
      this.labelLayout = null;
      invalidate();
    }
  }
  
  public void setVisibleItems(int paramInt)
  {
    this.visibleItems = paramInt;
    invalidate();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.wheelview.WheelView
 * JD-Core Version:    0.7.0.1
 */