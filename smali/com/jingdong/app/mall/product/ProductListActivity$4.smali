.class Lcom/jingdong/app/mall/product/ProductListActivity$4;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->initComponent(Landroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$4;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->hidefloatLayout()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$4(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    .line 352
    return-void
.end method
