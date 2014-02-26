.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$2;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$2;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 496
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    const v2, 0x7f0701b0

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 497
    return-void
.end method
