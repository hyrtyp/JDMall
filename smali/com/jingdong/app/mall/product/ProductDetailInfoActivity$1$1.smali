.class Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$1;
.super Ljava/lang/Object;
.source "ProductDetailInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

.field private final synthetic val$tabContentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$1;->val$tabContentLayout:Landroid/widget/RelativeLayout;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$1;->val$tabContentLayout:Landroid/widget/RelativeLayout;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->cutBranch(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Landroid/view/View;)V

    .line 234
    return-void
.end method
