.class Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsOnClickListener"
.end annotation


# instance fields
.field private id:J

.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;J)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-wide p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;->id:J

    .line 731
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-wide v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$OptionsOnClickListener;->id:J

    const/4 v3, 0x0

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProduct(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity;JZ)V

    .line 736
    return-void
.end method
