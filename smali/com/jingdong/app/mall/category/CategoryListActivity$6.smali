.class Lcom/jingdong/app/mall/category/CategoryListActivity$6;
.super Ljava/lang/Object;
.source "CategoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity;->setEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->loadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$6(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->errorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$7(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->cId:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$16(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->cLevel:I
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$17(Lcom/jingdong/app/mall/category/CategoryListActivity;)I

    move-result v2

    #calls: Lcom/jingdong/app/mall/category/CategoryListActivity;->getCategory(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$18(Lcom/jingdong/app/mall/category/CategoryListActivity;Ljava/lang/String;I)V

    .line 258
    return-void
.end method
