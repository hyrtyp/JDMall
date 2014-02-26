.class Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity$1;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->homeContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$5(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v1

    const v2, 0x7f0701ae

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ToastUtils;->showToast(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->dataLoaded()V
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$6(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    .line 299
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->loadingFail:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$3(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->homeContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$5(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method
