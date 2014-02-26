.class public Lcom/jingdong/common/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 21
    new-instance v0, Lcom/jingdong/common/utils/ToastUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/common/utils/ToastUtils$1;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method
