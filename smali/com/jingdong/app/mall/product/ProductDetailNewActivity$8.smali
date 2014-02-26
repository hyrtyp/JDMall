.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$8;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initFreeReadButton()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 792
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 793
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$23(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getReadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 795
    return-void
.end method
