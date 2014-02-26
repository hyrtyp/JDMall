.class Lcom/jingdong/common/utils/SimpleBeanAdapter$1;
.super Landroid/widget/HeaderViewListAdapter;
.source "SimpleBeanAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/SimpleBeanAdapter;->getHeaderViewListAdapter()Landroid/widget/HeaderViewListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter "$anonymous2"

    .prologue
    .line 1
    .local p2, $anonymous0:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p3, $anonymous1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$1;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    .line 353
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 357
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 362
    :goto_0
    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Throwable;
    new-instance v1, Landroid/view/View;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
