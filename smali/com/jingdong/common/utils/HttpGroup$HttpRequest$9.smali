.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$9;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$9;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 2176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 2179
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$9;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    monitor-enter v1

    .line 2180
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$9;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2179
    monitor-exit v1

    .line 2182
    return-void

    .line 2179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
