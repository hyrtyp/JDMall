.class public interface abstract Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCommercialListener"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onSuccess(ILjava/lang/String;)V
.end method

.method public abstract onSyncronizotionParams(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;)V"
        }
    .end annotation
.end method
