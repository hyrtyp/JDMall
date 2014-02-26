.class Lcom/jingdong/common/utils/GlobalInitialization$3;
.super Ljava/lang/Object;
.source "GlobalInitialization.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/GlobalInitialization;->serverConfig(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/GlobalInitialization;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/GlobalInitialization;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/GlobalInitialization$3;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 9
    .parameter "httpResponse"

    .prologue
    const/4 v8, 0x1

    .line 348
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "serverConfig"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 349
    .local v0, config:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_1

    .line 350
    iget-object v6, p0, Lcom/jingdong/common/utils/GlobalInitialization$3;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #getter for: Lcom/jingdong/common/utils/GlobalInitialization;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/jingdong/common/utils/GlobalInitialization;->access$4(Lcom/jingdong/common/utils/GlobalInitialization;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 351
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 359
    const-string v6, "serverConfig"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 361
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/jingdong/common/utils/GlobalInitialization$3;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #getter for: Lcom/jingdong/common/utils/GlobalInitialization;->configListenerList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/common/utils/GlobalInitialization;->access$5(Lcom/jingdong/common/utils/GlobalInitialization;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_3

    .line 373
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:I
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lcom/jingdong/common/utils/GlobalInitialization$3;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #setter for: Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z
    invoke-static {v6, v8}, Lcom/jingdong/common/utils/GlobalInitialization;->access$6(Lcom/jingdong/common/utils/GlobalInitialization;Z)V

    .line 374
    iget-object v6, p0, Lcom/jingdong/common/utils/GlobalInitialization$3;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    const-string v7, "BLOCK_TASK_TOKEN_SERVER_CONFIG"

    #calls: Lcom/jingdong/common/utils/GlobalInitialization;->removeBlockTaskToken(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/jingdong/common/utils/GlobalInitialization;->access$7(Lcom/jingdong/common/utils/GlobalInitialization;Ljava/lang/String;)V

    .line 376
    return-void

    .line 352
    .restart local v1       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 353
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 357
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 370
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_3
    iget-object v6, p0, Lcom/jingdong/common/utils/GlobalInitialization$3;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #getter for: Lcom/jingdong/common/utils/GlobalInitialization;->configListenerList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/common/utils/GlobalInitialization;->access$5(Lcom/jingdong/common/utils/GlobalInitialization;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/utils/GlobalInitialization$ConfigLoadedListener;

    invoke-interface {v6}, Lcom/jingdong/common/utils/GlobalInitialization$ConfigLoadedListener;->onLoaded()V

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 362
    .end local v2           #i:I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$3;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    const-string v1, "BLOCK_TASK_TOKEN_SERVER_CONFIG"

    #calls: Lcom/jingdong/common/utils/GlobalInitialization;->removeBlockTaskToken(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/GlobalInitialization;->access$7(Lcom/jingdong/common/utils/GlobalInitialization;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 385
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method
