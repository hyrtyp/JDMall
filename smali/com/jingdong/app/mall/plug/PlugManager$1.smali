.class Lcom/jingdong/app/mall/plug/PlugManager$1;
.super Ljava/lang/Object;
.source "PlugManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/plug/PlugManager;->startPlugService(Lcom/jingdong/app/mall/utils/MyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/plug/PlugManager;

.field private final synthetic val$activity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/plug/PlugManager;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/PlugManager$1;->this$0:Lcom/jingdong/app/mall/plug/PlugManager;

    iput-object p2, p0, Lcom/jingdong/app/mall/plug/PlugManager$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 217
    .local v0, currentTime:J
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getPlugRequestTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getPlugRequestPeriod()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/PlugManager$1;->this$0:Lcom/jingdong/app/mall/plug/PlugManager;

    iget-object v4, p0, Lcom/jingdong/app/mall/plug/PlugManager$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v5, 0x1

    #calls: Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;Z)V
    invoke-static {v3, v4, v5}, Lcom/jingdong/app/mall/plug/PlugManager;->access$0(Lcom/jingdong/app/mall/plug/PlugManager;Landroid/content/Context;Z)V

    .line 226
    new-instance v2, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;

    iget-object v3, p0, Lcom/jingdong/app/mall/plug/PlugManager$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 227
    .local v2, plugTaskThread:Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;
    invoke-virtual {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;->run()V

    .line 229
    .end local v2           #plugTaskThread:Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;
    :cond_0
    return-void
.end method
