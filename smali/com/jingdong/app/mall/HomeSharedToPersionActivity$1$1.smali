.class Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "HomeSharedToPersionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private one:Z

.field final synthetic this$1:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;

.field private final synthetic val$heightFlag_:I

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$report_list:Landroid/widget/ListView;

.field private final synthetic val$report_listLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILandroid/widget/ListView;ILandroid/view/ViewGroup$LayoutParams;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 7
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->this$1:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;

    iput-object p7, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->val$report_list:Landroid/widget/ListView;

    iput p8, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->val$heightFlag_:I

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->val$report_listLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 89
    invoke-direct/range {v1 .. v6}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;)Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->this$1:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 97
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->val$report_list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    .line 99
    .local v1, dividerHeight:I
    iget-boolean v4, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->one:Z

    if-nez v4, :cond_0

    if-lez v0, :cond_0

    iget v4, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->val$heightFlag_:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 101
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->one:Z

    .line 103
    add-int v4, v0, v1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int v2, v4, v1

    .line 104
    .local v2, height:I
    iget-object v4, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->val$report_listLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    .end local v2           #height:I
    :cond_0
    new-instance v4, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;

    iget-object v5, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v4, p0, p1, v5}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;-><init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;ILcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-object v3
.end method
