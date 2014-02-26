.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->showActivities(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

.field private final synthetic val$index:I

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->val$index:I

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v1, v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->val$key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 975
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v1, v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 980
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$19(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 984
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v1, v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$20(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->val$index:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$20(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->val$index:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->rotate3d()V
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$25(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    .line 988
    return-void

    .line 977
    :cond_1
    new-instance v0, Lcom/jingdong/common/ui/ExceptionDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$24(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$10;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$24(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070229

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method
