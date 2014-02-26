.class public Lcom/jd/lottery/lib/model/PrevIssueEntity;
.super Lcom/jd/lottery/lib/model/IssueEntity;
.source "PrevIssueEntity.java"


# annotations
.annotation runtime Lcom/jd/droidlib/annotation/sql/Table;
    name = "prev_issue"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/jd/lottery/lib/model/IssueEntity;-><init>()V

    return-void
.end method
