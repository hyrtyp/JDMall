.class public Lcom/jd/lottery/lib/data/CurrIssueManager;
.super Lcom/jd/droidlib/persist/sql/EntityManager;
.source "CurrIssueManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jd/droidlib/persist/sql/EntityManager",
        "<",
        "Lcom/jd/lottery/lib/model/CurrIssueEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 27
    const-class v0, Lcom/jd/lottery/lib/model/CurrIssueEntity;

    invoke-direct {p0, v0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/jd/droidlib/model/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jd/lottery/lib/model/CurrIssueEntity;

    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/data/CurrIssueManager;->create(Lcom/jd/lottery/lib/model/CurrIssueEntity;)Z

    move-result v0

    return v0
.end method

.method public create(Lcom/jd/lottery/lib/model/CurrIssueEntity;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/jd/lottery/lib/model/CurrIssueEntity;->id:J

    .line 37
    invoke-super {p0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;->create(Lcom/jd/droidlib/model/Entity;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(Lcom/jd/droidlib/model/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jd/lottery/lib/model/CurrIssueEntity;

    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/data/CurrIssueManager;->update(Lcom/jd/lottery/lib/model/CurrIssueEntity;)Z

    move-result v0

    return v0
.end method

.method public update(Lcom/jd/lottery/lib/model/CurrIssueEntity;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/jd/lottery/lib/model/CurrIssueEntity;->id:J

    .line 32
    invoke-super {p0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;->update(Lcom/jd/droidlib/model/Entity;)Z

    move-result v0

    return v0
.end method
