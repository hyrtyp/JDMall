.class Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

.field private final synthetic val$colorValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->val$colorValue:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    const/4 v6, 0x0

    .line 168
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->val$colorValue:Ljava/lang/String;

    .line 169
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$9(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 171
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 172
    .local v2, matchWareInfoListObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 176
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v4

    const-string v5, "matchWareInfoList"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorShoppingList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$10(Lcom/jingdong/app/mall/shopping/CameraActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 177
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorShoppingList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$11(Lcom/jingdong/app/mall/shopping/CameraActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/jingdong/common/entity/JDColorProductModel;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 178
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDColorProductModel;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/shopping/CameraActivity;->showError()V
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$12(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDColorProductModel;>;"
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z
    invoke-static {v4, v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$2(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V

    .line 191
    .end local v2           #matchWareInfoListObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_1
    return-void

    .line 181
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDColorProductModel;>;"
    .restart local v2       #matchWareInfoListObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/shopping/CameraActivity;->loadProductPicture(Ljava/util/ArrayList;)V
    invoke-static {v4, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$13(Lcom/jingdong/app/mall/shopping/CameraActivity;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDColorProductModel;>;"
    .end local v2           #matchWareInfoListObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z
    invoke-static {v4, v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$2(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V

    goto :goto_1

    .line 184
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #matchWareInfoListObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/shopping/CameraActivity;->showError()V
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$12(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 188
    .end local v2           #matchWareInfoListObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catchall_0
    move-exception v4

    .line 189
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$2(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V

    .line 190
    throw v4
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$2(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V

    .line 196
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 201
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method
