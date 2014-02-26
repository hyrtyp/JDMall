.class Lcom/jingdong/app/mall/WebActivity$6;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$6;->this$0:Lcom/jingdong/app/mall/WebActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$6;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->isFromNF:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$4(Lcom/jingdong/app/mall/WebActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$6;->this$0:Lcom/jingdong/app/mall/WebActivity;

    const-class v2, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$6;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/WebActivity;->stopLoading()V

    .line 274
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$6;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/WebActivity;->finish()V

    .line 275
    return-void
.end method
