.class public Lcom/jd/lottery/lib/model/Entry;
.super Lcom/jd/droidlib/model/Entity;
.source "Entry.java"


# annotations
.annotation runtime Lcom/jd/droidlib/annotation/sql/Table;
    name = "entries"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public created:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "date_created"
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation

    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/jd/droidlib/model/Entity;-><init>()V

    return-void
.end method
