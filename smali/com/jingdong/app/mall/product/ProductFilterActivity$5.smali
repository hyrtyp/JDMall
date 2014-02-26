.class Lcom/jingdong/app/mall/product/ProductFilterActivity$5;
.super Ljava/lang/Object;
.source "ProductFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity;->initDistributeRegionValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionSearchChoosed:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->handleHeadClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V

    .line 415
    return-void
.end method
