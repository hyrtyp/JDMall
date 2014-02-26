.class Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$3;
.super Ljava/lang/Object;
.source "PromotionProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->showError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$3;->this$1:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$3;->this$1:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->access$0(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;)Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->noDateTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$4(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$3;->this$1:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->access$0(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;)Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->gridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$5(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 265
    return-void
.end method
