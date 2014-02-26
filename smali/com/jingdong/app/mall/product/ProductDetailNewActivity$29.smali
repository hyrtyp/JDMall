.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$29;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showPacksLayoutVisible(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

.field private final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$29;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iput p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$29;->val$visible:I

    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$29;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->packsLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$73(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$29;->val$visible:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1807
    return-void
.end method
