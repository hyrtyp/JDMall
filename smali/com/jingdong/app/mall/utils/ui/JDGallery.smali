.class public Lcom/jingdong/app/mall/utils/ui/JDGallery;
.super Landroid/widget/Gallery;
.source "JDGallery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method private initPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/JDGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 43
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/ui/JDGallery;->setPressed(Z)V

    .line 44
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/JDGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 36
    :cond_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 28
    :pswitch_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/JDGallery;->initPressed()V

    .line 29
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/JDGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 30
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/JDGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
