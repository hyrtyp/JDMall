.class Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader$2;
.super Lcom/jingdong/common/utils/SimpleSubViewBinder;
.source "CommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;

    .line 261
    invoke-direct {p0, p2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    return-void
.end method


# virtual methods
.method public subBind(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;)Z
    .locals 5
    .parameter "subViewHolder"

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubView()Landroid/view/View;

    move-result-object v2

    .line 265
    .local v2, view:Landroid/view/View;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubData()Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, data:Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0c0194

    if-ne v3, v4, :cond_0

    move-object v1, v2

    .line 267
    check-cast v1, Landroid/widget/RatingBar;

    .line 268
    .local v1, rb:Landroid/widget/RatingBar;
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #data:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 269
    const/4 v3, 0x1

    .line 271
    .end local v1           #rb:Landroid/widget/RatingBar;
    :goto_0
    return v3

    .restart local v0       #data:Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
