.class public Lcom/jd/common/util/DateFormatUtils;
.super Lorg/apache/commons/lang/time/DateFormatUtils;
.source "DateFormatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/apache/commons/lang/time/DateFormatUtils;-><init>()V

    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 16
    if-nez p0, :cond_1

    .line 17
    const/4 v0, 0x0

    .line 23
    :cond_0
    :goto_0
    return-object v0

    .line 19
    :cond_1
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v1}, Lorg/apache/commons/lang/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 21
    const-string v1, "yyyy-MM-dd"

    invoke-static {p0, v1}, Lorg/apache/commons/lang/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "date"
    .parameter "format"

    .prologue
    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, inDf:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, outDf:Ljava/text/SimpleDateFormat;
    const-string v2, ""

    .line 60
    .local v2, reDate:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 65
    .end local p0
    :goto_0
    return-object p0

    .line 62
    .restart local p0
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static final parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "strDate"
    .parameter "format"

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, df:Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 40
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #df:Ljava/text/SimpleDateFormat;
    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local v1       #df:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v2

    goto :goto_0
.end method
