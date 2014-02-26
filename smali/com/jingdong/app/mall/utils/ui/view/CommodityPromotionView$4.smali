.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$4;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Lcom/jingdong/app/mall/utils/IGestureListener$TouchFlingActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->initCommercial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->doNext(Z)V

    .line 212
    return-void
.end method

.method public previous()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->doPrevious(Z)V

    .line 207
    return-void
.end method

.method public startActivity()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->doStartActivity()V

    .line 217
    return-void
.end method
