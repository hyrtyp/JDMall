.class Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "JdNewsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1$1;->this$1:Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 122
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, view:Landroid/view/View;
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 126
    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
