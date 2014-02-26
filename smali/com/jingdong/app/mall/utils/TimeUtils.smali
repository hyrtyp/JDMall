.class public Lcom/jingdong/app/mall/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final CURRENT_DAY:Ljava/lang/String; = "\u6bcf\u65e5"

.field private static final DIVIDER:Ljava/lang/String; = " - "

.field private static final FIFTY_NIGHT:Ljava/lang/String; = ":59"

.field private static final HOUR:Ljava/lang/String; = "\u65f6"

.field private static final NEXT_DAY:Ljava/lang/String; = "\u6b21\u65e5"

.field private static final PREFIX:Ljava/lang/String; = "\u65f6\u95f4\u6bb5\uff1a"

.field private static final ZERO:Ljava/lang/String; = ":00"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimpleUnPushTimeSummary(II)Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 48
    if-le p0, p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6bcf\u65e5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b21\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6bcf\u65e5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6bcf\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUnPushTimeSummary(II)Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 32
    if-le p0, p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u65f6\u95f4\u6bb5\uff1a\u6bcf\u65e5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b21\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u65f6\u95f4\u6bb5\uff1a\u6bcf\u65e5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6bcf\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isPushMsgMuteNow()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 60
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/app/mall/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 64
    .local v4, settings:Landroid/content/SharedPreferences;
    const v8, 0x7f0703bd

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x17

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 65
    .local v5, start:I
    const v8, 0x7f0703be

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, end:I
    if-eq v5, v10, :cond_0

    if-ne v2, v10, :cond_2

    :cond_0
    move v6, v7

    .line 90
    :cond_1
    :goto_0
    return v6

    .line 71
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 74
    .local v3, hour:I
    if-eq v3, v2, :cond_1

    if-eq v3, v5, :cond_1

    .line 78
    if-lt v2, v5, :cond_4

    .line 79
    if-le v3, v5, :cond_3

    if-lt v3, v2, :cond_1

    :cond_3
    move v6, v7

    .line 82
    goto :goto_0

    .line 85
    :cond_4
    if-le v3, v5, :cond_5

    const/16 v8, 0x18

    if-lt v3, v8, :cond_1

    .line 87
    :cond_5
    if-ltz v3, :cond_6

    if-lt v3, v2, :cond_1

    :cond_6
    move v6, v7

    .line 90
    goto :goto_0
.end method
