.class Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;
.super Ljava/lang/Object;
.source "FloorProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

.field private final synthetic val$promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;Lcom/jingdong/common/utils/MySimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;->val$promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->floorBannerRoot:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$21(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;->val$promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$10(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->floorBannerRoot:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$21(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->addHeaderView(Landroid/widget/ListView;Landroid/view/View;)V

    .line 448
    :cond_0
    return-void
.end method
