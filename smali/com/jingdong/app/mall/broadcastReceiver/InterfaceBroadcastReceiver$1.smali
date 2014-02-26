.class Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "InterfaceBroadcastReceiver.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->cps(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$1;->val$runnable:Ljava/lang/Runnable;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 461
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 462
    const-string v1, "usid"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->usid:Ljava/lang/String;

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 467
    :cond_1
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 453
    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 446
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method
