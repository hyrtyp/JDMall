.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5$1;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$5;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initShopingCar()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$19(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 734
    return-void
.end method
