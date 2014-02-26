.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$12;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initCollectButton()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$12;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->collectButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$26(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 887
    return-void
.end method
