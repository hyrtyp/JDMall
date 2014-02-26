.class public Lcom/jingdong/common/utils/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# static fields
.field private static dateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jingdong/common/utils/FormatUtils;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 24
    sget-object v0, Lcom/jingdong/common/utils/FormatUtils;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter "dateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 14
    :try_start_0
    sget-object v1, Lcom/jingdong/common/utils/FormatUtils;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 15
    :catch_0
    move-exception v0

    .line 19
    .local v0, e:Ljava/text/ParseException;
    throw v0
.end method
