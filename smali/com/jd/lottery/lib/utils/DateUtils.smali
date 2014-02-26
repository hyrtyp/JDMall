.class public Lcom/jd/lottery/lib/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final ND:J = 0x5265c00L

.field private static final NH:J = 0x36ee80L

.field private static final NM:J = 0xea60L

.field private static final NS:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateDiff(J)Ljava/lang/String;
    .locals 15
    .parameter "diff"

    .prologue
    .line 41
    move-wide v9, p0

    .line 42
    .local v9, time:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gtz v11, :cond_0

    .line 43
    const-string v6, "0:00:00"

    .line 60
    :goto_0
    return-object v6

    .line 45
    :cond_0
    const-wide/32 v11, 0x5265c00

    div-long v0, v9, v11

    .line 46
    .local v0, day:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    div-long v2, v11, v13

    .line 47
    .local v2, hour:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    rem-long/2addr v11, v13

    const-wide/32 v13, 0xea60

    div-long v4, v11, v13

    .line 48
    .local v4, min:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    rem-long/2addr v11, v13

    const-wide/32 v13, 0xea60

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long v7, v11, v13

    .line 49
    .local v7, sec:J
    const-string v6, ""

    .line 52
    .local v6, s:Ljava/lang/String;
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-lez v11, :cond_1

    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v13, 0xa

    cmp-long v11, v4, v13

    if-gez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "0"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 57
    const-wide/16 v13, 0xa

    cmp-long v11, v7, v13

    if-gez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "0"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 56
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    goto/16 :goto_0

    .line 56
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_1

    .line 57
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_2
.end method

.method public static getDateDiff4List(J)Ljava/lang/String;
    .locals 15
    .parameter "diff"

    .prologue
    .line 70
    move-wide v9, p0

    .line 71
    .local v9, time:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gtz v11, :cond_0

    .line 72
    const-string v6, "0\u5c0f\u65f600\u520600\u79d2"

    .line 89
    :goto_0
    return-object v6

    .line 74
    :cond_0
    const-wide/32 v11, 0x5265c00

    div-long v0, v9, v11

    .line 75
    .local v0, day:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    div-long v2, v11, v13

    .line 76
    .local v2, hour:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    rem-long/2addr v11, v13

    const-wide/32 v13, 0xea60

    div-long v4, v11, v13

    .line 77
    .local v4, min:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    rem-long/2addr v11, v13

    const-wide/32 v13, 0xea60

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long v7, v11, v13

    .line 78
    .local v7, sec:J
    const-string v6, ""

    .line 81
    .local v6, s:Ljava/lang/String;
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-lez v11, :cond_1

    .line 82
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 85
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u5c0f\u65f6"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v13, 0xa

    cmp-long v11, v4, v13

    if-gez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "0"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u5206"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 86
    const-wide/16 v13, 0xa

    cmp-long v11, v7, v13

    if-gez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "0"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u79d2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 85
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    goto/16 :goto_0

    .line 85
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_2
.end method

.method public static getDateDiffDay(J)Ljava/lang/String;
    .locals 15
    .parameter "diff"

    .prologue
    .line 18
    move-wide v9, p0

    .line 19
    .local v9, time:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gtz v11, :cond_0

    .line 20
    const-string v6, "0\u592900\u5c0f\u65f600\u520600\u79d2"

    .line 31
    :goto_0
    return-object v6

    .line 23
    :cond_0
    const-wide/32 v11, 0x5265c00

    div-long v0, v9, v11

    .line 24
    .local v0, day:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    div-long v2, v11, v13

    .line 25
    .local v2, hour:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    rem-long/2addr v11, v13

    const-wide/32 v13, 0xea60

    div-long v4, v11, v13

    .line 26
    .local v4, min:J
    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    const-wide/32 v13, 0x36ee80

    rem-long/2addr v11, v13

    const-wide/32 v13, 0xea60

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long v7, v11, v13

    .line 29
    .local v7, sec:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u5c0f\u65f6"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u5206"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u79d2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, s:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDateDiffHour(J)Ljava/lang/String;
    .locals 12
    .parameter "diff"

    .prologue
    .line 99
    move-wide v6, p0

    .line 100
    .local v6, time:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 101
    const-string v8, "0:00:00"

    .line 106
    :goto_0
    return-object v8

    .line 103
    :cond_0
    const-wide/32 v8, 0x36ee80

    div-long v0, p0, v8

    .line 104
    .local v0, hour:J
    const-wide/32 v8, 0x36ee80

    rem-long v8, p0, v8

    const-wide/32 v10, 0xea60

    div-long v2, v8, v10

    .line 105
    .local v2, min:J
    const-wide/32 v8, 0x36ee80

    rem-long v8, p0, v8

    const-wide/32 v10, 0xea60

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 106
    .local v4, sec:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    cmp-long v8, v2, v10

    if-gez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 108
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    cmp-long v8, v4, v10

    if-gez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 106
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2
.end method
