.class public abstract Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;
.super Ljava/lang/Object;
.source "BackgroundExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/analytics/utils/BackgroundExcutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMON_PRIORITY:I = 0x0

.field public static final HIGH_PRIORITY:I = 0x1

.field public static final LOW_PRIORITY:I = -0x1


# instance fields
.field private priority:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->priority:I

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "priority"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->priority:I

    .line 68
    iput p1, p0, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->priority:I

    .line 69
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;)I
    .locals 3
    .parameter "another"

    .prologue
    const/4 v0, -0x1

    .line 116
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->getPriority()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->getPriority()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;

    invoke-virtual {p0, p1}, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->compareTo(Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;)I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/ja/analytics/utils/BackgroundExcutor$BackgroundTask;->priority:I

    return v0
.end method

.method public abstract run()V
.end method
