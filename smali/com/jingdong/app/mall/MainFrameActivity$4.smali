.class Lcom/jingdong/app/mall/MainFrameActivity$4;
.super Ljava/lang/Thread;
.source "MainFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->initNetwork()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$4;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 405
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 407
    const-string v0, "MainFrameActivity_initNetwork"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity$4;->setName(Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/utils/GlobalInitialization;->initNetwork(Z)V

    .line 410
    return-void
.end method
