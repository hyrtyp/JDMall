.class public Lcom/jd/lottery/lib/model/MainPageEntity;
.super Lcom/jd/droidlib/model/Entity;
.source "MainPageEntity.java"


# annotations
.annotation runtime Lcom/jd/droidlib/annotation/sql/Table;
    name = "mainpageitem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public intent:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/sql/Column;
    .end annotation
.end field

.field public marker:Ljava/lang/String;
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
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/jd/droidlib/model/Entity;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/jd/lottery/lib/model/MainPageEntity;->intent:Ljava/lang/String;

    iput-object v0, p0, Lcom/jd/lottery/lib/model/MainPageEntity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jd/lottery/lib/model/MainPageEntity;->marker:Ljava/lang/String;

    .line 14
    return-void
.end method
