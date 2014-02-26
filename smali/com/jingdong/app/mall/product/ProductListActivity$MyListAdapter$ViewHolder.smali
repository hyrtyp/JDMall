.class Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field productCommentCountTv:Landroid/widget/TextView;

.field productGoodTv:Landroid/widget/TextView;

.field productJdPriceView:Landroid/widget/TextView;

.field productMartPriceView:Landroid/widget/TextView;

.field productPromotionJiangIv:Landroid/widget/ImageView;

.field productPromotionVipIv:Landroid/widget/ImageView;

.field productPromotionZengIv:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1932
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
