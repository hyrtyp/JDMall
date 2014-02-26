.class Lcom/jingdong/app/mall/product/ProductListActivity$10$3;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$10;->toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$3;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$3;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->errorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$44(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    return-void
.end method
