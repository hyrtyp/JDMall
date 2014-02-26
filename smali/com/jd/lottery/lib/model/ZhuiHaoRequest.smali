.class public Lcom/jd/lottery/lib/model/ZhuiHaoRequest;
.super Lcom/jd/lottery/lib/model/IssueInfoRequest;
.source "ZhuiHaoRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private issuecount:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jd/lottery/lib/model/IssueInfoRequest;-><init>()V

    .line 14
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/jd/lottery/lib/model/ZhuiHaoRequest;->funcid:I

    .line 15
    return-void
.end method

.method public static getUri(ILcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;
    .locals 2
    .parameter "count"
    .parameter "type"

    .prologue
    .line 18
    new-instance v0, Lcom/jd/lottery/lib/model/ZhuiHaoRequest;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/ZhuiHaoRequest;-><init>()V

    .line 19
    .local v0, request:Lcom/jd/lottery/lib/model/ZhuiHaoRequest;
    iput p0, v0, Lcom/jd/lottery/lib/model/ZhuiHaoRequest;->issuecount:I

    .line 20
    invoke-virtual {p1}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/jd/lottery/lib/model/ZhuiHaoRequest;->lotteryCategory:I

    .line 21
    invoke-static {v0}, Lcom/jd/lottery/lib/net/LotteryUri;->getUri(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
