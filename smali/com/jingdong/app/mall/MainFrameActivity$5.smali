.class Lcom/jingdong/app/mall/MainFrameActivity$5;
.super Ljava/util/TimerTask;
.source "MainFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->checkStartImage()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$5;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 436
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$5;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MainFrameActivity;->getStartImageState()I

    move-result v0

    .line 445
    .local v0, state:I
    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$5;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->freshNewStartImageByHttp(I)V

    .line 450
    return-void
.end method
