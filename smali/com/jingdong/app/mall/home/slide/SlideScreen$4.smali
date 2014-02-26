.class Lcom/jingdong/app/mall/home/slide/SlideScreen$4;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;->loadHdTitleView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$4;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 240
    .local v0, item:Lcom/jingdong/common/entity/Product;
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$4;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    .line 241
    new-instance v5, Lcom/jingdong/common/entity/SourceEntity;

    const-string v6, "recommend_sales_product"

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$4;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$7(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/entity/HomeFloorElement;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$4;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$7(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/entity/HomeFloorElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/HomeFloorElement;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v5, v6, v1}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {v2, v3, v4, v5}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_0

    .line 241
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method
