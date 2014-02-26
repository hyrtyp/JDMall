.class public Lcom/jd/lottery/lib/utils/CountDownUtil;
.super Ljava/lang/Object;
.source "CountDownUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;
    }
.end annotation


# instance fields
.field private mCountDownListner:Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;

.field private mEndTime:J

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/jd/lottery/lib/utils/CountDownUtil$1;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/utils/CountDownUtil$1;-><init>(Lcom/jd/lottery/lib/utils/CountDownUtil;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mRunnable:Ljava/lang/Runnable;

    .line 5
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/utils/CountDownUtil;)J
    .locals 2
    .parameter

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/utils/CountDownUtil;)Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mCountDownListner:Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/utils/CountDownUtil;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/utils/CountDownUtil;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :cond_0
    return-void
.end method

.method public setCountDownListner(Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mCountDownListner:Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;

    .line 16
    return-void
.end method

.method public start(J)V
    .locals 1
    .parameter "end"

    .prologue
    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mHandler:Landroid/os/Handler;

    .line 20
    iput-wide p1, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mEndTime:J

    .line 21
    invoke-virtual {p0}, Lcom/jd/lottery/lib/utils/CountDownUtil;->resume()V

    .line 22
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jd/lottery/lib/utils/CountDownUtil;->mEndTime:J

    .line 50
    return-void
.end method
