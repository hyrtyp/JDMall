.class public Lcom/jd/lottery/lib/model/IssueInfoRequest;
.super Lcom/jd/lottery/lib/model/RequestEntity;
.source "IssueInfoRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public lotteryCategory:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "lotterycategory"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/jd/lottery/lib/model/RequestEntity;-><init>()V

    .line 10
    return-void
.end method
