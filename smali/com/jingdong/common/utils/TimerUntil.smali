.class public Lcom/jingdong/common/utils/TimerUntil;
.super Ljava/lang/Object;
.source "TimerUntil.java"


# static fields
.field public static final CHANGED_TIME:Ljava/lang/String; = "changed_time"

.field public static final USER_TIME:Ljava/lang/String; = "user_time"

.field public static endTime:J

.field public static isChangedDate:Z

.field public static startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserTime()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v0, 0x0

    .line 20
    sget-wide v2, Lcom/jingdong/common/utils/TimerUntil;->endTime:J

    sget-wide v4, Lcom/jingdong/common/utils/TimerUntil;->startTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    sget-wide v0, Lcom/jingdong/common/utils/TimerUntil;->endTime:J

    sget-wide v2, Lcom/jingdong/common/utils/TimerUntil;->startTime:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v6

    :cond_0
    return-wide v0
.end method
