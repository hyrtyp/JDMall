.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->QueryDatas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

.field private final synthetic val$action:Ljava/lang/String;

.field private final synthetic val$isClick:Z

.field private final synthetic val$province:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iput-boolean p2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->val$isClick:Z

    iput-object p3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->val$province:Ljava/lang/String;

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x1

    .line 1152
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 1153
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v0, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1158
    :cond_0
    iget-boolean v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->val$isClick:Z

    if-eqz v1, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->val$action:Ljava/lang/String;

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->handleDatas(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    invoke-static {v1, v2, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$3(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 1160
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v1, v3, v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1165
    :goto_1
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    goto :goto_0

    .line 1163
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->val$province:Ljava/lang/String;

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->handleAllDatas(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$4(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 1148
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1143
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1170
    return-void
.end method
