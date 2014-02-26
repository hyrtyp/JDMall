.class public interface abstract Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/ShoppingBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShoppingListener"
.end annotation


# virtual methods
.method public abstract onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onStart()V
.end method
