.class Lcom/jingdong/app/mall/product/ProductListActivity$2;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$14(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->listDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$15(Lcom/jingdong/app/mall/product/ProductListActivity;Landroid/app/AlertDialog;)V

    .line 257
    return-void
.end method
