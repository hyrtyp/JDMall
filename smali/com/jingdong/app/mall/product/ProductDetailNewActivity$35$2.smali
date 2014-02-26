.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

.field private final synthetic val$imageList:Ljava/util/List;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$itemView:Landroid/view/View;

.field private final synthetic val$position:I

.field private final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Ljava/util/List;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$imageList:Ljava/util/List;

    iput p5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$position:I

    iput-object p6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$itemView:Landroid/view/View;

    .line 2001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;
    .locals 1
    .parameter

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2005
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07051b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2006
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$imageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$imageList:Ljava/util/List;

    iget v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$position:I

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;->val$itemView:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$2;Landroid/widget/ProgressBar;Ljava/util/List;ILandroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2014
    return-void
.end method
