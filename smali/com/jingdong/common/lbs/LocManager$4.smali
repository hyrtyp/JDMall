.class Lcom/jingdong/common/lbs/LocManager$4;
.super Ljava/util/TimerTask;
.source "LocManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/lbs/LocManager;->queryInfoByLocation(Lcom/jingdong/common/lbs/LocManager$MyLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/lbs/LocManager;


# direct methods
.method constructor <init>(Lcom/jingdong/common/lbs/LocManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/lbs/LocManager$4;->this$0:Lcom/jingdong/common/lbs/LocManager;

    .line 214
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/high16 v2, -0x4010

    .line 222
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/lbs/LocManager;->removeUpdateLocation()V

    .line 224
    iget-object v0, p0, Lcom/jingdong/common/lbs/LocManager$4;->this$0:Lcom/jingdong/common/lbs/LocManager;

    #getter for: Lcom/jingdong/common/lbs/LocManager;->isCurrLocationSucceed:Z
    invoke-static {v0}, Lcom/jingdong/common/lbs/LocManager;->access$5(Lcom/jingdong/common/lbs/LocManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/jingdong/common/lbs/LocManager$4;->this$0:Lcom/jingdong/common/lbs/LocManager;

    #getter for: Lcom/jingdong/common/lbs/LocManager;->productInfoUtil:Lcom/jingdong/common/lbs/ProductInfoUtil;
    invoke-static {v0}, Lcom/jingdong/common/lbs/LocManager;->access$3(Lcom/jingdong/common/lbs/LocManager;)Lcom/jingdong/common/lbs/ProductInfoUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/lbs/LocManager$4;->this$0:Lcom/jingdong/common/lbs/LocManager;

    #getter for: Lcom/jingdong/common/lbs/LocManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/jingdong/common/lbs/LocManager;->access$4(Lcom/jingdong/common/lbs/LocManager;)Landroid/content/Context;

    move-result-object v1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/common/lbs/ProductInfoUtil;->queryProductInfo(Landroid/content/Context;DD)V

    .line 231
    :cond_0
    return-void
.end method
