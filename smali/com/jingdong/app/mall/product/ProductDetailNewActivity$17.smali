.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showQuerying()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f07018e

    .line 1059
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->producNameAndAdWordView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$36(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070512

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1061
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDeliverView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$37(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070511

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1063
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCountTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$38(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const v2, 0x7f0701f9

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCountTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$39(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0701f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1067
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$40(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070510

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1068
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productCommentIndexImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$41(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->prodcutPromiseTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$42(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1072
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$17;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockProvinceChoosed:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$43(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1073
    return-void
.end method
