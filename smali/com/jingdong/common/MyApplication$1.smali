.class Lcom/jingdong/common/MyApplication$1;
.super Ljava/util/TimerTask;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/MyApplication;->exitToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/MyApplication;->access$0(Z)V

    .line 245
    return-void
.end method
