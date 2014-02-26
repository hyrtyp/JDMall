package net.simonvt.numberpicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jd.lottery.lib.R.attr;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.styleable;
import java.text.DecimalFormatSymbols;
import java.util.Formatter;
import java.util.Locale;

public class NumberPicker
  extends LinearLayout
{
  private static final int DEFAULT_LAYOUT_RESOURCE_ID = 0;
  private static final long DEFAULT_LONG_PRESS_UPDATE_INTERVAL = 300L;
  private static final char[] DIGIT_CHARACTERS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785 };
  private static final int SELECTOR_ADJUSTMENT_DURATION_MILLIS = 800;
  private static final int SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT = 8;
  private static final int SELECTOR_MIDDLE_ITEM_INDEX = 1;
  private static final int SELECTOR_WHEEL_ITEM_COUNT = 3;
  private static final int SIZE_UNSPECIFIED = -1;
  private static final int SNAP_SCROLL_DURATION = 300;
  private static final float TOP_AND_BOTTOM_FADING_EDGE_STRENGTH = 0.9F;
  private static final int UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE = 48;
  private static final int UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT = 2;
  private static final TwoDigitFormatter sTwoDigitFormatter = new TwoDigitFormatter();
  private final Scroller mAdjustScroller;
  private BeginSoftInputOnLongPressCommand mBeginSoftInputOnLongPressCommand;
  private int mBottomSelectionDividerBottom;
  private ChangeCurrentByOneFromLongPressCommand mChangeCurrentByOneFromLongPressCommand;
  private final boolean mComputeMaxWidth;
  private int mCurrentScrollOffset;
  private final ImageButton mDecrementButton;
  private boolean mDecrementVirtualButtonPressed;
  private String[] mDisplayedValues;
  private final Scroller mFlingScroller;
  private Formatter mFormatter;
  private final boolean mHasSelectorWheel;
  private final ImageButton mIncrementButton;
  private boolean mIncrementVirtualButtonPressed;
  private boolean mIngonreMoveEvents;
  private int mInitialScrollOffset = -2147483648;
  private final EditText mInputText;
  private long mLastDownEventTime;
  private float mLastDownEventY;
  private float mLastDownOrMoveEventY;
  private int mLastHandledDownDpadKeyCode = -1;
  private long mLongPressUpdateInterval = 300L;
  private final int mMaxHeight;
  private int mMaxValue;
  private int mMaxWidth;
  private int mMaximumFlingVelocity;
  private final int mMinHeight;
  private int mMinValue;
  private final int mMinWidth;
  private int mMinimumFlingVelocity;
  private OnScrollListener mOnScrollListener;
  private OnValueChangeListener mOnValueChangeListener;
  private final PressedStateHelper mPressedStateHelper;
  private int mPreviousScrollerY;
  private int mScrollState = 0;
  private final Drawable mSelectionDivider;
  private final int mSelectionDividerHeight;
  private final int mSelectionDividersDistance;
  private int mSelectorElementHeight;
  private final SparseArray<String> mSelectorIndexToStringCache = new SparseArray();
  private final int[] mSelectorIndices = new int[3];
  private int mSelectorTextGapHeight;
  private final Paint mSelectorWheelPaint;
  private SetSelectionCommand mSetSelectionCommand;
  private boolean mShowSoftInputOnTap;
  private final int mSolidColor;
  private final int mTextSize;
  private int mTopSelectionDividerTop;
  private int mTouchSlop;
  private int mValue;
  private VelocityTracker mVelocityTracker;
  private final Drawable mVirtualButtonPressedDrawable;
  private boolean mWrapSelectorWheel;
  
  public NumberPicker(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NumberPicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.numberPickerStyle);
  }
  
  public NumberPicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.NumberPicker, paramInt, 0);
    int i = localTypedArray.getResourceId(8, 0);
    if (i != 0) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      this.mHasSelectorWheel = bool1;
      this.mSolidColor = localTypedArray.getColor(0, 0);
      this.mSelectionDivider = localTypedArray.getDrawable(1);
      this.mSelectionDividerHeight = localTypedArray.getDimensionPixelSize(2, (int)TypedValue.applyDimension(1, 2.0F, getResources().getDisplayMetrics()));
      this.mSelectionDividersDistance = localTypedArray.getDimensionPixelSize(3, (int)TypedValue.applyDimension(1, 48.0F, getResources().getDisplayMetrics()));
      this.mMinHeight = localTypedArray.getDimensionPixelSize(4, -1);
      this.mMaxHeight = localTypedArray.getDimensionPixelSize(5, -1);
      if ((this.mMinHeight == -1) || (this.mMaxHeight == -1) || (this.mMinHeight <= this.mMaxHeight)) {
        break;
      }
      throw new IllegalArgumentException("minHeight > maxHeight");
    }
    this.mMinWidth = localTypedArray.getDimensionPixelSize(6, -1);
    this.mMaxWidth = localTypedArray.getDimensionPixelSize(7, -1);
    if ((this.mMinWidth != -1) && (this.mMaxWidth != -1) && (this.mMinWidth > this.mMaxWidth)) {
      throw new IllegalArgumentException("minWidth > maxWidth");
    }
    boolean bool2;
    boolean bool3;
    if (this.mMaxWidth == -1)
    {
      bool2 = true;
      this.mComputeMaxWidth = bool2;
      this.mVirtualButtonPressedDrawable = localTypedArray.getDrawable(9);
      localTypedArray.recycle();
      this.mPressedStateHelper = new PressedStateHelper();
      if (!this.mHasSelectorWheel) {
        break label724;
      }
      bool3 = false;
      label332:
      setWillNotDraw(bool3);
      ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(i, this, true);
      View.OnClickListener local1 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          NumberPicker.this.hideSoftInput();
          NumberPicker.this.mInputText.clearFocus();
          if (paramAnonymousView.getId() == R.id.np__increment)
          {
            NumberPicker.this.changeValueByOne(true);
            return;
          }
          NumberPicker.this.changeValueByOne(false);
        }
      };
      View.OnLongClickListener local2 = new View.OnLongClickListener()
      {
        public boolean onLongClick(View paramAnonymousView)
        {
          NumberPicker.this.hideSoftInput();
          NumberPicker.this.mInputText.clearFocus();
          if (paramAnonymousView.getId() == R.id.np__increment)
          {
            NumberPicker.this.postChangeCurrentByOneFromLongPress(true, 0L);
            return true;
          }
          NumberPicker.this.postChangeCurrentByOneFromLongPress(false, 0L);
          return true;
        }
      };
      if (this.mHasSelectorWheel) {
        break label730;
      }
      this.mIncrementButton = ((ImageButton)findViewById(R.id.np__increment));
      this.mIncrementButton.setOnClickListener(local1);
      this.mIncrementButton.setOnLongClickListener(local2);
      label418:
      if (this.mHasSelectorWheel) {
        break label738;
      }
      this.mDecrementButton = ((ImageButton)findViewById(R.id.np__decrement));
      this.mDecrementButton.setOnClickListener(local1);
      this.mDecrementButton.setOnLongClickListener(local2);
    }
    for (;;)
    {
      this.mInputText = ((EditText)findViewById(R.id.np__numberpicker_input));
      this.mInputText.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            NumberPicker.this.mInputText.selectAll();
            return;
          }
          NumberPicker.this.mInputText.setSelection(0, 0);
          NumberPicker.this.validateInputTextView(paramAnonymousView);
        }
      });
      EditText localEditText = this.mInputText;
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new InputTextFilter();
      localEditText.setFilters(arrayOfInputFilter);
      this.mInputText.setRawInputType(2);
      this.mInputText.setImeOptions(6);
      this.mInputText.setTextColor(getResources().getColor(17170444));
      ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
      this.mTouchSlop = localViewConfiguration.getScaledTouchSlop();
      this.mMinimumFlingVelocity = localViewConfiguration.getScaledMinimumFlingVelocity();
      this.mMaximumFlingVelocity = (localViewConfiguration.getScaledMaximumFlingVelocity() / 8);
      this.mTextSize = ((int)this.mInputText.getTextSize());
      Paint localPaint = new Paint();
      localPaint.setAntiAlias(true);
      localPaint.setTextAlign(Paint.Align.CENTER);
      localPaint.setTextSize(this.mTextSize);
      localPaint.setTypeface(this.mInputText.getTypeface());
      localPaint.setColor(this.mInputText.getTextColors().getColorForState(ENABLED_STATE_SET, -1));
      this.mSelectorWheelPaint = localPaint;
      this.mFlingScroller = new Scroller(getContext(), null, true);
      this.mAdjustScroller = new Scroller(getContext(), new DecelerateInterpolator(2.5F));
      updateInputTextView();
      return;
      bool2 = false;
      break;
      label724:
      bool3 = true;
      break label332;
      label730:
      this.mIncrementButton = null;
      break label418;
      label738:
      this.mDecrementButton = null;
    }
  }
  
  private void changeValueByOne(boolean paramBoolean)
  {
    if (this.mHasSelectorWheel)
    {
      this.mInputText.setVisibility(4);
      if (!moveToFinalScrollerPosition(this.mFlingScroller)) {
        moveToFinalScrollerPosition(this.mAdjustScroller);
      }
      this.mPreviousScrollerY = 0;
      if (paramBoolean) {
        this.mFlingScroller.startScroll(0, 0, 0, -this.mSelectorElementHeight, 300);
      }
      for (;;)
      {
        invalidate();
        return;
        this.mFlingScroller.startScroll(0, 0, 0, this.mSelectorElementHeight, 300);
      }
    }
    if (paramBoolean)
    {
      setValueInternal(1 + this.mValue, true);
      return;
    }
    setValueInternal(-1 + this.mValue, true);
  }
  
  private void decrementSelectorIndices(int[] paramArrayOfInt)
  {
    for (int i = -1 + paramArrayOfInt.length;; i--)
    {
      if (i <= 0)
      {
        int j = -1 + paramArrayOfInt[1];
        if ((this.mWrapSelectorWheel) && (j < this.mMinValue)) {
          j = this.mMaxValue;
        }
        paramArrayOfInt[0] = j;
        ensureCachedScrollSelectorValue(j);
        return;
      }
      paramArrayOfInt[i] = paramArrayOfInt[(i - 1)];
    }
  }
  
  private void ensureCachedScrollSelectorValue(int paramInt)
  {
    SparseArray localSparseArray = this.mSelectorIndexToStringCache;
    if ((String)localSparseArray.get(paramInt) != null) {
      return;
    }
    String str;
    if ((paramInt < this.mMinValue) || (paramInt > this.mMaxValue)) {
      str = "";
    }
    for (;;)
    {
      localSparseArray.put(paramInt, str);
      return;
      if (this.mDisplayedValues != null)
      {
        int i = paramInt - this.mMinValue;
        str = this.mDisplayedValues[i];
      }
      else
      {
        str = formatNumber(paramInt);
      }
    }
  }
  
  private boolean ensureScrollWheelAdjusted()
  {
    int i = this.mInitialScrollOffset - this.mCurrentScrollOffset;
    boolean bool = false;
    if (i != 0)
    {
      this.mPreviousScrollerY = 0;
      if (Math.abs(i) > this.mSelectorElementHeight / 2) {
        if (i <= 0) {
          break label70;
        }
      }
    }
    label70:
    for (int j = -this.mSelectorElementHeight;; j = this.mSelectorElementHeight)
    {
      i += j;
      this.mAdjustScroller.startScroll(0, 0, 0, i, 800);
      invalidate();
      bool = true;
      return bool;
    }
  }
  
  private void fling(int paramInt)
  {
    this.mPreviousScrollerY = 0;
    if (paramInt > 0) {
      this.mFlingScroller.fling(0, 0, 0, paramInt, 0, 0, 0, 2147483647);
    }
    for (;;)
    {
      invalidate();
      return;
      this.mFlingScroller.fling(0, 2147483647, 0, paramInt, 0, 0, 0, 2147483647);
    }
  }
  
  private String formatNumber(int paramInt)
  {
    if (this.mFormatter != null) {
      return this.mFormatter.format(paramInt);
    }
    return formatNumberWithLocale(paramInt);
  }
  
  private static String formatNumberWithLocale(int paramInt)
  {
    Locale localLocale = Locale.getDefault();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return String.format(localLocale, "%d", arrayOfObject);
  }
  
  private int getSelectedPos(String paramString)
  {
    if (this.mDisplayedValues == null) {}
    try
    {
      int k = Integer.parseInt(paramString);
      return k;
    }
    catch (NumberFormatException localNumberFormatException2) {}
    for (int i = 0;; i++)
    {
      if (i >= this.mDisplayedValues.length) {}
      try
      {
        int j = Integer.parseInt(paramString);
        return j;
      }
      catch (NumberFormatException localNumberFormatException1)
      {
        break;
      }
      paramString = paramString.toLowerCase();
      if (this.mDisplayedValues[i].toLowerCase().startsWith(paramString)) {
        return i + this.mMinValue;
      }
    }
    return this.mMinValue;
  }
  
  public static final Formatter getTwoDigitFormatter()
  {
    return sTwoDigitFormatter;
  }
  
  private int getWrappedSelectorIndex(int paramInt)
  {
    if (paramInt > this.mMaxValue) {
      paramInt = -1 + (this.mMinValue + (paramInt - this.mMaxValue) % (this.mMaxValue - this.mMinValue));
    }
    while (paramInt >= this.mMinValue) {
      return paramInt;
    }
    return 1 + (this.mMaxValue - (this.mMinValue - paramInt) % (this.mMaxValue - this.mMinValue));
  }
  
  private void hideSoftInput()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    if ((localInputMethodManager != null) && (localInputMethodManager.isActive(this.mInputText)))
    {
      localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
      if (this.mHasSelectorWheel) {
        this.mInputText.setVisibility(4);
      }
    }
  }
  
  private void incrementSelectorIndices(int[] paramArrayOfInt)
  {
    for (int i = 0;; i++)
    {
      if (i >= -1 + paramArrayOfInt.length)
      {
        int j = 1 + paramArrayOfInt[(-2 + paramArrayOfInt.length)];
        if ((this.mWrapSelectorWheel) && (j > this.mMaxValue)) {
          j = this.mMinValue;
        }
        paramArrayOfInt[(-1 + paramArrayOfInt.length)] = j;
        ensureCachedScrollSelectorValue(j);
        return;
      }
      paramArrayOfInt[i] = paramArrayOfInt[(i + 1)];
    }
  }
  
  private void initializeFadingEdges()
  {
    setVerticalFadingEdgeEnabled(true);
    setFadingEdgeLength((getBottom() - getTop() - this.mTextSize) / 2);
  }
  
  private void initializeSelectorWheel()
  {
    initializeSelectorWheelIndices();
    int[] arrayOfInt = this.mSelectorIndices;
    int i = arrayOfInt.length * this.mTextSize;
    this.mSelectorTextGapHeight = ((int)(0.5F + (getBottom() - getTop() - i) / arrayOfInt.length));
    this.mSelectorElementHeight = (this.mTextSize + this.mSelectorTextGapHeight);
    this.mInitialScrollOffset = (this.mInputText.getBaseline() + this.mInputText.getTop() - 1 * this.mSelectorElementHeight);
    this.mCurrentScrollOffset = this.mInitialScrollOffset;
    updateInputTextView();
  }
  
  private void initializeSelectorWheelIndices()
  {
    this.mSelectorIndexToStringCache.clear();
    int[] arrayOfInt = this.mSelectorIndices;
    int i = getValue();
    for (int j = 0;; j++)
    {
      if (j >= this.mSelectorIndices.length) {
        return;
      }
      int k = i + (j - 1);
      if (this.mWrapSelectorWheel) {
        k = getWrappedSelectorIndex(k);
      }
      arrayOfInt[j] = k;
      ensureCachedScrollSelectorValue(arrayOfInt[j]);
    }
  }
  
  private int makeMeasureSpec(int paramInt1, int paramInt2)
  {
    if (paramInt2 == -1) {
      return paramInt1;
    }
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt1);
    switch (j)
    {
    case 1073741824: 
    default: 
      throw new IllegalArgumentException("Unknown measure mode: " + j);
    case -2147483648: 
      return View.MeasureSpec.makeMeasureSpec(Math.min(i, paramInt2), 1073741824);
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
  }
  
  private boolean moveToFinalScrollerPosition(Scroller paramScroller)
  {
    paramScroller.forceFinished(true);
    int i = paramScroller.getFinalY() - paramScroller.getCurrY();
    int j = (i + this.mCurrentScrollOffset) % this.mSelectorElementHeight;
    int k = this.mInitialScrollOffset - j;
    if (k != 0)
    {
      if (Math.abs(k) > this.mSelectorElementHeight / 2)
      {
        if (k <= 0) {
          break label79;
        }
        k -= this.mSelectorElementHeight;
      }
      for (;;)
      {
        scrollBy(0, i + k);
        return true;
        label79:
        k += this.mSelectorElementHeight;
      }
    }
    return false;
  }
  
  private void notifyChange(int paramInt1, int paramInt2)
  {
    if (this.mOnValueChangeListener != null) {
      this.mOnValueChangeListener.onValueChange(this, paramInt1, this.mValue);
    }
  }
  
  private void onScrollStateChange(int paramInt)
  {
    if (this.mScrollState == paramInt) {}
    do
    {
      return;
      this.mScrollState = paramInt;
    } while (this.mOnScrollListener == null);
    this.mOnScrollListener.onScrollStateChange(this, paramInt);
  }
  
  private void onScrollerFinished(Scroller paramScroller)
  {
    if (paramScroller == this.mFlingScroller)
    {
      if (!ensureScrollWheelAdjusted()) {
        updateInputTextView();
      }
      onScrollStateChange(0);
    }
    while (this.mScrollState == 1) {
      return;
    }
    updateInputTextView();
  }
  
  private void postBeginSoftInputOnLongPressCommand()
  {
    if (this.mBeginSoftInputOnLongPressCommand == null) {
      this.mBeginSoftInputOnLongPressCommand = new BeginSoftInputOnLongPressCommand();
    }
    for (;;)
    {
      postDelayed(this.mBeginSoftInputOnLongPressCommand, ViewConfiguration.getLongPressTimeout());
      return;
      removeCallbacks(this.mBeginSoftInputOnLongPressCommand);
    }
  }
  
  private void postChangeCurrentByOneFromLongPress(boolean paramBoolean, long paramLong)
  {
    if (this.mChangeCurrentByOneFromLongPressCommand == null) {
      this.mChangeCurrentByOneFromLongPressCommand = new ChangeCurrentByOneFromLongPressCommand();
    }
    for (;;)
    {
      this.mChangeCurrentByOneFromLongPressCommand.setStep(paramBoolean);
      postDelayed(this.mChangeCurrentByOneFromLongPressCommand, paramLong);
      return;
      removeCallbacks(this.mChangeCurrentByOneFromLongPressCommand);
    }
  }
  
  private void postSetSelectionCommand(int paramInt1, int paramInt2)
  {
    if (this.mSetSelectionCommand == null) {
      this.mSetSelectionCommand = new SetSelectionCommand();
    }
    for (;;)
    {
      this.mSetSelectionCommand.mSelectionStart = paramInt1;
      this.mSetSelectionCommand.mSelectionEnd = paramInt2;
      post(this.mSetSelectionCommand);
      return;
      removeCallbacks(this.mSetSelectionCommand);
    }
  }
  
  private void removeAllCallbacks()
  {
    if (this.mChangeCurrentByOneFromLongPressCommand != null) {
      removeCallbacks(this.mChangeCurrentByOneFromLongPressCommand);
    }
    if (this.mSetSelectionCommand != null) {
      removeCallbacks(this.mSetSelectionCommand);
    }
    if (this.mBeginSoftInputOnLongPressCommand != null) {
      removeCallbacks(this.mBeginSoftInputOnLongPressCommand);
    }
    this.mPressedStateHelper.cancel();
  }
  
  private void removeBeginSoftInputCommand()
  {
    if (this.mBeginSoftInputOnLongPressCommand != null) {
      removeCallbacks(this.mBeginSoftInputOnLongPressCommand);
    }
  }
  
  private void removeChangeCurrentByOneFromLongPress()
  {
    if (this.mChangeCurrentByOneFromLongPressCommand != null) {
      removeCallbacks(this.mChangeCurrentByOneFromLongPressCommand);
    }
  }
  
  @SuppressLint({"Override"})
  public static int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt1;
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt2);
    switch (j)
    {
    }
    for (;;)
    {
      return i | 0xFF000000 & paramInt3;
      i = paramInt1;
      continue;
      if (k < paramInt1)
      {
        i = k | 0x1000000;
      }
      else
      {
        i = paramInt1;
        continue;
        i = k;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  private int resolveSizeAndStateRespectingMinSize(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 != -1) {
      paramInt2 = resolveSizeAndState(Math.max(paramInt1, paramInt2), paramInt3, 0);
    }
    return paramInt2;
  }
  
  private void setValueInternal(int paramInt, boolean paramBoolean)
  {
    if (this.mValue == paramInt) {
      return;
    }
    if (this.mWrapSelectorWheel) {}
    for (int i = getWrappedSelectorIndex(paramInt);; i = Math.min(Math.max(paramInt, this.mMinValue), this.mMaxValue))
    {
      int j = this.mValue;
      this.mValue = i;
      updateInputTextView();
      if (paramBoolean) {
        notifyChange(j, i);
      }
      initializeSelectorWheelIndices();
      invalidate();
      return;
    }
  }
  
  private void showSoftInput()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    if (localInputMethodManager != null)
    {
      if (this.mHasSelectorWheel) {
        this.mInputText.setVisibility(0);
      }
      this.mInputText.requestFocus();
      localInputMethodManager.showSoftInput(this.mInputText, 0);
    }
  }
  
  private void tryComputeMaxWidth()
  {
    if (!this.mComputeMaxWidth) {}
    int i;
    float f2;
    int n;
    int i1;
    int i2;
    label39:
    label52:
    int m;
    do
    {
      return;
      i = 0;
      if (this.mDisplayedValues != null) {
        break label145;
      }
      f2 = 0.0F;
      n = 0;
      if (n <= 9) {
        break;
      }
      i1 = 0;
      i2 = this.mMaxValue;
      if (i2 > 0) {
        break label132;
      }
      i = (int)(f2 * i1);
      m = i + (this.mInputText.getPaddingLeft() + this.mInputText.getPaddingRight());
    } while (this.mMaxWidth == m);
    if (m > this.mMinWidth) {}
    for (this.mMaxWidth = m;; this.mMaxWidth = this.mMinWidth)
    {
      invalidate();
      return;
      float f3 = this.mSelectorWheelPaint.measureText(formatNumberWithLocale(n));
      if (f3 > f2) {
        f2 = f3;
      }
      n++;
      break;
      label132:
      i1++;
      i2 /= 10;
      break label39;
      label145:
      int j = this.mDisplayedValues.length;
      for (int k = 0; k < j; k++)
      {
        float f1 = this.mSelectorWheelPaint.measureText(this.mDisplayedValues[k]);
        if (f1 > i) {
          i = (int)f1;
        }
      }
      break label52;
    }
  }
  
  private boolean updateInputTextView()
  {
    if (this.mDisplayedValues == null) {}
    for (String str = formatNumber(this.mValue); (!TextUtils.isEmpty(str)) && (!str.equals(this.mInputText.getText().toString())); str = this.mDisplayedValues[(this.mValue - this.mMinValue)])
    {
      this.mInputText.setText(str);
      return true;
    }
    return false;
  }
  
  private void validateInputTextView(View paramView)
  {
    String str = String.valueOf(((TextView)paramView).getText());
    if (TextUtils.isEmpty(str))
    {
      updateInputTextView();
      return;
    }
    setValueInternal(getSelectedPos(str.toString()), true);
  }
  
  public void computeScroll()
  {
    Scroller localScroller = this.mFlingScroller;
    if (localScroller.isFinished())
    {
      localScroller = this.mAdjustScroller;
      if (localScroller.isFinished()) {
        return;
      }
    }
    localScroller.computeScrollOffset();
    int i = localScroller.getCurrY();
    if (this.mPreviousScrollerY == 0) {
      this.mPreviousScrollerY = localScroller.getStartY();
    }
    scrollBy(0, i - this.mPreviousScrollerY);
    this.mPreviousScrollerY = i;
    if (localScroller.isFinished())
    {
      onScrollerFinished(localScroller);
      return;
    }
    invalidate();
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool1 = true;
    int i = paramKeyEvent.getKeyCode();
    switch (i)
    {
    }
    label127:
    do
    {
      bool1 = super.dispatchKeyEvent(paramKeyEvent);
      do
      {
        return bool1;
        removeAllCallbacks();
        break;
        if (!this.mHasSelectorWheel) {
          break;
        }
        switch (paramKeyEvent.getAction())
        {
        default: 
          break;
        case 0: 
          if ((!this.mWrapSelectorWheel) && (i != 20)) {
            break label168;
          }
          if (getValue() >= getMaxValue()) {
            break;
          }
          requestFocus();
          this.mLastHandledDownDpadKeyCode = i;
          removeAllCallbacks();
        }
      } while (!this.mFlingScroller.isFinished());
      if (i == 20) {}
      for (boolean bool2 = bool1;; bool2 = false)
      {
        changeValueByOne(bool2);
        return bool1;
        if (getValue() <= getMinValue()) {
          break;
        }
        break label127;
      }
    } while (this.mLastHandledDownDpadKeyCode != i);
    label168:
    this.mLastHandledDownDpadKeyCode = -1;
    return bool1;
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      removeAllCallbacks();
    }
  }
  
  public boolean dispatchTrackballEvent(MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.dispatchTrackballEvent(paramMotionEvent);
      removeAllCallbacks();
    }
  }
  
  protected float getBottomFadingEdgeStrength()
  {
    return 0.9F;
  }
  
  public String[] getDisplayedValues()
  {
    return this.mDisplayedValues;
  }
  
  public int getMaxValue()
  {
    return this.mMaxValue;
  }
  
  public int getMinValue()
  {
    return this.mMinValue;
  }
  
  public int getSolidColor()
  {
    return this.mSolidColor;
  }
  
  protected float getTopFadingEdgeStrength()
  {
    return 0.9F;
  }
  
  public int getValue()
  {
    return this.mValue;
  }
  
  public boolean getWrapSelectorWheel()
  {
    return this.mWrapSelectorWheel;
  }
  
  protected void onDetachedFromWindow()
  {
    removeAllCallbacks();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (!this.mHasSelectorWheel)
    {
      super.onDraw(paramCanvas);
      return;
    }
    float f1 = (getRight() - getLeft()) / 2;
    float f2 = this.mCurrentScrollOffset;
    if ((this.mVirtualButtonPressedDrawable != null) && (this.mScrollState == 0))
    {
      if (this.mDecrementVirtualButtonPressed)
      {
        this.mVirtualButtonPressedDrawable.setState(PRESSED_ENABLED_STATE_SET);
        this.mVirtualButtonPressedDrawable.setBounds(0, 0, getRight(), this.mTopSelectionDividerTop);
        this.mVirtualButtonPressedDrawable.draw(paramCanvas);
      }
      if (this.mIncrementVirtualButtonPressed)
      {
        this.mVirtualButtonPressedDrawable.setState(PRESSED_ENABLED_STATE_SET);
        this.mVirtualButtonPressedDrawable.setBounds(0, this.mBottomSelectionDividerBottom, getRight(), getBottom());
        this.mVirtualButtonPressedDrawable.draw(paramCanvas);
      }
    }
    int[] arrayOfInt = this.mSelectorIndices;
    for (int i = 0;; i++)
    {
      if (i >= arrayOfInt.length)
      {
        if (this.mSelectionDivider == null) {
          break;
        }
        int k = this.mTopSelectionDividerTop;
        int m = k + this.mSelectionDividerHeight;
        this.mSelectionDivider.setBounds(0, k, getRight(), m);
        this.mSelectionDivider.draw(paramCanvas);
        int n = this.mBottomSelectionDividerBottom;
        int i1 = n - this.mSelectionDividerHeight;
        this.mSelectionDivider.setBounds(0, i1, getRight(), n);
        this.mSelectionDivider.draw(paramCanvas);
        return;
      }
      int j = arrayOfInt[i];
      String str = (String)this.mSelectorIndexToStringCache.get(j);
      if ((i != 1) || (this.mInputText.getVisibility() != 0)) {
        paramCanvas.drawText(str, f1, f2, this.mSelectorWheelPaint);
      }
      f2 += this.mSelectorElementHeight;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!this.mHasSelectorWheel) || (!isEnabled())) {
      return false;
    }
    switch (0xFF & paramMotionEvent.getAction())
    {
    default: 
      return false;
    }
    removeAllCallbacks();
    this.mInputText.setVisibility(4);
    float f = paramMotionEvent.getY();
    this.mLastDownEventY = f;
    this.mLastDownOrMoveEventY = f;
    this.mLastDownEventTime = paramMotionEvent.getEventTime();
    this.mIngonreMoveEvents = false;
    this.mShowSoftInputOnTap = false;
    if (this.mLastDownEventY < this.mTopSelectionDividerTop) {
      if (this.mScrollState == 0) {
        this.mPressedStateHelper.buttonPressDelayed(2);
      }
    }
    for (;;)
    {
      getParent().requestDisallowInterceptTouchEvent(true);
      if (this.mFlingScroller.isFinished()) {
        break;
      }
      this.mFlingScroller.forceFinished(true);
      this.mAdjustScroller.forceFinished(true);
      onScrollStateChange(0);
      return true;
      if ((this.mLastDownEventY > this.mBottomSelectionDividerBottom) && (this.mScrollState == 0)) {
        this.mPressedStateHelper.buttonPressDelayed(1);
      }
    }
    if (!this.mAdjustScroller.isFinished())
    {
      this.mFlingScroller.forceFinished(true);
      this.mAdjustScroller.forceFinished(true);
      return true;
    }
    if (this.mLastDownEventY < this.mTopSelectionDividerTop)
    {
      hideSoftInput();
      postChangeCurrentByOneFromLongPress(false, ViewConfiguration.getLongPressTimeout());
      return true;
    }
    if (this.mLastDownEventY > this.mBottomSelectionDividerBottom)
    {
      hideSoftInput();
      postChangeCurrentByOneFromLongPress(true, ViewConfiguration.getLongPressTimeout());
      return true;
    }
    this.mShowSoftInputOnTap = true;
    postBeginSoftInputOnLongPressCommand();
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.mHasSelectorWheel) {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    do
    {
      return;
      int i = getMeasuredWidth();
      int j = getMeasuredHeight();
      int k = this.mInputText.getMeasuredWidth();
      int m = this.mInputText.getMeasuredHeight();
      int n = (i - k) / 2;
      int i1 = (j - m) / 2;
      int i2 = n + k;
      int i3 = i1 + m;
      this.mInputText.layout(n, i1, i2, i3);
    } while (!paramBoolean);
    initializeSelectorWheel();
    initializeFadingEdges();
    this.mTopSelectionDividerTop = ((getHeight() - this.mSelectionDividersDistance) / 2 - this.mSelectionDividerHeight);
    this.mBottomSelectionDividerBottom = (this.mTopSelectionDividerTop + 2 * this.mSelectionDividerHeight + this.mSelectionDividersDistance);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (!this.mHasSelectorWheel)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    super.onMeasure(makeMeasureSpec(paramInt1, this.mMaxWidth), makeMeasureSpec(paramInt2, this.mMaxHeight));
    setMeasuredDimension(resolveSizeAndStateRespectingMinSize(this.mMinWidth, getMeasuredWidth(), paramInt1), resolveSizeAndStateRespectingMinSize(this.mMinHeight, getMeasuredHeight(), paramInt2));
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!isEnabled()) || (!this.mHasSelectorWheel)) {
      return false;
    }
    if (this.mVelocityTracker == null) {
      this.mVelocityTracker = VelocityTracker.obtain();
    }
    this.mVelocityTracker.addMovement(paramMotionEvent);
    switch (0xFF & paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      if (!this.mIngonreMoveEvents)
      {
        float f = paramMotionEvent.getY();
        if (this.mScrollState != 1) {
          if ((int)Math.abs(f - this.mLastDownEventY) > this.mTouchSlop)
          {
            removeAllCallbacks();
            onScrollStateChange(1);
          }
        }
        for (;;)
        {
          this.mLastDownOrMoveEventY = f;
          break;
          scrollBy(0, (int)(f - this.mLastDownOrMoveEventY));
          invalidate();
        }
        removeBeginSoftInputCommand();
        removeChangeCurrentByOneFromLongPress();
        this.mPressedStateHelper.cancel();
        VelocityTracker localVelocityTracker = this.mVelocityTracker;
        localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
        int i = (int)localVelocityTracker.getYVelocity();
        if (Math.abs(i) <= this.mMinimumFlingVelocity) {
          break;
        }
        fling(i);
        onScrollStateChange(2);
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
      }
    }
    int j = (int)paramMotionEvent.getY();
    int k = (int)Math.abs(j - this.mLastDownEventY);
    (paramMotionEvent.getEventTime() - this.mLastDownEventTime);
    ViewConfiguration.getTapTimeout();
    if (k <= this.mTouchSlop) {
      if (this.mShowSoftInputOnTap)
      {
        this.mShowSoftInputOnTap = false;
        showSoftInput();
      }
    }
    for (;;)
    {
      onScrollStateChange(0);
      break;
      int m = -1 + j / this.mSelectorElementHeight;
      if (m > 0)
      {
        changeValueByOne(true);
        this.mPressedStateHelper.buttonTapped(1);
      }
      else if (m < 0)
      {
        changeValueByOne(false);
        this.mPressedStateHelper.buttonTapped(2);
        continue;
        ensureScrollWheelAdjusted();
      }
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = this.mSelectorIndices;
    if ((!this.mWrapSelectorWheel) && (paramInt2 > 0) && (arrayOfInt[1] <= this.mMinValue))
    {
      this.mCurrentScrollOffset = this.mInitialScrollOffset;
      return;
    }
    if ((!this.mWrapSelectorWheel) && (paramInt2 < 0) && (arrayOfInt[1] >= this.mMaxValue))
    {
      this.mCurrentScrollOffset = this.mInitialScrollOffset;
      return;
    }
    for (this.mCurrentScrollOffset = (paramInt2 + this.mCurrentScrollOffset);; this.mCurrentScrollOffset = this.mInitialScrollOffset) {
      do
      {
        if (this.mCurrentScrollOffset - this.mInitialScrollOffset <= this.mSelectorTextGapHeight)
        {
          while (this.mCurrentScrollOffset - this.mInitialScrollOffset < -this.mSelectorTextGapHeight)
          {
            this.mCurrentScrollOffset += this.mSelectorElementHeight;
            incrementSelectorIndices(arrayOfInt);
            setValueInternal(arrayOfInt[1], true);
            if ((!this.mWrapSelectorWheel) && (arrayOfInt[1] >= this.mMaxValue)) {
              this.mCurrentScrollOffset = this.mInitialScrollOffset;
            }
          }
          break;
        }
        this.mCurrentScrollOffset -= this.mSelectorElementHeight;
        decrementSelectorIndices(arrayOfInt);
        setValueInternal(arrayOfInt[1], true);
      } while ((this.mWrapSelectorWheel) || (arrayOfInt[1] > this.mMinValue));
    }
  }
  
  public void setDisplayedValues(String[] paramArrayOfString)
  {
    if (this.mDisplayedValues == paramArrayOfString) {
      return;
    }
    this.mDisplayedValues = paramArrayOfString;
    if (this.mDisplayedValues != null) {
      this.mInputText.setRawInputType(524289);
    }
    for (;;)
    {
      updateInputTextView();
      initializeSelectorWheelIndices();
      tryComputeMaxWidth();
      return;
      this.mInputText.setRawInputType(2);
    }
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (!this.mHasSelectorWheel) {
      this.mIncrementButton.setEnabled(paramBoolean);
    }
    if (!this.mHasSelectorWheel) {
      this.mDecrementButton.setEnabled(paramBoolean);
    }
    this.mInputText.setEnabled(paramBoolean);
  }
  
  public void setFormatter(Formatter paramFormatter)
  {
    if (paramFormatter == this.mFormatter) {
      return;
    }
    this.mFormatter = paramFormatter;
    initializeSelectorWheelIndices();
    updateInputTextView();
  }
  
  public void setMaxValue(int paramInt)
  {
    if (this.mMaxValue == paramInt) {
      return;
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("maxValue must be >= 0");
    }
    this.mMaxValue = paramInt;
    if (this.mMaxValue < this.mValue) {
      this.mValue = this.mMaxValue;
    }
    if (this.mMaxValue - this.mMinValue > this.mSelectorIndices.length) {}
    for (boolean bool = true;; bool = false)
    {
      setWrapSelectorWheel(bool);
      initializeSelectorWheelIndices();
      updateInputTextView();
      tryComputeMaxWidth();
      invalidate();
      return;
    }
  }
  
  public void setMinValue(int paramInt)
  {
    if (this.mMinValue == paramInt) {
      return;
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("minValue must be >= 0");
    }
    this.mMinValue = paramInt;
    if (this.mMinValue > this.mValue) {
      this.mValue = this.mMinValue;
    }
    if (this.mMaxValue - this.mMinValue > this.mSelectorIndices.length) {}
    for (boolean bool = true;; bool = false)
    {
      setWrapSelectorWheel(bool);
      initializeSelectorWheelIndices();
      updateInputTextView();
      tryComputeMaxWidth();
      invalidate();
      return;
    }
  }
  
  public void setOnLongPressUpdateInterval(long paramLong)
  {
    this.mLongPressUpdateInterval = paramLong;
  }
  
  public void setOnScrollListener(OnScrollListener paramOnScrollListener)
  {
    this.mOnScrollListener = paramOnScrollListener;
  }
  
  public void setOnValueChangedListener(OnValueChangeListener paramOnValueChangeListener)
  {
    this.mOnValueChangeListener = paramOnValueChangeListener;
  }
  
  public void setValue(int paramInt)
  {
    setValueInternal(paramInt, false);
  }
  
  public void setWrapSelectorWheel(boolean paramBoolean)
  {
    if (this.mMaxValue - this.mMinValue >= this.mSelectorIndices.length) {}
    for (int i = 1;; i = 0)
    {
      if (((!paramBoolean) || (i != 0)) && (paramBoolean != this.mWrapSelectorWheel)) {
        this.mWrapSelectorWheel = paramBoolean;
      }
      return;
    }
  }
  
  class BeginSoftInputOnLongPressCommand
    implements Runnable
  {
    BeginSoftInputOnLongPressCommand() {}
    
    public void run()
    {
      NumberPicker.this.showSoftInput();
      NumberPicker.this.mIngonreMoveEvents = true;
    }
  }
  
  class ChangeCurrentByOneFromLongPressCommand
    implements Runnable
  {
    private boolean mIncrement;
    
    ChangeCurrentByOneFromLongPressCommand() {}
    
    private void setStep(boolean paramBoolean)
    {
      this.mIncrement = paramBoolean;
    }
    
    public void run()
    {
      NumberPicker.this.changeValueByOne(this.mIncrement);
      NumberPicker.this.postDelayed(this, NumberPicker.this.mLongPressUpdateInterval);
    }
  }
  
  public static class CustomEditText
    extends EditText
  {
    public CustomEditText(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public void onEditorAction(int paramInt)
    {
      super.onEditorAction(paramInt);
      if (paramInt == 6) {
        clearFocus();
      }
    }
  }
  
  public static abstract interface Formatter
  {
    public abstract String format(int paramInt);
  }
  
  class InputTextFilter
    extends NumberKeyListener
  {
    InputTextFilter() {}
    
    public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
    {
      int i = 0;
      if (NumberPicker.this.mDisplayedValues == null)
      {
        CharSequence localCharSequence = super.filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
        if (localCharSequence == null) {
          localCharSequence = paramCharSequence.subSequence(paramInt1, paramInt2);
        }
        String str5 = String.valueOf(paramSpanned.subSequence(0, paramInt3)) + localCharSequence + paramSpanned.subSequence(paramInt4, paramSpanned.length());
        if ("".equals(str5)) {
          return str5;
        }
        if (NumberPicker.this.getSelectedPos(str5) > NumberPicker.this.mMaxValue) {
          return "";
        }
        return localCharSequence;
      }
      String str1 = String.valueOf(paramCharSequence.subSequence(paramInt1, paramInt2));
      if (TextUtils.isEmpty(str1)) {
        return "";
      }
      String str2 = String.valueOf(paramSpanned.subSequence(0, paramInt3)) + str1 + paramSpanned.subSequence(paramInt4, paramSpanned.length());
      String str3 = String.valueOf(str2).toLowerCase();
      String[] arrayOfString = NumberPicker.this.mDisplayedValues;
      int j = arrayOfString.length;
      for (;;)
      {
        if (i >= j) {
          return "";
        }
        String str4 = arrayOfString[i];
        if (str4.toLowerCase().startsWith(str3))
        {
          NumberPicker.this.postSetSelectionCommand(str2.length(), str4.length());
          return str4.subSequence(paramInt3, str4.length());
        }
        i++;
      }
    }
    
    protected char[] getAcceptedChars()
    {
      return NumberPicker.DIGIT_CHARACTERS;
    }
    
    public int getInputType()
    {
      return 1;
    }
  }
  
  public static abstract interface OnScrollListener
  {
    public static final int SCROLL_STATE_FLING = 2;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_TOUCH_SCROLL = 1;
    
    public abstract void onScrollStateChange(NumberPicker paramNumberPicker, int paramInt);
  }
  
  public static abstract interface OnValueChangeListener
  {
    public abstract void onValueChange(NumberPicker paramNumberPicker, int paramInt1, int paramInt2);
  }
  
  class PressedStateHelper
    implements Runnable
  {
    public static final int BUTTON_DECREMENT = 2;
    public static final int BUTTON_INCREMENT = 1;
    private final int MODE_PRESS = 1;
    private final int MODE_TAPPED = 2;
    private int mManagedButton;
    private int mMode;
    
    PressedStateHelper() {}
    
    public void buttonPressDelayed(int paramInt)
    {
      cancel();
      this.mMode = 1;
      this.mManagedButton = paramInt;
      NumberPicker.this.postDelayed(this, ViewConfiguration.getTapTimeout());
    }
    
    public void buttonTapped(int paramInt)
    {
      cancel();
      this.mMode = 2;
      this.mManagedButton = paramInt;
      NumberPicker.this.post(this);
    }
    
    public void cancel()
    {
      this.mMode = 0;
      this.mManagedButton = 0;
      NumberPicker.this.removeCallbacks(this);
      if (NumberPicker.this.mIncrementVirtualButtonPressed)
      {
        NumberPicker.this.mIncrementVirtualButtonPressed = false;
        NumberPicker.this.invalidate(0, NumberPicker.this.mBottomSelectionDividerBottom, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
      }
      NumberPicker.this.mDecrementVirtualButtonPressed = false;
      if (NumberPicker.this.mDecrementVirtualButtonPressed) {
        NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.mTopSelectionDividerTop);
      }
    }
    
    public void run()
    {
      switch (this.mMode)
      {
      default: 
        return;
      case 1: 
        switch (this.mManagedButton)
        {
        default: 
          return;
        case 1: 
          NumberPicker.this.mIncrementVirtualButtonPressed = true;
          NumberPicker.this.invalidate(0, NumberPicker.this.mBottomSelectionDividerBottom, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
          return;
        }
        NumberPicker.this.mDecrementVirtualButtonPressed = true;
        NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.mTopSelectionDividerTop);
        return;
      }
      switch (this.mManagedButton)
      {
      default: 
        return;
      case 1: 
        if (!NumberPicker.this.mIncrementVirtualButtonPressed) {
          NumberPicker.this.postDelayed(this, ViewConfiguration.getPressedStateDuration());
        }
        NumberPicker localNumberPicker2 = NumberPicker.this;
        localNumberPicker2.mIncrementVirtualButtonPressed = (true ^ localNumberPicker2.mIncrementVirtualButtonPressed);
        NumberPicker.this.invalidate(0, NumberPicker.this.mBottomSelectionDividerBottom, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
        return;
      }
      if (!NumberPicker.this.mDecrementVirtualButtonPressed) {
        NumberPicker.this.postDelayed(this, ViewConfiguration.getPressedStateDuration());
      }
      NumberPicker localNumberPicker1 = NumberPicker.this;
      localNumberPicker1.mDecrementVirtualButtonPressed = (true ^ localNumberPicker1.mDecrementVirtualButtonPressed);
      NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.mTopSelectionDividerTop);
    }
  }
  
  class SetSelectionCommand
    implements Runnable
  {
    private int mSelectionEnd;
    private int mSelectionStart;
    
    SetSelectionCommand() {}
    
    public void run()
    {
      NumberPicker.this.mInputText.setSelection(this.mSelectionStart, this.mSelectionEnd);
    }
  }
  
  private static class TwoDigitFormatter
    implements NumberPicker.Formatter
  {
    final Object[] mArgs = new Object[1];
    final StringBuilder mBuilder = new StringBuilder();
    Formatter mFmt;
    char mZeroDigit;
    
    TwoDigitFormatter()
    {
      init(Locale.getDefault());
    }
    
    private Formatter createFormatter(Locale paramLocale)
    {
      return new Formatter(this.mBuilder, paramLocale);
    }
    
    private static char getZeroDigit(Locale paramLocale)
    {
      return new DecimalFormatSymbols(paramLocale).getZeroDigit();
    }
    
    private void init(Locale paramLocale)
    {
      this.mFmt = createFormatter(paramLocale);
      this.mZeroDigit = getZeroDigit(paramLocale);
    }
    
    public String format(int paramInt)
    {
      Locale localLocale = Locale.getDefault();
      if (this.mZeroDigit != getZeroDigit(localLocale)) {
        init(localLocale);
      }
      this.mArgs[0] = Integer.valueOf(paramInt);
      this.mBuilder.delete(0, this.mBuilder.length());
      this.mFmt.format("%02d", this.mArgs);
      return this.mFmt.toString();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker
 * JD-Core Version:    0.7.0.1
 */