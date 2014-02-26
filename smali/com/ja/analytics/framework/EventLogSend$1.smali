.class Lcom/ja/analytics/framework/EventLogSend$1;
.super Ljava/lang/Object;
.source "EventLogSend.java"

# interfaces
.implements Lcom/ja/analytics/net/HttpCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ja/analytics/framework/EventLogSend;->sendData(Landroid/content/Context;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ja/analytics/framework/EventLogSend;


# direct methods
.method constructor <init>(Lcom/ja/analytics/framework/EventLogSend;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ja/analytics/framework/EventLogSend$1;->this$0:Lcom/ja/analytics/framework/EventLogSend;

    .line 64
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
    .line 75
    return-void
.end method

.method public onError(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ja/analytics/logevent/EventLog;->clearSendDate()V

    .line 81
    return-void
.end method

.method public onStart(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    return-void
.end method
