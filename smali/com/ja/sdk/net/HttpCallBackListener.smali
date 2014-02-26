.class public interface abstract Lcom/ja/sdk/net/HttpCallBackListener;
.super Ljava/lang/Object;
.source "HttpCallBackListener.java"


# virtual methods
.method public abstract onEnd(Lorg/json/JSONArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;Lorg/json/JSONArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/lang/String;Lorg/json/JSONArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
