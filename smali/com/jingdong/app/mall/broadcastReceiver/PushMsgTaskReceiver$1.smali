.class Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;
.super Ljava/lang/Object;
.source "PushMsgTaskReceiver.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$killSelfToken:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    iput-object p2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;->val$killSelfToken:Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    iget-object v1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$1;->val$killSelfToken:Ljava/lang/Object;

    #calls: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->getUnreadMessages(Landroid/content/Context;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->access$0(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;Landroid/content/Context;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 97
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 93
    return-void
.end method
