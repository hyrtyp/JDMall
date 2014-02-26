.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$28;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForPacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$28;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$28;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$24(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)J

    move-result-wide v1

    sput-wide v1, Lcom/jingdong/common/constant/Constants;->packMainProdId:J

    .line 1792
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$28;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/PacksListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1794
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "source"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$28;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1795
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$28;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1796
    return-void
.end method
