.class public Lcom/jingdong/common/utils/DateCompareUtil;
.super Ljava/lang/Object;
.source "DateCompareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "date"
    .parameter "pattern"
    .parameter "currentTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, "yyyy-MM-dd"

    .line 32
    .local v3, parseFormat:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 33
    .local v2, format:Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 34
    .local v0, compareDate:Ljava/util/Date;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 49
    .local v4, yesterdayCal:Ljava/util/Calendar;
    :goto_1
    invoke-static {v4, v2}, Lcom/jingdong/common/utils/DateCompareUtil;->formatDate(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v5

    .line 51
    .local v5, yesterdayDate:Ljava/util/Date;
    invoke-virtual {v0, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    return v6

    .end local v0           #compareDate:Ljava/util/Date;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    .end local v3           #parseFormat:Ljava/lang/String;
    .end local v4           #yesterdayCal:Ljava/util/Calendar;
    .end local v5           #yesterdayDate:Ljava/util/Date;
    :cond_0
    move-object v3, p1

    .line 29
    goto :goto_0

    .line 43
    .restart local v0       #compareDate:Ljava/util/Date;
    .restart local v2       #format:Ljava/text/SimpleDateFormat;
    .restart local v3       #parseFormat:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 44
    .local v1, currentDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 45
    .restart local v4       #yesterdayCal:Ljava/util/Calendar;
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1
.end method

.method private static formatDate(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 3
    .parameter "instance"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 58
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, yesterdayFormat:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method
