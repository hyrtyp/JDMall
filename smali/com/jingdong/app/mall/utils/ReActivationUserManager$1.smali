.class Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;
.super Ljava/lang/Object;
.source "ReActivationUserManager.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ReActivationUserManager;->requestNotifys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ReActivationUserManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 202
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_0

    .line 203
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, title:Ljava/lang/String;
    const-string v4, "created"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, createTime:Ljava/lang/String;
    const-string v4, "content"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, content:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    #calls: Lcom/jingdong/app/mall/utils/ReActivationUserManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v0, v1}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->access$1(Lcom/jingdong/app/mall/utils/ReActivationUserManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #createTime:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->startReActivationUserTask()V

    .line 218
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    #calls: Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelf()V
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->access$2(Lcom/jingdong/app/mall/utils/ReActivationUserManager;)V

    .line 219
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    #getter for: Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->access$0(Lcom/jingdong/app/mall/utils/ReActivationUserManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070423

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    #getter for: Lcom/jingdong/app/mall/utils/ReActivationUserManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->access$0(Lcom/jingdong/app/mall/utils/ReActivationUserManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070424

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/jingdong/common/utils/FormatUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 185
    #calls: Lcom/jingdong/app/mall/utils/ReActivationUserManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->access$1(Lcom/jingdong/app/mall/utils/ReActivationUserManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->startReActivationUserTask()V

    .line 196
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ReActivationUserManager$1;->this$0:Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    #calls: Lcom/jingdong/app/mall/utils/ReActivationUserManager;->killSelf()V
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->access$2(Lcom/jingdong/app/mall/utils/ReActivationUserManager;)V

    .line 197
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 177
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method
