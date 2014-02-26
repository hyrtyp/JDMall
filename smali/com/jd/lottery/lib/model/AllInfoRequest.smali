.class public Lcom/jd/lottery/lib/model/AllInfoRequest;
.super Lcom/jd/lottery/lib/model/RequestEntity;
.source "AllInfoRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jd/lottery/lib/model/RequestEntity;-><init>()V

    .line 12
    return-void
.end method

.method public static getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/jd/lottery/lib/model/AllInfoRequest;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/AllInfoRequest;-><init>()V

    .line 16
    .local v0, request:Lcom/jd/lottery/lib/model/AllInfoRequest;
    const-string v1, "http://lotterygw.m.jd.com/getAwardAndEndTimeAllCategory"

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/net/LotteryUri;->getUri(Lcom/jd/droidlib/model/Model;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
