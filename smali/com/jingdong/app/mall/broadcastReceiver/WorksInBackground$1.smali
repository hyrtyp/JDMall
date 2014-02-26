.class Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;
.super Ljava/lang/Object;
.source "WorksInBackground.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    #getter for: Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->access$2(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneRegMessage:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->access$0(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;Z)V

    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    #calls: Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->close()V
    invoke-static {v0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->access$1(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)V

    .line 100
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneRegMessage:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->access$0(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;Z)V

    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    #calls: Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->close()V
    invoke-static {v0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->access$1(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)V

    .line 93
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 87
    return-void
.end method
