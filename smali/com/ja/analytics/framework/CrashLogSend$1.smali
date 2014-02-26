.class Lcom/ja/analytics/framework/CrashLogSend$1;
.super Ljava/lang/Object;
.source "CrashLogSend.java"

# interfaces
.implements Lcom/ja/analytics/net/HttpCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ja/analytics/framework/CrashLogSend;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ja/analytics/framework/CrashLogSend;


# direct methods
.method constructor <init>(Lcom/ja/analytics/framework/CrashLogSend;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ja/analytics/framework/CrashLogSend$1;->this$0:Lcom/ja/analytics/framework/CrashLogSend;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method

.method public onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/ja/analytics/framework/CrashLogSend;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendData onError url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/ja/analytics/logcrash/CrashLog;->getSingleton()Lcom/ja/analytics/logcrash/CrashLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ja/analytics/logcrash/CrashLog;->clearSendDate()V

    .line 79
    return-void
.end method

.method public onStart(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/ja/analytics/framework/CrashLogSend;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendData onStart result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
