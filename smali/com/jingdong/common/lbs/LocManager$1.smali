.class Lcom/jingdong/common/lbs/LocManager$1;
.super Ljava/lang/Thread;
.source "LocManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/lbs/LocManager;->startLocationService()V
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
    iput-object p1, p0, Lcom/jingdong/common/lbs/LocManager$1;->this$0:Lcom/jingdong/common/lbs/LocManager;

    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    const-string v2, "LocManager"

    invoke-virtual {p0, v2}, Lcom/jingdong/common/lbs/LocManager$1;->setName(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    .line 100
    .local v0, count:I
    :goto_0
    iget-object v2, p0, Lcom/jingdong/common/lbs/LocManager$1;->this$0:Lcom/jingdong/common/lbs/LocManager;

    #getter for: Lcom/jingdong/common/lbs/LocManager;->canRunService:Z
    invoke-static {v2}, Lcom/jingdong/common/lbs/LocManager;->access$0(Lcom/jingdong/common/lbs/LocManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/jingdong/common/lbs/LocManager$1;->this$0:Lcom/jingdong/common/lbs/LocManager;

    new-instance v3, Lcom/jingdong/common/lbs/LocManager$1$1;

    invoke-direct {v3, p0}, Lcom/jingdong/common/lbs/LocManager$1$1;-><init>(Lcom/jingdong/common/lbs/LocManager$1;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/lbs/LocManager;->queryInfoByLocation(Lcom/jingdong/common/lbs/LocManager$MyLocationListener;)V

    .line 131
    :cond_0
    const-wide/32 v2, 0x1b7740

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
