.class Lcom/jingdong/app/mall/shopping/PacksListActivity$4$1;
.super Ljava/lang/Object;
.source "PacksListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/PacksListActivity$4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/PacksListActivity$4;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/PacksListActivity$4;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$4$1;->this$1:Lcom/jingdong/app/mall/shopping/PacksListActivity$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$4$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$4$1;->this$1:Lcom/jingdong/app/mall/shopping/PacksListActivity$4;

    #getter for: Lcom/jingdong/app/mall/shopping/PacksListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/PacksListActivity$4;->access$0(Lcom/jingdong/app/mall/shopping/PacksListActivity$4;)Lcom/jingdong/app/mall/shopping/PacksListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$4$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$4$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v2

    .line 527
    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "packs"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 528
    return-void
.end method
