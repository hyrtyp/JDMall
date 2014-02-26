.class public Lcom/jd/lottery/lib/db/EntryManager;
.super Lcom/jd/droidlib/persist/sql/EntityManager;
.source "EntryManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jd/droidlib/persist/sql/EntityManager",
        "<",
        "Lcom/jd/lottery/lib/model/Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 11
    const-class v0, Lcom/jd/lottery/lib/model/Entry;

    invoke-direct {p0, v0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/jd/droidlib/model/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jd/lottery/lib/model/Entry;

    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/db/EntryManager;->create(Lcom/jd/lottery/lib/model/Entry;)Z

    move-result v0

    return v0
.end method

.method public create(Lcom/jd/lottery/lib/model/Entry;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jd/lottery/lib/model/Entry;->created:J

    .line 17
    invoke-super {p0, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;->create(Lcom/jd/droidlib/model/Entity;)Z

    move-result v0

    return v0
.end method
