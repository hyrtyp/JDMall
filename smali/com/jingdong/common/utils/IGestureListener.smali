.class public Lcom/jingdong/common/utils/IGestureListener;
.super Ljava/lang/Object;
.source "IGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;
    }
.end annotation


# instance fields
.field private onListener:Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;

.field private parent:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>(Landroid/view/ViewParent;Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;)V
    .locals 0
    .parameter "parent"
    .parameter "listener"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/jingdong/common/utils/IGestureListener;->onListener:Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;

    .line 14
    iput-object p1, p0, Lcom/jingdong/common/utils/IGestureListener;->parent:Landroid/view/ViewParent;

    .line 15
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 30
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/jingdong/common/utils/IGestureListener;->onListener:Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;->previous()V

    .line 39
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x3f60

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/jingdong/common/utils/IGestureListener;->onListener:Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;->next()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 47
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    iget-object v2, p0, Lcom/jingdong/common/utils/IGestureListener;->parent:Landroid/view/ViewParent;

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 55
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 56
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4248

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/jingdong/common/utils/IGestureListener;->onListener:Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;

    invoke-interface {v1}, Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;->previous()V

    .line 70
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, -0x3db8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/jingdong/common/utils/IGestureListener;->onListener:Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;

    invoke-interface {v1}, Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;->next()V

    goto :goto_0

    .line 65
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u6a2a\u5411"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u7eb5\u5411"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 78
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/common/utils/IGestureListener;->onListener:Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/IGestureListener$TouchFlingActionListener;->startActivity()V

    .line 86
    const/4 v0, 0x0

    return v0
.end method
