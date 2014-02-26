.class public Lcom/jingdong/app/mall/ime/JDInputMethod;
.super Ljava/lang/Object;
.source "JDInputMethod.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isPasswordTransformationMethod:Z

.field private mActivity:Landroid/app/Activity;

.field private mCapsLock:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayWidthPixels:F

.field private mHandler:Landroid/os/Handler;

.field private mInputmethodView:Landroid/widget/TextView;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLastShiftTime:J

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

.field private mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

.field private mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

.field private mUpdateJDInputMethodUIThread:Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;

.field private mUserName:Landroid/widget/EditText;

.field private mUserPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1
    .parameter "activity"
    .parameter "passEditText"
    .parameter "view"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/jingdong/app/mall/ime/JDInputMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->TAG:Ljava/lang/String;

    .line 672
    new-instance v0, Lcom/jingdong/app/mall/ime/JDInputMethod$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/ime/JDInputMethod$1;-><init>(Lcom/jingdong/app/mall/ime/JDInputMethod;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserPassword:Landroid/widget/EditText;

    .line 83
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mActivity:Landroid/app/Activity;

    .line 84
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;

    invoke-direct {v0, p0, p3}, Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;-><init>(Lcom/jingdong/app/mall/ime/JDInputMethod;Landroid/view/View;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUpdateJDInputMethodUIThread:Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1
    .parameter "activity"
    .parameter "userEditText"
    .parameter "passEditText"
    .parameter "view"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/jingdong/app/mall/ime/JDInputMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->TAG:Ljava/lang/String;

    .line 672
    new-instance v0, Lcom/jingdong/app/mall/ime/JDInputMethod$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/ime/JDInputMethod$1;-><init>(Lcom/jingdong/app/mall/ime/JDInputMethod;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserName:Landroid/widget/EditText;

    .line 101
    iput-object p3, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserPassword:Landroid/widget/EditText;

    .line 102
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mActivity:Landroid/app/Activity;

    .line 103
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;

    invoke-direct {v0, p0, p4}, Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;-><init>(Lcom/jingdong/app/mall/ime/JDInputMethod;Landroid/view/View;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUpdateJDInputMethodUIThread:Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;

    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserName:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->initEditviewListener(Landroid/widget/EditText;)V

    .line 106
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/ime/JDInputMethod;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPasswordTransformationMethod:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/ime/JDInputMethod;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->updatePopupWindow()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/ime/JDInputMethod;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->showKeyboardView()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/ime/JDInputMethod;)Z
    .locals 1
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->hideSystemInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/ime/JDInputMethod;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/ime/JDInputMethod;->sentMessage(IJ)V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/ime/JDInputMethod;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->createPopWindow(Landroid/view/View;)V

    return-void
.end method

.method private checkToggleCapsLock()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, now:J
    iget-wide v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mLastShiftTime:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 298
    iget-boolean v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mCapsLock:Z

    if-eqz v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mCapsLock:Z

    .line 299
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mLastShiftTime:J

    .line 304
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 298
    goto :goto_0

    .line 301
    :cond_1
    iput-wide v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mLastShiftTime:J

    .line 302
    iget-boolean v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mCapsLock:Z

    if-eqz v4, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mCapsLock:Z

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private createPopWindow(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissPopupwindow()V

    .line 349
    :try_start_0
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 350
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 351
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 353
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->getPopupwindowBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dismissInputmethodLayout()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mInputmethodView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mInputmethodView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mInputmethodView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    :cond_0
    return-void
.end method

.method private getDisplayWidthPixels()F
    .locals 3

    .prologue
    .line 584
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 585
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 586
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v2

    .line 590
    .local v1, width:F
    return v1
.end method

.method private getPopupwindowBottom()I
    .locals 10

    .prologue
    .line 638
    const/4 v5, 0x0

    .line 639
    .local v5, popupwindowBottom:I
    const/4 v1, 0x0

    .line 641
    .local v1, bottomBarBottom:I
    iget-object v8, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 642
    .local v7, winManager:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 643
    .local v3, height:I
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    .line 645
    .local v4, myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 646
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 647
    .local v2, decorView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 648
    check-cast v0, Lcom/jingdong/app/mall/MainFrameActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/MainFrameActivity;->getBottomBarBottom()I

    move-result v1

    .line 655
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 656
    .local v6, statusBarFrame:Landroid/graphics/Rect;
    invoke-virtual {v2, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 658
    sub-int v8, v3, v1

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v8, v9

    .line 666
    return v5

    .line 651
    .end local v6           #statusBarFrame:Landroid/graphics/Rect;
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private handleShift()V
    .locals 3

    .prologue
    .line 278
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 283
    .local v0, currentKeyboard:Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    if-ne v2, v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->checkToggleCapsLock()V

    .line 286
    iget-boolean v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mCapsLock:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 287
    .local v1, shifted:Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->setKeyBackground(Z)V

    .line 288
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_0

    .line 286
    .end local v1           #shifted:Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private hideKeyboardView()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissPopupwindow()V

    .line 438
    return-void
.end method

.method private hideSystemInputMethod()Z
    .locals 5

    .prologue
    .line 471
    const/4 v2, 0x0

    .line 473
    .local v2, isSucess:Z
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mActivity:Landroid/app/Activity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 475
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 476
    iget-object v3, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 481
    .end local v1           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return v2

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initEditviewListener(Landroid/widget/EditText;)V
    .locals 1
    .parameter "userEditText"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserName:Landroid/widget/EditText;

    .line 249
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 251
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_0
    return-void
.end method

.method private sentMessage(IJ)V
    .locals 2
    .parameter "msgId"
    .parameter "delayMillis"

    .prologue
    .line 520
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 521
    .local v0, msg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 532
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 533
    return-void

    .line 523
    :pswitch_0
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 526
    :pswitch_1
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setKeyBackground(Z)V
    .locals 3
    .parameter "shifted"

    .prologue
    .line 628
    if-eqz p1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 633
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setKeyBackground(Landroid/graphics/drawable/Drawable;)V

    .line 634
    return-void

    .line 631
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private showInputmethodLayout()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mInputmethodView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mInputmethodView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mInputmethodView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    :cond_0
    return-void
.end method

.method private showKeyboardView()V
    .locals 3

    .prologue
    .line 452
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    .line 453
    .local v0, visibility:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 456
    :cond_1
    return-void
.end method

.method private switchSymbolsKeyboard()V
    .locals 3

    .prologue
    .line 564
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 569
    .local v0, currentKeyboard:Landroid/inputmethodservice/Keyboard;
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    if-ne v0, v1, :cond_2

    .line 570
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    if-ne v0, v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0
.end method

.method private updatePopupWindow()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUpdateJDInputMethodUIThread:Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method


# virtual methods
.method public dismissPopupwindow()V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissInputmethodLayout()V

    .line 328
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPopupwindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 332
    :cond_0
    return-void
.end method

.method public initIME()V
    .locals 8

    .prologue
    const v7, 0x7f0b0020

    const v6, 0x7f070420

    const/4 v5, 0x0

    const v4, 0x7f070419

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, keyTextSize:I
    new-instance v1, Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f05000b

    invoke-direct {v1, v2, v3}, Lcom/jingdong/app/mall/ime/JDKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    .line 197
    new-instance v1, Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f05000d

    invoke-direct {v1, v2, v3}, Lcom/jingdong/app/mall/ime/JDKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    .line 198
    new-instance v1, Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f05000e

    invoke-direct {v1, v2, v3}, Lcom/jingdong/app/mall/ime/JDKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    .line 200
    const v1, 0x7f03007e

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 201
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 202
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 203
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v5}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 206
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 211
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->getDisplayWidthPixels()F

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mDisplayWidthPixels:F

    .line 212
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mDisplayWidthPixels:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setKeyTextSize(I)V

    .line 220
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setKeyTextSize(I)V

    .line 221
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setKeyTextSize(I)V

    .line 224
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f07041f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setJDKeyIcon(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f07041e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setJDKeyIcon(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setJDKeyIcon(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setJDKeyIcon(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setJDKeyIcon(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setJDKeyIcon(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f070421

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setJDKeyIcon(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setJDKeyIcon(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/ime/JDKeyboard;->setKeyBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    return-void

    .line 214
    :cond_0
    iget v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mDisplayWidthPixels:F

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mDisplayWidthPixels:F

    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 216
    goto/16 :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public initInputmethodView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "inputmethodView"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mInputmethodView:Landroid/widget/TextView;

    .line 264
    return-void
.end method

.method public isPopupwindowShowing()Z
    .locals 2

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, isShowing:Z
    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v0, 0x1

    .line 503
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 373
    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 375
    .local v1, transformation:Landroid/text/method/TransformationMethod;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    .local v0, tag:Ljava/lang/String;
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/text/method/PasswordTransformationMethod;

    if-nez v2, :cond_0

    const-string v2, "jdPasswordTag"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->showInputmethodLayout()V

    .line 378
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->hideSystemInputMethod()Z

    .line 379
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPopupwindowShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    const/16 v2, 0x3ea

    const-wide/16 v3, 0x64

    invoke-direct {p0, v2, v3, v4}, Lcom/jingdong/app/mall/ime/JDInputMethod;->sentMessage(IJ)V

    .line 381
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPasswordTransformationMethod:Z

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->hideKeyboardView()V

    .line 385
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissInputmethodLayout()V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x0

    .line 398
    if-eqz p2, :cond_3

    move-object v2, p1

    .line 399
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 401
    .local v1, transformation:Landroid/text/method/TransformationMethod;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    .local v0, tag:Ljava/lang/String;
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/text/method/PasswordTransformationMethod;

    if-nez v2, :cond_0

    const-string v2, "jdPasswordTag"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->showInputmethodLayout()V

    .line 405
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->hideSystemInputMethod()Z

    .line 406
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPopupwindowShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    const/16 v2, 0x3ea

    const-wide/16 v3, 0x64

    invoke-direct {p0, v2, v3, v4}, Lcom/jingdong/app/mall/ime/JDInputMethod;->sentMessage(IJ)V

    .line 409
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPasswordTransformationMethod:Z

    .line 420
    .end local v0           #tag:Ljava/lang/String;
    .end local v1           #transformation:Landroid/text/method/TransformationMethod;
    :goto_0
    return-void

    .line 411
    .restart local v0       #tag:Ljava/lang/String;
    .restart local v1       #transformation:Landroid/text/method/TransformationMethod;
    :cond_2
    iput-boolean v3, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPasswordTransformationMethod:Z

    .line 412
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->hideKeyboardView()V

    .line 413
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissInputmethodLayout()V

    goto :goto_0

    .line 416
    .end local v0           #tag:Ljava/lang/String;
    .end local v1           #transformation:Landroid/text/method/TransformationMethod;
    :cond_3
    iput-boolean v3, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPasswordTransformationMethod:Z

    .line 417
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->hideKeyboardView()V

    .line 418
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissInputmethodLayout()V

    goto :goto_0
.end method

.method public onKey(I[I)V
    .locals 5
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 117
    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 118
    .local v1, editable:Landroid/text/Editable;
    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 122
    .local v2, start:I
    const/4 v4, -0x3

    if-ne p1, v4, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissInputmethodLayout()V

    .line 124
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->hideKeyboardView()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v4, -0x5

    if-ne p1, v4, :cond_2

    .line 126
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-lez v2, :cond_0

    .line 127
    add-int/lit8 v4, v2, -0x1

    invoke-interface {v1, v4, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 129
    :cond_2
    const/4 v4, -0x2

    if-ne p1, v4, :cond_6

    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v4, :cond_6

    .line 130
    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v4}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 134
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    if-eq v0, v4, :cond_3

    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsShiftedKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    if-ne v0, v4, :cond_5

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mQwertyKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    .line 139
    :goto_1
    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    if-ne v0, v4, :cond_4

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    .line 143
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v4, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mSymbolsKeyboard:Lcom/jingdong/app/mall/ime/JDKeyboard;

    goto :goto_1

    .line 144
    .end local v0           #current:Landroid/inputmethodservice/Keyboard;
    :cond_6
    const/4 v4, -0x1

    if-ne p1, v4, :cond_7

    .line 145
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->handleShift()V

    goto :goto_0

    .line 146
    :cond_7
    const/16 v4, -0x66

    if-ne p1, v4, :cond_8

    .line 147
    invoke-direct {p0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->switchSymbolsKeyboard()V

    goto :goto_0

    .line 150
    :cond_8
    iget-object v4, p0, Lcom/jingdong/app/mall/ime/JDInputMethod;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v4}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 151
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, text:Ljava/lang/CharSequence;
    :goto_2
    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 153
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_9
    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #text:Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public onPress(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 177
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 180
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 162
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
