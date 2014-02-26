.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$24;
.super Ljava/lang/Thread;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getOrderInfoFromSer(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$24;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 3628
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3631
    const-string v1, "FillOrderActivity_getOrderInfoFromSer"

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$24;->setName(Ljava/lang/String;)V

    .line 3632
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3634
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3639
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$24;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->calculateOrder()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$14(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 3640
    return-void

    .line 3635
    :catch_0
    move-exception v0

    .line 3637
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
