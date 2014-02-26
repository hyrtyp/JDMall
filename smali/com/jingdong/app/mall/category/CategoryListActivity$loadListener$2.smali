.class Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$2;
.super Ljava/lang/Object;
.source "CategoryListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->showError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->loadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$6(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->errorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$7(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    return-void
.end method
