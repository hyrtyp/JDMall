.class public interface abstract Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;
.super Ljava/lang/Object;
.source "NewFillOrderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/NewFillOrderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NewFillOrderListener"
.end annotation


# static fields
.field public static final RESULT_CODE_0:I = 0x0

.field public static final RESULT_CODE_1_CURRENT_ORDER:I = 0x1

.field public static final RESULT_CODE_2_QUERY_COUPONS_GIFT_CART:I = 0x2

.field public static final RESULT_CODE_3_SUBMIT_ORDER:I = 0x3


# virtual methods
.method public abstract onFinish(Lcom/jingdong/common/entity/NewCurrentOrder;IZ)V
.end method
