.class Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->showError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1118
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->level:I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->access$1(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$12(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->access$1(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainErrorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$13(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->access$1(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$14(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->access$1(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubErrorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$15(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
