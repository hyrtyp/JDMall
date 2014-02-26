.class Lcom/jingdong/app/mall/MainFrameActivity$2;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$2;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 312
    iget-object v2, p0, Lcom/jingdong/app/mall/MainFrameActivity$2;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity;->leaveTime:Ljava/util/Date;
    invoke-static {v2}, Lcom/jingdong/app/mall/MainFrameActivity;->access$2(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity$2;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity;->leaveTime:Ljava/util/Date;
    invoke-static {v4}, Lcom/jingdong/app/mall/MainFrameActivity;->access$2(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 314
    .local v0, gap:J
    const-string v2, "leaveTimeGap"

    invoke-static {v2}, Lcom/jingdong/common/config/Configuration;->getIntegerProperty(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 315
    invoke-static {}, Lcom/jingdong/common/utils/GlobalInitialization;->regDevice()V

    .line 323
    .end local v0           #gap:J
    :cond_0
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/lbs/LocManager;->onResume()V

    .line 324
    return-void
.end method
