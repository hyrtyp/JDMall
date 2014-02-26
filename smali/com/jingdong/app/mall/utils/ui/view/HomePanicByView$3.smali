.class Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;
.super Ljava/lang/Object;
.source "HomePanicByView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getProductItemView(Lcom/jingdong/common/entity/Product;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->val$product:Lcom/jingdong/common/entity/Product;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 226
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->isTestA:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$1(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$2(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    const-string v1, "Click_MiaoShaDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$2(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "indexMiaoShaArea"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->gotoPanicBuyList()V
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)V

    goto :goto_0
.end method
