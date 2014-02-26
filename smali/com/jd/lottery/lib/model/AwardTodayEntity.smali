.class public Lcom/jd/lottery/lib/model/AwardTodayEntity;
.super Lcom/jd/droidlib/model/Entity;
.source "AwardTodayEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public isBillion:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public isToday:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/jd/droidlib/model/Entity;-><init>()V

    return-void
.end method
