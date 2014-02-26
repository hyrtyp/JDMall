.class Lcom/jingdong/app/mall/signin/SignActivity$2;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/signin/SignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/signin/SignActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$2;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/signin/SignActivity$2;)Lcom/jingdong/app/mall/signin/SignActivity;
    .locals 1
    .parameter

    .prologue
    .line 775
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$2;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 779
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$2;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->test_count:I
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$1(Lcom/jingdong/app/mall/signin/SignActivity;)I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    .line 800
    return-void

    .line 784
    :cond_0
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$2;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jingdong/app/mall/signin/SignActivity$2$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/signin/SignActivity$2$1;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$2;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->test_count:I
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$1(Lcom/jingdong/app/mall/signin/SignActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->test_count:I
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$5(Lcom/jingdong/app/mall/signin/SignActivity;I)V

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
