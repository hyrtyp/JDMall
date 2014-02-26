.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$10;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForEasyBuy()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 827
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 828
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 829
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 830
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->id:J
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$24(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)J

    move-result-wide v1

    sput-wide v1, Lcom/jingdong/common/constant/Constants;->easyBuyProdId:J

    .line 832
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 833
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isEasyBuy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 834
    const-string v1, "easyBuySource"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 835
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 837
    return-void
.end method
