.class Lcom/jingdong/common/utils/StatisticsReportUtil$1;
.super Ljava/lang/Object;
.source "StatisticsReportUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$MacAddressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/StatisticsReportUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public setMacAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    invoke-static {p1}, Lcom/jingdong/common/utils/StatisticsReportUtil;->access$0(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jingdong/common/utils/StatisticsReportUtil;->access$1(Z)V

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit p0

    .line 218
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
