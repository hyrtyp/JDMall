.class public interface abstract Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiTouchObjectCanvas"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDraggableObjectAtPoint(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/MultiTouchController$PointInfo;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getPositionAndScale(Ljava/lang/Object;Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onScale(FFF)Z
.end method

.method public abstract onScaleBegin(FF)Z
.end method

.method public abstract onScaleEnd()V
.end method
