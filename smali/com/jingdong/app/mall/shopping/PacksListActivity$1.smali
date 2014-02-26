.class Lcom/jingdong/app/mall/shopping/PacksListActivity$1;
.super Ljava/lang/Object;
.source "PacksListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/PacksListActivity;->getPacksInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/PacksListActivity$1;)Lcom/jingdong/app/mall/shopping/PacksListActivity;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    new-instance v2, Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 157
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    .line 156
    iput-object v2, v1, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 158
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    new-instance v2, Lcom/jingdong/app/mall/shopping/PacksListActivity$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/PacksListActivity$1$1;-><init>(Lcom/jingdong/app/mall/shopping/PacksListActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 138
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 150
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
