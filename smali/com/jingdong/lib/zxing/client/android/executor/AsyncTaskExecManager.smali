.class public final Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecManager;
.super Lcom/jingdong/lib/zxing/client/android/executor/PlatformSupportManager;
.source "AsyncTaskExecManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/lib/zxing/client/android/executor/PlatformSupportManager",
        "<",
        "Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/jingdong/lib/zxing/client/android/executor/AsyncTaskExecInterface;

    new-instance v1, Lcom/jingdong/lib/zxing/client/android/executor/DefaultAsyncTaskExecInterface;

    invoke-direct {v1}, Lcom/jingdong/lib/zxing/client/android/executor/DefaultAsyncTaskExecInterface;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/jingdong/lib/zxing/client/android/executor/PlatformSupportManager;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
