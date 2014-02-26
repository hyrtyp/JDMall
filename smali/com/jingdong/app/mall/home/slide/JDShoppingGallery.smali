.class public Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;
.super Landroid/widget/Gallery;
.source "JDShoppingGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private initPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 58
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->setPressed(Z)V

    .line 59
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 55
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 51
    :cond_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 43
    :pswitch_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->initPressed()V

    .line 44
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
