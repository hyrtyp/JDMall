.class Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
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
.method constructor <init>(Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, view:Landroid/view/View;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 255
    return-object v0
.end method
