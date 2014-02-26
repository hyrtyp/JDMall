.class Lcom/jingdong/common/utils/CPAUtils$Processor$2;
.super Ljava/lang/Object;
.source "CPAUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/CPAUtils$Processor;->getCpaToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

.field private final synthetic val$strByte:[B


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/CPAUtils$Processor;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$2;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    iput-object p2, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$2;->val$strByte:[B

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 90
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$2;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    #getter for: Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;
    invoke-static {v2}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$1(Lcom/jingdong/common/utils/CPAUtils$Processor;)Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;->exit()V

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v2, "ticket"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, ticket:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 96
    iget-object v2, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$2;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    #getter for: Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;
    invoke-static {v2}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$1(Lcom/jingdong/common/utils/CPAUtils$Processor;)Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;->exit()V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$2;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    iget-object v3, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$2;->val$strByte:[B

    #calls: Lcom/jingdong/common/utils/CPAUtils$Processor;->startCPa(Ljava/lang/String;[B)V
    invoke-static {v2, v1, v3}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$2(Lcom/jingdong/common/utils/CPAUtils$Processor;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$2;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    #getter for: Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;
    invoke-static {v0}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$1(Lcom/jingdong/common/utils/CPAUtils$Processor;)Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;->exit()V

    .line 85
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 80
    return-void
.end method
