.class Lcom/jingdong/common/utils/CPAUtils$Processor$3;
.super Ljava/lang/Object;
.source "CPAUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/CPAUtils$Processor;->startCPa(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/CPAUtils$Processor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$3;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    const/4 v4, 0x1

    .line 148
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 149
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$3;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    #getter for: Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;
    invoke-static {v2}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$1(Lcom/jingdong/common/utils/CPAUtils$Processor;)Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;->exit()V

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, jsonCode:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 156
    const-string v3, "cpaFlag"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    iget-object v2, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$3;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    #getter for: Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;
    invoke-static {v2}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$1(Lcom/jingdong/common/utils/CPAUtils$Processor;)Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;->registerDevice(Z)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$3;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    #getter for: Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;
    invoke-static {v2}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$1(Lcom/jingdong/common/utils/CPAUtils$Processor;)Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;->exit()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$3;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    #getter for: Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;
    invoke-static {v0}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$1(Lcom/jingdong/common/utils/CPAUtils$Processor;)Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;->exit()V

    .line 144
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 139
    return-void
.end method
