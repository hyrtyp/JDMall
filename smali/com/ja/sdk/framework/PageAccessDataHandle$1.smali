.class Lcom/ja/sdk/framework/PageAccessDataHandle$1;
.super Ljava/lang/Object;
.source "PageAccessDataHandle.java"

# interfaces
.implements Lcom/ja/sdk/net/HttpCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ja/sdk/framework/PageAccessDataHandle;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ja/sdk/framework/PageAccessDataHandle;


# direct methods
.method constructor <init>(Lcom/ja/sdk/framework/PageAccessDataHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ja/sdk/framework/PageAccessDataHandle$1;->this$0:Lcom/ja/sdk/framework/PageAccessDataHandle;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public onError(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "PageAccessDataHandle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PageAccessDataHandle onError url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ja/sdk/pagevisit/PageAccessData;->clearSendDate()V

    .line 72
    return-void
.end method

.method public onStart(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "PageAccessDataHandle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PageAccessDataHandle onStart result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method
