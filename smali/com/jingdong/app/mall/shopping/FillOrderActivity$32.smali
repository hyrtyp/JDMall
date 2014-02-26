.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initLastOrderInfo(Lcom/jingdong/common/utils/JSONObjectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 4500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 4504
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNeedRemark:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$49(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4505
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemarkLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$50(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4506
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->viewGap6:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$51(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4511
    :goto_0
    return-void

    .line 4508
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemarkLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$50(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4509
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->viewGap6:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$51(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
