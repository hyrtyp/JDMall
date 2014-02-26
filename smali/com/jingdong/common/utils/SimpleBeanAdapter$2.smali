.class Lcom/jingdong/common/utils/SimpleBeanAdapter$2;
.super Ljava/lang/Object;
.source "SimpleBeanAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/SimpleBeanAdapter;->UIWorkCentralized(Lcom/jingdong/common/utils/adapter/UIRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$2;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 505
    iget-object v3, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$2;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    monitor-enter v3

    .line 506
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$2;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    #getter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->uiRunnables:Ljava/util/Vector;
    invoke-static {v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$6(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$2;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    #getter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->uiRunnables:Ljava/util/Vector;
    invoke-static {v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$6(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 505
    monitor-exit v3

    .line 512
    return-void

    .line 507
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/utils/adapter/UIRunnable;

    .line 508
    .local v1, r:Lcom/jingdong/common/utils/adapter/UIRunnable;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/adapter/UIRunnable;->run()V

    goto :goto_0

    .line 505
    .end local v0           #itr:Ljava/util/Iterator;
    .end local v1           #r:Lcom/jingdong/common/utils/adapter/UIRunnable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
