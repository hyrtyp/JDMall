.class Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;
.super Ljava/lang/Object;
.source "HomeSharedToPersionActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->showReportList(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

.field private final synthetic val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$reportText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;

    iput-object p4, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$reportText:Landroid/widget/TextView;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;)Lcom/jingdong/app/mall/HomeSharedToPersionActivity;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 19
    .parameter "httpResponse"

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v3, 0x7f0c0108

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 76
    .local v8, report_list:Landroid/widget/ListView;
    invoke-virtual {v8}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 77
    .local v10, report_listLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/16 v18, 0x0

    .line 78
    .local v18, heightFlag:I
    iget v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 79
    const/16 v18, -0x2

    .line 80
    invoke-virtual {v8}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    :cond_0
    move/from16 v9, v18

    .line 84
    .local v9, heightFlag_:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v5, "jdnewsList"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->reportJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->access$0(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    #getter for: Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->reportJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v2}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->access$1(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 161
    :goto_0
    return-void

    .line 88
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    #getter for: Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->reportJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v2}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->access$1(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/JdNews;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 89
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    new-instance v1, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v5, 0x7f030071

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "title"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    new-array v7, v2, [I

    const/4 v2, 0x0

    const v11, 0x7f0c029a

    aput v11, v7, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;-><init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILandroid/widget/ListView;ILandroid/view/ViewGroup$LayoutParams;Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 142
    .local v1, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v11, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$reportText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    move-object v13, v8

    move-object v14, v1

    invoke-direct/range {v11 .. v17}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;-><init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;Landroid/widget/ListView;Lcom/jingdong/common/utils/MySimpleAdapter;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;Landroid/widget/TextView;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v2, v11}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 69
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 62
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
