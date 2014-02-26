.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$14;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->collectButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$26(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 903
    return-void
.end method
