.class Lcom/jingdong/app/mall/MainFrameActivity$18$1;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/MainFrameActivity$18;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity$18;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$18$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$18;

    .line 1510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$18$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$18;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity$18;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/MainFrameActivity$18;->access$0(Lcom/jingdong/app/mall/MainFrameActivity$18;)Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 1523
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$18$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$18;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity$18;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/MainFrameActivity$18;->access$0(Lcom/jingdong/app/mall/MainFrameActivity$18;)Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 1518
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 1513
    return-void
.end method
