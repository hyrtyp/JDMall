.class public Lcom/jd/lottery/lib/data/LotteryIssueManager;
.super Lcom/jd/droidlib/persist/sql/EntityManager;
.source "LotteryIssueManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jd/droidlib/persist/sql/EntityManager",
        "<",
        "Lcom/jd/lottery/lib/model/LotteryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 38
    const-class v0, Lcom/jd/lottery/lib/model/LotteryEntity;

    invoke-direct {p0, v0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->UNKNOWN:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    iput-object v0, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager;->mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 39
    return-void
.end method

.method private resetIssueFlag()V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->UNKNOWN:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    iput-object v0, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager;->mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 126
    return-void
.end method


# virtual methods
.method public createOrUpdate(Ljava/util/ArrayList;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)I
    .locals 3
    .parameter
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;",
            "Lcom/jd/lottery/lib/data/Constants$IssueFlag;",
            ")I"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    new-instance v1, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;-><init>(Lcom/jd/lottery/lib/data/LotteryIssueManager;Ljava/util/ArrayList;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)V

    .line 120
    .local v1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    .local v0, result:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createOrUpdate(Lcom/jd/lottery/lib/model/LotteryEntity;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)Z
    .locals 9
    .parameter "item"
    .parameter "flag"

    .prologue
    const/4 v8, 0x0

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, success:Z
    iput-object p2, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager;->mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 72
    iget-object v3, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->awardcode:Ljava/lang/String;

    invoke-static {v3}, Lcom/jd/lottery/lib/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@@@@@@@@@@2"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->awardcode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 75
    :try_start_0
    iget v3, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->lotterycategory:I

    .line 76
    const/4 v4, 0x3

    .line 75
    invoke-static {v3, v4}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v3

    .line 76
    iget-object v4, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->awardcode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jd/lottery/lib/formatter/Formatter;->show_formatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    iput-object v3, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->awardcode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    iget v3, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->lotterycategory:I

    invoke-static {v3}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getTypeByValue(I)Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v2

    .line 89
    .local v2, type:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v2}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    .line 91
    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->select()Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v3

    const-string v4, "LotteryType"

    sget-object v5, Lcom/jd/droidlib/persist/sql/stmt/Is;->EQUAL:Lcom/jd/droidlib/persist/sql/stmt/Is;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 92
    iget v7, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->lotterycategory:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 91
    invoke-virtual {v3, v4, v5, v6}, Lcom/jd/droidlib/persist/sql/stmt/Select;->where(Ljava/lang/String;Lcom/jd/droidlib/persist/sql/stmt/Is;[Ljava/lang/Object;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->readIds(Lcom/jd/droidlib/persist/sql/stmt/Select;)[J

    move-result-object v0

    .line 93
    .local v0, ids:[J
    array-length v3, v0

    if-lez v3, :cond_2

    .line 94
    aget-wide v3, v0, v8

    iput-wide v3, p1, Lcom/jd/lottery/lib/model/LotteryEntity;->id:J

    .line 95
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->update(Lcom/jd/droidlib/model/Entity;)Z

    move-result v1

    .line 100
    .end local v0           #ids:[J
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->resetIssueFlag()V

    .line 101
    return v1

    .line 97
    .restart local v0       #ids:[J
    :cond_2
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->create(Lcom/jd/droidlib/model/Entity;)Z

    move-result v1

    goto :goto_1

    .line 77
    .end local v0           #ids:[J
    .end local v2           #type:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@@@@@@@@@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager;->mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Helloe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager;->mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager;->mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->UNKNOWN:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    if-ne v0, v1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    .line 133
    const-string v1, "you must select issue flag by switchIssueFlag method!"

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    sget-object v0, Lcom/jd/lottery/lib/data/DB;->TABLE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager;->mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public select(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/droidlib/persist/sql/stmt/Select;
    .locals 8
    .parameter "flag"
    .parameter "lotteryType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/lottery/lib/data/Constants$IssueFlag;",
            "Lcom/jd/lottery/lib/data/Constants$LotteryType;",
            ")",
            "Lcom/jd/droidlib/persist/sql/stmt/Select",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    iput-object p1, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager;->mIssueFlag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 52
    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->select()Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v1

    .line 53
    const-string v2, "LotteryIndex"

    sget-object v3, Lcom/jd/droidlib/persist/sql/stmt/Is;->LESS:Lcom/jd/droidlib/persist/sql/stmt/Is;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lcom/jd/droidlib/persist/sql/stmt/Select;->where(Ljava/lang/String;Lcom/jd/droidlib/persist/sql/stmt/Is;[Ljava/lang/Object;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v0

    .line 54
    .local v0, retSelect:Lcom/jd/droidlib/persist/sql/stmt/Select;,"Lcom/jd/droidlib/persist/sql/stmt/Select<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    if-eqz p2, :cond_0

    .line 55
    const-string v1, "LotteryType"

    sget-object v2, Lcom/jd/droidlib/persist/sql/stmt/Is;->EQUAL:Lcom/jd/droidlib/persist/sql/stmt/Is;

    new-array v3, v7, [Ljava/lang/Object;

    .line 56
    aput-object p2, v3, v6

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/jd/droidlib/persist/sql/stmt/Select;->where(Ljava/lang/String;Lcom/jd/droidlib/persist/sql/stmt/Is;[Ljava/lang/Object;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->resetIssueFlag()V

    .line 59
    return-object v0
.end method

.method public selectCurr()Lcom/jd/droidlib/persist/sql/stmt/Select;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jd/droidlib/persist/sql/stmt/Select",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->selectCurr(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v0

    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->values()[Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/jd/droidlib/persist/sql/stmt/Select;->limit(I)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 47
    const-string v3, "LotteryIndex"

    aput-object v3, v1, v2

    .line 46
    invoke-virtual {v0, v1}, Lcom/jd/droidlib/persist/sql/stmt/Select;->groupBy([Ljava/lang/String;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v0

    return-object v0
.end method

.method public selectCurr(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/droidlib/persist/sql/stmt/Select;
    .locals 1
    .parameter "lotteryType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/lottery/lib/data/Constants$LotteryType;",
            ")",
            "Lcom/jd/droidlib/persist/sql/stmt/Select",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {p0, v0, p1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->select(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v0

    return-object v0
.end method

.method public selectPrev(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/droidlib/persist/sql/stmt/Select;
    .locals 1
    .parameter "lotteryType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/lottery/lib/data/Constants$LotteryType;",
            ")",
            "Lcom/jd/droidlib/persist/sql/stmt/Select",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {p0, v0, p1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->select(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v0

    return-object v0
.end method
