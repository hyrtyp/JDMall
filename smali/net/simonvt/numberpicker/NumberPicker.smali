.class public Lnet/simonvt/numberpicker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lnet/simonvt/numberpicker/NumberPicker$CustomEditText;,
        Lnet/simonvt/numberpicker/NumberPicker$Formatter;,
        Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;,
        Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;,
        Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;,
        Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;,
        Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;,
        Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x0

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;


# instance fields
.field private final mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

.field private mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lnet/simonvt/numberpicker/NumberPicker;->sTwoDigitFormatter:Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;

    .line 1968
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/numberpicker/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 1977
    return-void

    .line 1968
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x60t 0x6t
        0x61t 0x6t
        0x62t 0x6t
        0x63t 0x6t
        0x64t 0x6t
        0x65t 0x6t
        0x66t 0x6t
        0x67t 0x6t
        0x68t 0x6t
        0x69t 0x6t
        0xf0t 0x6t
        0xf1t 0x6t
        0xf2t 0x6t
        0xf3t 0x6t
        0xf4t 0x6t
        0xf5t 0x6t
        0xf6t 0x6t
        0xf7t 0x6t
        0xf8t 0x6t
        0xf9t 0x6t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 545
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 554
    sget v0, Lcom/jd/lottery/lib/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 555
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 565
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    .line 298
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 303
    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    .line 323
    const/high16 v14, -0x8000

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    .line 424
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    .line 475
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 569
    sget-object v14, Lcom/jd/lottery/lib/R$styleable;->NumberPicker:[I

    const/4 v15, 0x0

    .line 568
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 571
    .local v3, attributesArray:Landroid/content/res/TypedArray;
    const/16 v14, 0x8

    const/4 v15, 0x0

    .line 570
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 573
    .local v10, layoutResId:I
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    .line 575
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSolidColor:I

    .line 577
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 580
    const/4 v14, 0x1

    const/high16 v15, 0x4000

    .line 581
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 579
    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v8, v14

    .line 583
    .local v8, defSelectionDividerHeight:I
    const/4 v14, 0x2

    .line 582
    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    .line 586
    const/4 v14, 0x1

    const/high16 v15, 0x4240

    .line 587
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 585
    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v7, v14

    .line 589
    .local v7, defSelectionDividerDistance:I
    const/4 v14, 0x3

    .line 588
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    .line 592
    const/4 v14, 0x4

    const/4 v15, -0x1

    .line 591
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMinHeight:I

    .line 595
    const/4 v14, 0x5

    const/4 v15, -0x1

    .line 594
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxHeight:I

    .line 596
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMinHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxHeight:I

    if-le v14, v15, :cond_1

    .line 598
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "minHeight > maxHeight"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 573
    .end local v7           #defSelectionDividerDistance:I
    .end local v8           #defSelectionDividerHeight:I
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 602
    .restart local v7       #defSelectionDividerDistance:I
    .restart local v8       #defSelectionDividerHeight:I
    :cond_1
    const/4 v14, 0x6

    const/4 v15, -0x1

    .line 601
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    .line 605
    const/4 v14, 0x7

    const/4 v15, -0x1

    .line 604
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    .line 606
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 607
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    if-le v14, v15, :cond_2

    .line 608
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "minWidth > maxWidth"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 611
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mComputeMaxWidth:Z

    .line 614
    const/16 v14, 0x9

    .line 613
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 618
    new-instance v14, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    .line 625
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->setWillNotDraw(Z)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 628
    const-string v15, "layout_inflater"

    .line 627
    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 629
    .local v9, inflater:Landroid/view/LayoutInflater;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v9, v10, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 631
    new-instance v11, Lnet/simonvt/numberpicker/NumberPicker$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lnet/simonvt/numberpicker/NumberPicker$1;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 643
    .local v11, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v12, Lnet/simonvt/numberpicker/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lnet/simonvt/numberpicker/NumberPicker$2;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 657
    .local v12, onLongClickListener:Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v14, :cond_5

    .line 658
    sget v14, Lcom/jd/lottery/lib/R$id;->np__increment:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 659
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 666
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v14, :cond_6

    .line 667
    sget v14, Lcom/jd/lottery/lib/R$id;->np__decrement:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 668
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 675
    :goto_4
    sget v14, Lcom/jd/lottery/lib/R$id;->np__numberpicker_input:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v15, Lnet/simonvt/numberpicker/NumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lnet/simonvt/numberpicker/NumberPicker$3;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/text/InputFilter;

    const/16 v16, 0x0

    .line 687
    new-instance v17, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;

    invoke-direct/range {v17 .. v18}, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    aput-object v17, v15, v16

    .line 686
    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x106000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setTextColor(I)V

    .line 696
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 697
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mTouchSlop:I

    .line 698
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    .line 699
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    .line 700
    div-int/lit8 v14, v14, 0x8

    .line 699
    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    .line 701
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextSize()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    .line 704
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 705
    .local v13, paint:Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 706
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 707
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 709
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 710
    .local v5, colors:Landroid/content/res/ColorStateList;
    sget-object v14, Lnet/simonvt/numberpicker/NumberPicker;->ENABLED_STATE_SET:[I

    const/4 v15, -0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 711
    .local v4, color:I
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 712
    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 715
    new-instance v14, Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Lnet/simonvt/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    .line 716
    new-instance v14, Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x4020

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v14 .. v16}, Lnet/simonvt/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    .line 718
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 726
    return-void

    .line 611
    .end local v4           #color:I
    .end local v5           #colors:Landroid/content/res/ColorStateList;
    .end local v6           #configuration:Landroid/view/ViewConfiguration;
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v12           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .end local v13           #paint:Landroid/graphics/Paint;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 625
    :cond_4
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 662
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v11       #onClickListener:Landroid/view/View$OnClickListener;
    .restart local v12       #onLongClickListener:Landroid/view/View$OnLongClickListener;
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 671
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method static synthetic access$0()[C
    .locals 1

    .prologue
    .line 1968
    sget-object v0, Lnet/simonvt/numberpicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 440
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$11(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lnet/simonvt/numberpicker/NumberPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1650
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$13(Lnet/simonvt/numberpicker/NumberPicker;)J
    .locals 2
    .parameter

    .prologue
    .line 293
    iget-wide v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$14(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1185
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->showSoftInput()V

    return-void
.end method

.method static synthetic access$15(Lnet/simonvt/numberpicker/NumberPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIngonreMoveEvents:Z

    return-void
.end method

.method static synthetic access$16(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1199
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$17(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1860
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$18(Lnet/simonvt/numberpicker/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1809
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Lnet/simonvt/numberpicker/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1920
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 268
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$4(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1954
    invoke-direct {p0, p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$5(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 455
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$6(Lnet/simonvt/numberpicker/NumberPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 455
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return-void
.end method

.method static synthetic access$7(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 445
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$8(Lnet/simonvt/numberpicker/NumberPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 460
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return-void
.end method

.method static synthetic access$9(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 460
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1651
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1652
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1653
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->moveToFinalScrollerPosition(Lnet/simonvt/numberpicker/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1654
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->moveToFinalScrollerPosition(Lnet/simonvt/numberpicker/Scroller;)Z

    .line 1656
    :cond_0
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1657
    if-eqz p1, :cond_1

    .line 1658
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/numberpicker/Scroller;->startScroll(IIIII)V

    .line 1662
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 1670
    :goto_1
    return-void

    .line 1660
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1664
    :cond_2
    if-eqz p1, :cond_3

    .line 1665
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1667
    :cond_3
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1771
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gtz v0, :cond_1

    .line 1774
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1775
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_0

    .line 1776
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    .line 1778
    :cond_0
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1779
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1780
    return-void

    .line 1772
    .end local v1           #nextScrollSelectorIndex:I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1771
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1787
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1788
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1789
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1803
    :goto_0
    return-void

    .line 1792
    :cond_0
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1793
    :cond_1
    const-string v2, ""

    .line 1802
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1795
    :cond_2
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1796
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1797
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1798
    goto :goto_1

    .line 1799
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2051
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2052
    .local v4, deltaY:I
    if-eqz v4, :cond_1

    .line 2053
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 2054
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2055
    if-lez v4, :cond_2

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2057
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/numberpicker/Scroller;->startScroll(IIIII)V

    .line 2058
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 2059
    const/4 v1, 0x1

    .line 2061
    :cond_1
    return v1

    .line 2055
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1727
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1729
    if-lez p1, :cond_0

    .line 1730
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lnet/simonvt/numberpicker/Scroller;->fling(IIIIIIII)V

    .line 1735
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 1736
    return-void

    .line 1732
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lnet/simonvt/numberpicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1806
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .parameter "value"

    .prologue
    .line 2657
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1921
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1923
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1947
    :goto_0
    return v1

    .line 1928
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1941
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1930
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1931
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1932
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1928
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1924
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 1947
    :goto_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 1942
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Lnet/simonvt/numberpicker/NumberPicker$Formatter;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lnet/simonvt/numberpicker/NumberPicker;->sTwoDigitFormatter:Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1742
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1743
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1747
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1744
    .restart local p1
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1745
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1200
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1201
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1203
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1207
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1755
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 1758
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1759
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_0

    .line 1760
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    .line 1762
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1763
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1764
    return-void

    .line 1756
    .end local v1           #nextScrollSelectorIndex:I
    :cond_1
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1755
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1690
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1691
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setFadingEdgeLength(I)V

    .line 1692
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1673
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1674
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    .line 1675
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1676
    .local v4, totalTextHeight:I
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1677
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    int-to-float v2, v5

    .line 1678
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    .line 1679
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    iget v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    .line 1682
    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1684
    .local v0, editTextTextPosition:I
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    .line 1683
    iput v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    .line 1685
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1686
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1687
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1603
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1604
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    .line 1605
    .local v3, selectorIndices:[I
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    .line 1606
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 1614
    return-void

    .line 1607
    :cond_0
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1608
    .local v2, selectorIndex:I
    iget-boolean v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1

    .line 1609
    invoke-direct {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1611
    :cond_1
    aput v2, v3, v1

    .line 1612
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1606
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1524
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1535
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1527
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1528
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1529
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1537
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown measure mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1533
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1535
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1529
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Lnet/simonvt/numberpicker/Scroller;)Z
    .locals 7
    .parameter "scroller"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 784
    invoke-virtual {p1, v3}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    .line 785
    invoke-virtual {p1}, Lnet/simonvt/numberpicker/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 786
    .local v0, amountToScroll:I
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 787
    .local v1, futureScrollOffset:I
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 788
    .local v2, overshootAdjustment:I
    if-eqz v2, :cond_2

    .line 789
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 790
    if-lez v2, :cond_1

    .line 791
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 796
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 797
    invoke-virtual {p0, v4, v0}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 800
    :goto_1
    return v3

    .line 793
    :cond_1
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 800
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1850
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnValueChangeListener:Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1851
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnValueChangeListener:Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;->onValueChange(Lnet/simonvt/numberpicker/NumberPicker;II)V

    .line 1853
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1714
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1717
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    .line 1718
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnScrollListener:Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnScrollListener:Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;->onScrollStateChange(Lnet/simonvt/numberpicker/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Lnet/simonvt/numberpicker/Scroller;)V
    .locals 2
    .parameter "scroller"

    .prologue
    .line 1698
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    if-ne p1, v0, :cond_2

    .line 1699
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1700
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1702
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    .line 1708
    :cond_1
    :goto_0
    return-void

    .line 1704
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1705
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .prologue
    .line 1884
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1885
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1889
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1890
    return-void

    .line 1887
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .parameter "increment"
    .parameter "delayMillis"

    .prologue
    .line 1861
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1862
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1866
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$0(Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1867
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1868
    return-void

    .line 1864
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 1955
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1956
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    .line 1960
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    #setter for: Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->access$0(Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;I)V

    .line 1961
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    #setter for: Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->access$1(Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;I)V

    .line 1962
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1963
    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1908
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1909
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1911
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1912
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1914
    :cond_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 1915
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1899
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1877
    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .parameter "size"
    .parameter "measureSpec"
    .parameter "childMeasuredState"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 1577
    move v0, p0

    .line 1578
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1579
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1580
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 1595
    :goto_0
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 1582
    :sswitch_0
    move v0, p0

    .line 1583
    goto :goto_0

    .line 1585
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 1586
    const/high16 v3, 0x100

    or-int v0, v2, v3

    .line 1587
    goto :goto_0

    .line 1588
    :cond_0
    move v0, p0

    .line 1590
    goto :goto_0

    .line 1592
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 1580
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1554
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1555
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1556
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lnet/simonvt/numberpicker/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1558
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .parameter "current"
    .parameter "notifyChange"

    .prologue
    .line 1623
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1641
    :goto_0
    return-void

    .line 1627
    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1628
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1633
    :goto_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    .line 1634
    .local v0, previous:I
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    .line 1635
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1636
    if-eqz p2, :cond_1

    .line 1637
    invoke-direct {p0, v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->notifyChange(II)V

    .line 1639
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1640
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1630
    .end local v0           #previous:I
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1631
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1186
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1187
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1188
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1191
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1192
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1194
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1213
    iget-boolean v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    const/4 v4, 0x0

    .line 1217
    .local v4, maxTextWidth:I
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1218
    const/4 v3, 0x0

    .line 1219
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-le v2, v8, :cond_3

    .line 1225
    const/4 v5, 0x0

    .line 1226
    .local v5, numberOfDigits:I
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    .line 1227
    .local v0, current:I
    :goto_2
    if-gtz v0, :cond_5

    .line 1231
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1241
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_2
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1242
    iget v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1243
    iget v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1244
    iput v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    .line 1248
    :goto_3
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1220
    .restart local v3       #maxDigitWidth:F
    :cond_3
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1221
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_4

    .line 1222
    move v3, v1

    .line 1219
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1228
    .end local v1           #digitWidth:F
    .restart local v0       #current:I
    .restart local v5       #numberOfDigits:I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 1229
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1233
    .end local v0           #current:I
    .end local v2           #i:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_6
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1234
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_2

    .line 1235
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1236
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1237
    float-to-int v4, v6

    .line 1234
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1246
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    iput v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1835
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1837
    .local v0, text:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1838
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1839
    const/4 v1, 0x1

    .line 1842
    :goto_1
    return v1

    .line 1836
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1842
    .restart local v0       #text:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1810
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1811
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1813
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1819
    :goto_0
    return-void

    .line 1816
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1817
    .local v0, current:I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1042
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    .line 1043
    .local v1, scroller:Lnet/simonvt/numberpicker/Scroller;
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    .line 1045
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/Scroller;->computeScrollOffset()Z

    .line 1050
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/Scroller;->getCurrY()I

    move-result v0

    .line 1051
    .local v0, currentScrollerY:I
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1052
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1054
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1055
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1056
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollerFinished(Lnet/simonvt/numberpicker/Scroller;)V

    goto :goto_0

    .line 1059
    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 943
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 944
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    .line 975
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 947
    :sswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 951
    :sswitch_1
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 956
    :pswitch_0
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    .line 957
    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 958
    :goto_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->requestFocus()Z

    .line 959
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 960
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 961
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 957
    :cond_3
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 962
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 968
    :pswitch_1
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 969
    const/4 v1, -0x1

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 944
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 954
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 931
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 932
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 938
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 935
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 980
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 981
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 987
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 984
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1429
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1355
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1317
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1424
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1261
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1434
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 1435
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 1439
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v11, :cond_1

    .line 1440
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1443
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v9, v11

    .line 1444
    .local v9, x:F
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v10, v11

    .line 1447
    .local v10, y:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_3

    .line 1448
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-nez v11, :cond_3

    .line 1449
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v11, :cond_2

    .line 1451
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v12, Lnet/simonvt/numberpicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1452
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1455
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v11, :cond_3

    .line 1457
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v12, Lnet/simonvt/numberpicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1458
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v14

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v15

    .line 1458
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1465
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    .line 1466
    .local v6, selectorIndices:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v11, v6

    if-lt v3, v11, :cond_4

    .line 1481
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 1483
    move-object/from16 v0, p0

    iget v8, v0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    .line 1484
    .local v8, topOfTopDivider:I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v8, v11

    .line 1485
    .local v2, bottomOfTopDivider:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v13

    invoke-virtual {v11, v12, v8, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1489
    move-object/from16 v0, p0

    iget v1, v0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1490
    .local v1, bottomOfBottomDivider:I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    sub-int v7, v1, v11

    .line 1491
    .local v7, topOfBottomDivider:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v13

    invoke-virtual {v11, v12, v7, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1467
    .end local v1           #bottomOfBottomDivider:I
    .end local v2           #bottomOfTopDivider:I
    .end local v7           #topOfBottomDivider:I
    .end local v8           #topOfTopDivider:I
    :cond_4
    aget v5, v6, v3

    .line 1468
    .local v5, selectorIndex:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1474
    .local v4, scrollSelectorValue:Ljava/lang/String;
    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_6

    .line 1475
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1477
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1466
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 805
    iget-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 853
    :goto_0
    return v1

    .line 808
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 809
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 853
    goto :goto_0

    .line 811
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 812
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    .line 814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventTime:J

    .line 815
    iput-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIngonreMoveEvents:Z

    .line 816
    iput-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 818
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 819
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 820
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    .line 821
    const/4 v4, 0x2

    .line 820
    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 830
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 831
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 832
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {v3, v1}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    .line 833
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {v3, v1}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    .line 834
    invoke-direct {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 823
    :cond_3
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 824
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 825
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 835
    :cond_4
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 836
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {v2, v1}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    .line 837
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {v2, v1}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 838
    :cond_5
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 839
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->hideSoftInput()V

    .line 841
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 840
    invoke-direct {p0, v2, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 842
    :cond_6
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 843
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->hideSoftInput()V

    .line 845
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 844
    invoke-direct {p0, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 847
    :cond_7
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 848
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 730
    iget-boolean v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 731
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 735
    .local v7, msrdWdth:I
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 738
    .local v6, msrdHght:I
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 739
    .local v3, inptTxtMsrdWdth:I
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 740
    .local v2, inptTxtMsrdHght:I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 741
    .local v1, inptTxtLeft:I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 742
    .local v5, inptTxtTop:I
    add-int v4, v1, v3

    .line 743
    .local v4, inptTxtRight:I
    add-int v0, v5, v2

    .line 744
    .local v0, inptTxtBottom:I
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 746
    if-eqz p1, :cond_0

    .line 748
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheel()V

    .line 749
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeFadingEdges()V

    .line 750
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 751
    iget v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    .line 750
    iput v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    .line 752
    iget v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 753
    iget v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    .line 752
    iput v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 759
    iget-boolean v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 760
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 773
    :goto_0
    return-void

    .line 764
    :cond_0
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 765
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lnet/simonvt/numberpicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 766
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 768
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lnet/simonvt/numberpicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 770
    .local v3, widthSize:I
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lnet/simonvt/numberpicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 772
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "event"

    .prologue
    .line 858
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v13, :cond_1

    .line 859
    :cond_0
    const/4 v13, 0x0

    .line 926
    :goto_0
    return v13

    .line 861
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_2

    .line 862
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 864
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v1, v13, 0xff

    .line 866
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 926
    :cond_3
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 868
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mIngonreMoveEvents:Z

    if-nez v13, :cond_3

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 872
    .local v2, currentMoveY:F
    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    .line 873
    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    sub-float v13, v2, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v3, v13

    .line 874
    .local v3, deltaDownY:I
    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mTouchSlop:I

    if-le v3, v13, :cond_4

    .line 875
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 876
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    .line 883
    .end local v3           #deltaDownY:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 879
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v13, v2, v13

    float-to-int v4, v13

    .line 880
    .local v4, deltaMoveY:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_2

    .line 886
    .end local v2           #currentMoveY:F
    .end local v4           #deltaMoveY:I
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeBeginSoftInputCommand()V

    .line 887
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v13}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 889
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 890
    .local v12, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 891
    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v13

    float-to-int v8, v13

    .line 892
    .local v8, initialVelocity:I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    if-le v13, v14, :cond_6

    .line 893
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lnet/simonvt/numberpicker/NumberPicker;->fling(I)V

    .line 894
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    .line 922
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->recycle()V

    .line 923
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 896
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v7, v13

    .line 897
    .local v7, eventY:I
    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v4, v13

    .line 898
    .restart local v4       #deltaMoveY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventTime:J

    sub-long v5, v13, v15

    .line 899
    .local v5, deltaTime:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v13

    int-to-long v10, v13

    .line 900
    .local v10, tapTimeout:J
    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mTouchSlop:I

    if-gt v4, v13, :cond_a

    .line 901
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz v13, :cond_8

    .line 902
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 903
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->showSoftInput()V

    .line 920
    :cond_7
    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 905
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    div-int v13, v7, v13

    add-int/lit8 v9, v13, -0x1

    .line 907
    .local v9, selectorIndexOffset:I
    if-lez v9, :cond_9

    .line 908
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V

    .line 909
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    .line 910
    const/4 v14, 0x1

    .line 909
    invoke-virtual {v13, v14}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 911
    :cond_9
    if-gez v9, :cond_7

    .line 912
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V

    .line 913
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    .line 914
    const/4 v14, 0x2

    .line 913
    invoke-virtual {v13, v14}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 918
    .end local v9           #selectorIndexOffset:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 866
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 1077
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    .line 1078
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    .line 1079
    aget v1, v0, v3

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1080
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    .line 1084
    aget v1, v0, v3

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1085
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1088
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1089
    :cond_3
    :goto_1
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    if-gt v1, v2, :cond_5

    .line 1097
    :cond_4
    :goto_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1098
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1099
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->incrementSelectorIndices([I)V

    .line 1100
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1101
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1102
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    .line 1090
    :cond_5
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1091
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->decrementSelectorIndices([I)V

    .line 1092
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1093
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1094
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1406
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1420
    :goto_0
    return-void

    .line 1409
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1410
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1412
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1417
    :goto_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1418
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1419
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1415
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1065
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1066
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1069
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1070
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1072
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1073
    return-void
.end method

.method public setFormatter(Lnet/simonvt/numberpicker/NumberPicker$Formatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 1142
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1145
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    .line 1146
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1147
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1369
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1385
    :goto_0
    return-void

    .line 1372
    :cond_0
    if-gez p1, :cond_1

    .line 1373
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1375
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    .line 1376
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1377
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    .line 1379
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1380
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1381
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1382
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1383
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1384
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1379
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1331
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1334
    :cond_0
    if-gez p1, :cond_1

    .line 1335
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    .line 1338
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1339
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    .line 1341
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1342
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1343
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1344
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1345
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1346
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1341
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter "intervalMillis"

    .prologue
    .line 1299
    iput-wide p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    .line 1300
    return-void
.end method

.method public setOnScrollListener(Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 1127
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnScrollListener:Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;

    .line 1128
    return-void
.end method

.method public setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 1118
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnValueChangeListener:Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;

    .line 1119
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1180
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1282
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1283
    .local v0, wrappingAllowed:Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1284
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    .line 1286
    :cond_1
    return-void

    .line 1282
    .end local v0           #wrappingAllowed:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
