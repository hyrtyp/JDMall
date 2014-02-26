.class public Lcom/jd/common/util/SequenceUtil;
.super Ljava/lang/Object;
.source "SequenceUtil.java"


# instance fields
.field private defaultSequence:Lcom/jd/common/util/Sequence;

.field private sequenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/common/util/Sequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)J
    .locals 4
    .parameter "name"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, sequence:Lcom/jd/common/util/Sequence;
    iget-object v1, p0, Lcom/jd/common/util/SequenceUtil;->sequenceMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/jd/common/util/SequenceUtil;->sequenceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sequence:Lcom/jd/common/util/Sequence;
    check-cast v0, Lcom/jd/common/util/Sequence;

    .line 37
    .restart local v0       #sequence:Lcom/jd/common/util/Sequence;
    :cond_0
    if-nez v0, :cond_2

    .line 38
    iget-object v1, p0, Lcom/jd/common/util/SequenceUtil;->defaultSequence:Lcom/jd/common/util/Sequence;

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/jd/common/util/SequenceUtil;->defaultSequence:Lcom/jd/common/util/Sequence;

    invoke-virtual {v1, p1}, Lcom/jd/common/util/Sequence;->get(Ljava/lang/String;)J

    move-result-wide v1

    .line 44
    :goto_0
    return-wide v1

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sequence "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_2
    invoke-virtual {v0, p1}, Lcom/jd/common/util/Sequence;->get(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public setDefaultSequence(Lcom/jd/common/util/Sequence;)V
    .locals 0
    .parameter "defaultSequence"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/jd/common/util/SequenceUtil;->defaultSequence:Lcom/jd/common/util/Sequence;

    .line 19
    return-void
.end method

.method public setSequenceMap(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/common/util/Sequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, sequenceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/jd/common/util/Sequence;>;"
    iput-object p1, p0, Lcom/jd/common/util/SequenceUtil;->sequenceMap:Ljava/util/Map;

    .line 23
    return-void
.end method
