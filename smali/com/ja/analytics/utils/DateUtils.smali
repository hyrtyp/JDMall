.class public Lcom/ja/analytics/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static dateFormat:Ljava/text/SimpleDateFormat;

.field private static format:Ljava/text/SimpleDateFormat;

.field private static timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ja/analytics/utils/DateUtils;->format:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ja/analytics/utils/DateUtils;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ja/analytics/utils/DateUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 33
    sget-object v0, Lcom/ja/analytics/utils/DateUtils;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 49
    sget-object v0, Lcom/ja/analytics/utils/DateUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 41
    sget-object v0, Lcom/ja/analytics/utils/DateUtils;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
