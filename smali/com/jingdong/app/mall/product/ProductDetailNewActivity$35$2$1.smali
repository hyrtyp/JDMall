.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;

.field private final synthetic val$imageList:Ljava/util/List;

.field private final synthetic val$itemView:Landroid/view/View;

.field private final synthetic val$position:I

.field private final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;Landroid/widget/ProgressBar;Ljava/util/List;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->val$imageList:Ljava/util/List;

    iput p4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->val$position:I

    iput-object p5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->val$itemView:Landroid/view/View;

    .line 2006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->val$progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2011
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->val$imageList:Ljava/util/List;

    iget v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->val$position:I

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;->val$itemView:Landroid/view/View;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loadProductPicture(Ljava/util/List;ILandroid/view/View;)V
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$3(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/util/List;ILandroid/view/View;)V

    .line 2012
    return-void
.end method
