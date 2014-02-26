.class Lcom/ja/sdk/JaMobLogService$3$1;
.super Ljava/lang/Object;
.source "JaMobLogService.java"

# interfaces
.implements Lcom/ja/sdk/net/HttpCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ja/sdk/JaMobLogService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ja/sdk/JaMobLogService$3;


# direct methods
.method constructor <init>(Lcom/ja/sdk/JaMobLogService$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ja/sdk/JaMobLogService$3$1;->this$1:Lcom/ja/sdk/JaMobLogService$3;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lorg/json/JSONArray;)V
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 603
    const-string v0, "JaMobLogService"

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "testJaServerAutoSend onEnd result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 604
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void
.end method

.method public onError(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 613
    :try_start_0
    const-string v1, "JaMobLogService"

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "testJaServerAutoSend onError url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 597
    return-void
.end method
