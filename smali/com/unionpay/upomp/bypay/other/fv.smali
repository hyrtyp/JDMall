.class public Lcom/unionpay/upomp/bypay/other/fv;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field private a:Ljava/util/concurrent/BlockingQueue;

.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/fv;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x3

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/unionpay/upomp/bypay/other/fv;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/fv;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/fv;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/unionpay/upomp/bypay/other/eu;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fv;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
