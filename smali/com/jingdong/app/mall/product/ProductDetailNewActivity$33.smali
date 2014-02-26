.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateColorAndSizeTextView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1882
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColor:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$77(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$78(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1884
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$79(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1891
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSize:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$80(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$81(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1893
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$82(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1899
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stockProvinceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$83(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1900
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$84(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1901
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$85(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1907
    :goto_2
    return-void

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$78(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1887
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$79(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$77(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productColorContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$79(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1895
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$81(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1896
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$82(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSize:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$80(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productSizeContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$82(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1903
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$84(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1904
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$85(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stockProvinceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$83(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1905
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$33;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockContentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$85(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
