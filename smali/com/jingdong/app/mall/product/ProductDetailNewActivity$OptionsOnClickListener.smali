.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsOnClickListener"
.end annotation


# instance fields
.field private id:J

.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;J)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    iput-wide p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;->id:J

    .line 1152
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-wide v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;->id:J

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProduct(J)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;J)V

    .line 1158
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isStrecth:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$1(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    .line 1160
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$OptionsOnClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1161
    return-void
.end method
