.class public Lcom/jd/lottery/lib/data/PrevIssueManager;
.super Lcom/jd/droidlib/persist/sql/EntityManager;
.source "PrevIssueManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jd/droidlib/persist/sql/EntityManager",
        "<",
        "Lcom/jd/lottery/lib/model/PrevIssueEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 26
    const-class v0, Lcom/jd/lottery/lib/model/PrevIssueEntity;

    invoke-direct {p0, v0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/jd/droidlib/model/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jd/lottery/lib/model/PrevIssueEntity;

    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/data/PrevIssueManager;->create(Lcom/jd/lottery/lib/model/PrevIssueEntity;)Z

    move-result v0

    return v0
.end method

.method public create(Lcom/jd/lottery/lib/model/PrevIssueEntity;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/jd/lottery/lib/model/PrevIssueEntity;->id:J

    .line 36
    invoke-super {p0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;->create(Lcom/jd/droidlib/model/Entity;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(Lcom/jd/droidlib/model/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jd/lottery/lib/model/PrevIssueEntity;

    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/data/PrevIssueManager;->update(Lcom/jd/lottery/lib/model/PrevIssueEntity;)Z

    move-result v0

    return v0
.end method

.method public update(Lcom/jd/lottery/lib/model/PrevIssueEntity;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/jd/lottery/lib/model/PrevIssueEntity;->id:J

    .line 31
    invoke-super {p0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;->update(Lcom/jd/droidlib/model/Entity;)Z

    move-result v0

    return v0
.end method
