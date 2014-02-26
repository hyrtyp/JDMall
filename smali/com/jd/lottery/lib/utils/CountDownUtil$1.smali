.class Lcom/jd/lottery/lib/utils/CountDownUtil$1;
.super Ljava/lang/Object;
.source "CountDownUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/utils/CountDownUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/utils/CountDownUtil;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/utils/CountDownUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/utils/CountDownUtil$1;->this$0:Lcom/jd/lottery/lib/utils/CountDownUtil;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 38
    iget-object v2, p0, Lcom/jd/lottery/lib/utils/CountDownUtil$1;->this$0:Lcom/jd/lottery/lib/utils/CountDownUtil;

    #getter for: Lcom/jd/lottery/lib/utils/CountDownUtil;->mEndTime:J
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/CountDownUtil;->access$0(Lcom/jd/lottery/lib/utils/CountDownUtil;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 39
    .local v0, timeDiff:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/jd/lottery/lib/utils/CountDownUtil$1;->this$0:Lcom/jd/lottery/lib/utils/CountDownUtil;

    #getter for: Lcom/jd/lottery/lib/utils/CountDownUtil;->mCountDownListner:Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/CountDownUtil;->access$1(Lcom/jd/lottery/lib/utils/CountDownUtil;)Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/jd/lottery/lib/utils/CountDownUtil$1;->this$0:Lcom/jd/lottery/lib/utils/CountDownUtil;

    #getter for: Lcom/jd/lottery/lib/utils/CountDownUtil;->mCountDownListner:Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/CountDownUtil;->access$1(Lcom/jd/lottery/lib/utils/CountDownUtil;)Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;->onCountDown(J)V

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/jd/lottery/lib/utils/CountDownUtil$1;->this$0:Lcom/jd/lottery/lib/utils/CountDownUtil;

    #getter for: Lcom/jd/lottery/lib/utils/CountDownUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/CountDownUtil;->access$2(Lcom/jd/lottery/lib/utils/CountDownUtil;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/jd/lottery/lib/utils/CountDownUtil$1;->this$0:Lcom/jd/lottery/lib/utils/CountDownUtil;

    #getter for: Lcom/jd/lottery/lib/utils/CountDownUtil;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/jd/lottery/lib/utils/CountDownUtil;->access$3(Lcom/jd/lottery/lib/utils/CountDownUtil;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
