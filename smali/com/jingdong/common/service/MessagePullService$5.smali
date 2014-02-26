.class Lcom/jingdong/common/service/MessagePullService$5;
.super Ljava/lang/Object;
.source "MessagePullService.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/service/MessagePullService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/service/MessagePullService;


# direct methods
.method constructor <init>(Lcom/jingdong/common/service/MessagePullService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService$5;->this$0:Lcom/jingdong/common/service/MessagePullService;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 0
    .parameter "httpResponse"

    .prologue
    .line 415
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 408
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 401
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method
