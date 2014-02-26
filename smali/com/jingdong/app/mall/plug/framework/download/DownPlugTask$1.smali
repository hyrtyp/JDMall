.class Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask$1;
.super Ljava/lang/Object;
.source "DownPlugTask.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask$1;->this$0:Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools;->getDownloadPlugList(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    .local v0, downloadPlugList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask$1;->this$0:Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;

    #getter for: Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;->access$0(Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools;->DownloadPlug(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0           #downloadPlugList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 40
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 33
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
