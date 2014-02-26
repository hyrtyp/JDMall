.class Lcom/jingdong/app/mall/home/NewHomeActivity$2;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->loginCompletedNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$2;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$2;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MainFrameActivity;->checkTargetActivity()V

    .line 421
    return-void
.end method
