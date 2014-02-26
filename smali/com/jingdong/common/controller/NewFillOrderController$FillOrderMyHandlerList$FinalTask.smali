.class Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;
.super Ljava/lang/Object;
.source "NewFillOrderController.java"

# interfaces
.implements Lcom/jingdong/common/utils/MyHandlerList$MyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 617
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 618
    sget-object v0, Lcom/jingdong/common/controller/NewFillOrderController;->TAG:Ljava/lang/String;

    const-string v1, " FinalTask -->>  run"

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;->this$1:Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V

    .line 621
    return-void
.end method
