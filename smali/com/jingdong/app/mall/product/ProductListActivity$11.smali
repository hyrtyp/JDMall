.class Lcom/jingdong/app/mall/product/ProductListActivity$11;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->searchCateText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$41(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$42(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    return-void
.end method
