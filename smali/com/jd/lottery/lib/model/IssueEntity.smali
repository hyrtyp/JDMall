.class public abstract Lcom/jd/lottery/lib/model/IssueEntity;
.super Lcom/jd/droidlib/model/Entity;
.source "IssueEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public awardcode:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public awardpool:D
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public awardtime:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public endtime:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public isBillion:Z
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public isToday:Z
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public issueid:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public issuename:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public issuestate:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public lotteryIndex:I
    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
        name = "LotteryIndex"
    .end annotation
.end field

.field public lotterycategory:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
        name = "LotteryType"
    .end annotation
.end field

.field public salestatus:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public starttime:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jd/droidlib/model/Entity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAwardTime()Ljava/util/Date;
    .locals 5

    .prologue
    .line 51
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    .line 52
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 51
    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    .local v1, dateFormat:Ljava/text/DateFormat;
    :try_start_0
    iget-object v3, p0, Lcom/jd/lottery/lib/model/IssueEntity;->awardtime:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 5

    .prologue
    .line 39
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    .line 40
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 39
    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    .local v1, dateFormat:Ljava/text/DateFormat;
    :try_start_0
    iget-object v3, p0, Lcom/jd/lottery/lib/model/IssueEntity;->endtime:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 47
    const/4 v0, 0x0

    goto :goto_0
.end method
