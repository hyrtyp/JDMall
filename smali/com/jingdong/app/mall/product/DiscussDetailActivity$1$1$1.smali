.class Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "DiscussDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mGalleryItemBackground:I

.field final synthetic this$2:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IIFF)V
    .locals 9
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter "$anonymous5"
    .parameter "$anonymous6"
    .parameter "$anonymous7"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$1;->this$2:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 148
    invoke-direct/range {v0 .. v8}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IIFF)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
