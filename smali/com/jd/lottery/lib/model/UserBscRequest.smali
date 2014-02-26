.class public Lcom/jd/lottery/lib/model/UserBscRequest;
.super Lcom/jd/droidlib/model/Model;
.source "UserBscRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private pin:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    .line 14
    return-void
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "pin"

    .prologue
    .line 17
    new-instance v0, Lcom/jd/lottery/lib/model/UserBscRequest;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/UserBscRequest;-><init>()V

    .line 18
    .local v0, request:Lcom/jd/lottery/lib/model/UserBscRequest;
    iput-object p0, v0, Lcom/jd/lottery/lib/model/UserBscRequest;->pin:Ljava/lang/String;

    .line 19
    const-string v1, "http://lotterygw.m.jd.com/getBalanceScoreAndCoupon"

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/net/LotteryUri;->getUri(Lcom/jd/droidlib/model/Model;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
