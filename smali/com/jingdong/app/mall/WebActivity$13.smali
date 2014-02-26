.class Lcom/jingdong/app/mall/WebActivity$13;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity;->hideLoadingBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$13;->this$0:Lcom/jingdong/app/mall/WebActivity;

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$13;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->loadingBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$18(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$13;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->loadingBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$18(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 820
    :cond_0
    return-void
.end method
