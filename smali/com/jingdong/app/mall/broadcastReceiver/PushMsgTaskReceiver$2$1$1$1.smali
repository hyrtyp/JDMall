.class Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1$1;
.super Ljava/lang/Object;
.source "PushMsgTaskReceiver.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;

.field private final synthetic val$killSelfToken:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1$1;->this$3:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1$1;->val$killSelfToken:Ljava/lang/Object;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 1
    .parameter "httpResponse"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1$1;->val$killSelfToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1$1;->val$killSelfToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 220
    return-void
.end method
