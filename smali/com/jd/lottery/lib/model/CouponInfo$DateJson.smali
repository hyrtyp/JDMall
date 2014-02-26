.class public Lcom/jd/lottery/lib/model/CouponInfo$DateJson;
.super Lcom/jd/droidlib/model/Model;
.source "CouponInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/model/CouponInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateJson"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private date:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private day:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private hours:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private minutes:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private month:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private seconds:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private time:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private timezoneOffset:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private year:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/model/CouponInfo$DateJson;)J
    .locals 2
    .parameter

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/jd/lottery/lib/model/CouponInfo$DateJson;->time:J

    return-wide v0
.end method
