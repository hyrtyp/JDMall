.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;->val$type:Ljava/lang/String;

    .line 3085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;->val$type:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getOrderInfoFromSer(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$6(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    .line 3121
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;->val$type:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getType(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$29(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 3098
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07032e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$30(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V

    .line 3104
    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 3114
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 3093
    return-void
.end method
