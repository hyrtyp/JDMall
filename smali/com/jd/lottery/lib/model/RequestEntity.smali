.class public abstract Lcom/jd/lottery/lib/model/RequestEntity;
.super Lcom/jd/droidlib/model/Model;
.source "RequestEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public agent:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field public funcid:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/jd/lottery/lib/model/RequestEntity;->agent:I

    .line 13
    return-void
.end method
