.class Lcom/jingdong/app/mall/shopping/PacksListActivity$4;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "PacksListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/PacksListActivity;->setPackItemsData(Landroid/widget/ListView;Lcom/jingdong/common/utils/JSONArrayPoxy;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 508
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/PacksListActivity$4;)Lcom/jingdong/app/mall/shopping/PacksListActivity;
    .locals 1
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 513
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 514
    .local v1, view:Landroid/view/View;
    rem-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 515
    const v2, 0x7f02025c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 520
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/PacksListActivity$4;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 521
    .local v0, product:Lcom/jingdong/common/entity/Product;
    new-instance v2, Lcom/jingdong/app/mall/shopping/PacksListActivity$4$1;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/shopping/PacksListActivity$4$1;-><init>(Lcom/jingdong/app/mall/shopping/PacksListActivity$4;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    return-object v1

    .line 517
    .end local v0           #product:Lcom/jingdong/common/entity/Product;
    :cond_0
    const v2, 0x7f02025e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
