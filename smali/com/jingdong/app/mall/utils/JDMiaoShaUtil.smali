.class public Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;
.super Ljava/lang/Object;
.source "JDMiaoShaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;
    }
.end annotation


# static fields
.field public static final MIAOSHA_BEGINING:I = 0x2

.field public static final MIAOSHA_FINISH:I = 0x3

.field public static final MIAOSHA_WILLBEGIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "JDMiaoSha"


# instance fields
.field private countdownMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;",
            ">;"
        }
    .end annotation
.end field

.field private myCountdownTimer:Lcom/jingdong/common/utils/MyCountdownTimer;

.field private what:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->countdownMap:Ljava/util/Map;

    .line 16
    return-void
.end method

.method private format(J)Ljava/lang/String;
    .locals 3
    .parameter "ms"

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Integer;Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;)V
    .locals 1
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->countdownMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public countdownCancel()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->myCountdownTimer:Lcom/jingdong/common/utils/MyCountdownTimer;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->myCountdownTimer:Lcom/jingdong/common/utils/MyCountdownTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MyCountdownTimer;->cancel(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public getCountdownTime(JJ)J
    .locals 5
    .parameter "startRemainTime"
    .parameter "endRemainTime"

    .prologue
    const-wide/16 v3, 0x0

    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .local v0, countdownTime:J
    cmp-long v2, p1, v3

    if-lez v2, :cond_1

    .line 43
    move-wide v0, p1

    .line 44
    const/4 v2, 0x1

    iput v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->what:I

    .line 60
    :cond_0
    :goto_0
    return-wide v0

    .line 45
    :cond_1
    cmp-long v2, p3, v3

    if-lez v2, :cond_2

    cmp-long v2, p1, v3

    if-gez v2, :cond_2

    .line 50
    move-wide v0, p3

    .line 51
    const/4 v2, 0x2

    iput v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->what:I

    goto :goto_0

    .line 52
    :cond_2
    cmp-long v2, p3, v3

    if-gez v2, :cond_0

    cmp-long v2, p1, v3

    if-gez v2, :cond_0

    .line 57
    const-wide/16 v0, 0x1

    .line 58
    const/4 v2, 0x3

    iput v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->what:I

    goto :goto_0
.end method

.method public hmsToString([J)Landroid/text/SpannableStringBuilder;
    .locals 15
    .parameter "hms"

    .prologue
    .line 129
    const/4 v12, 0x0

    aget-wide v12, p1, v12

    invoke-direct {p0, v12, v13}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, hh:Ljava/lang/String;
    const/4 v12, 0x1

    aget-wide v12, p1, v12

    invoke-direct {p0, v12, v13}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, mm:Ljava/lang/String;
    const/4 v12, 0x2

    aget-wide v12, p1, v12

    invoke-direct {p0, v12, v13}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, ss:Ljava/lang/String;
    const-string v11, "\u8fd8\u5269"

    .line 133
    .local v11, tag_start:Ljava/lang/String;
    const-string v8, "\u65f6"

    .line 134
    .local v8, tag_hh:Ljava/lang/String;
    const-string v9, "\u5206"

    .line 135
    .local v9, tag_mm:Ljava/lang/String;
    const-string v10, "\u79d2"

    .line 136
    .local v10, tag_ss:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u8fd8\u5269"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u65f6"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u5206"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u79d2"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, countdownHMS:Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v7, ssb:Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v12, -0x1

    invoke-direct {v3, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 139
    .local v3, span_hh:Landroid/text/style/CharacterStyle;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v12, -0x1

    invoke-direct {v4, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 140
    .local v4, span_mm:Landroid/text/style/CharacterStyle;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/high16 v12, -0x1

    invoke-direct {v5, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 141
    .local v5, span_ss:Landroid/text/style/CharacterStyle;
    const-string v12, "\u8fd8\u5269"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, "\u8fd8\u5269"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const/16 v14, 0x21

    invoke-virtual {v7, v3, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 142
    const-string v12, "\u8fd8\u5269"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "\u65f6"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "\u8fd8\u5269"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const-string v14, "\u65f6"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const/16 v14, 0x21

    invoke-virtual {v7, v4, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 143
    const-string v12, "\u8fd8\u5269"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "\u65f6"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "\u5206"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "\u8fd8\u5269"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const-string v14, "\u65f6"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const-string v14, "\u5206"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    .line 144
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const/16 v14, 0x21

    .line 143
    invoke-virtual {v7, v5, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 145
    return-object v7
.end method

.method public setCountdown(JJ)V
    .locals 6
    .parameter "startRemainTime"
    .parameter "endRemainTime"

    .prologue
    .line 68
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->countdownMap:Ljava/util/Map;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->setCountdown(JJLjava/util/Map;)V

    .line 69
    return-void
.end method

.method public setCountdown(JJLcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;)V
    .locals 6
    .parameter "startRemainTime"
    .parameter "endRemainTime"
    .parameter "listener"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->countdownMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->countdownMap:Ljava/util/Map;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->setCountdown(JJLjava/util/Map;)V

    .line 74
    return-void
.end method

.method public setCountdown(JJLjava/util/Map;)V
    .locals 10
    .parameter "startRemainTime"
    .parameter "endRemainTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;>;"
    const-wide/16 v4, 0x3e8

    .line 84
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->getCountdownTime(JJ)J

    move-result-wide v2

    .line 94
    .local v2, countdownTime:J
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->myCountdownTimer:Lcom/jingdong/common/utils/MyCountdownTimer;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;

    iget v6, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->what:I

    move-object v1, p0

    move-object v7, p5

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;-><init>(Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;JJILjava/util/Map;J)V

    .line 116
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->start()Lcom/jingdong/common/utils/MyCountdownTimer;

    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->myCountdownTimer:Lcom/jingdong/common/utils/MyCountdownTimer;

    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->myCountdownTimer:Lcom/jingdong/common/utils/MyCountdownTimer;

    iget v6, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->what:I

    invoke-virtual/range {v1 .. v6}, Lcom/jingdong/common/utils/MyCountdownTimer;->reset(JJI)V

    goto :goto_0
.end method

.method public setHMS(J)V
    .locals 6
    .parameter "m"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->myCountdownTimer:Lcom/jingdong/common/utils/MyCountdownTimer;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->myCountdownTimer:Lcom/jingdong/common/utils/MyCountdownTimer;

    const-wide/16 v3, 0x3e8

    iget v5, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->what:I

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/common/utils/MyCountdownTimer;->reset(JJI)V

    .line 35
    :cond_0
    return-void
.end method

.method public toHMS(J)[J
    .locals 12
    .parameter "ms"

    .prologue
    .line 152
    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long v0, v6, v8

    .line 153
    .local v0, h:J
    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v0

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v6, p1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    .line 154
    .local v2, m:J
    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    sub-long v4, v6, v8

    .line 155
    .local v4, s:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    const-wide/16 v0, 0x0

    .line 156
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    const-wide/16 v2, 0x0

    .line 157
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const-wide/16 v4, 0x0

    .line 158
    :cond_2
    const/4 v6, 0x3

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v7, 0x1

    aput-wide v2, v6, v7

    const/4 v7, 0x2

    aput-wide v4, v6, v7

    return-object v6
.end method
