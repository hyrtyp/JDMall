.class public Lcom/jingdong/common/entity/SearchHistory;
.super Ljava/lang/Object;
.source "SearchHistory.java"


# instance fields
.field private id:I

.field private searchDate:Ljava/util/Date;

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1
    .parameter "id"
    .parameter "word"
    .parameter "time"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/jingdong/common/entity/SearchHistory;->word:Ljava/lang/String;

    .line 20
    iput p1, p0, Lcom/jingdong/common/entity/SearchHistory;->id:I

    .line 22
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/jingdong/common/entity/SearchHistory;->searchDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "word"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchHistory;->word:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/SearchHistory;->searchDate:Ljava/util/Date;

    .line 16
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/jingdong/common/entity/SearchHistory;->id:I

    return v0
.end method

.method public getSearchDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchHistory;->searchDate:Ljava/util/Date;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchHistory;->word:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 32
    iput p1, p0, Lcom/jingdong/common/entity/SearchHistory;->id:I

    .line 33
    return-void
.end method

.method public setSearchDate(Ljava/util/Date;)V
    .locals 0
    .parameter "searchDate"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchHistory;->searchDate:Ljava/util/Date;

    .line 49
    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0
    .parameter "word"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchHistory;->word:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchHistory [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jingdong/common/entity/SearchHistory;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", word="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/SearchHistory;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/SearchHistory;->searchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
