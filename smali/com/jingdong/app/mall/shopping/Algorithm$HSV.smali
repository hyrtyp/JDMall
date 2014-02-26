.class public Lcom/jingdong/app/mall/shopping/Algorithm$HSV;
.super Ljava/lang/Object;
.source "Algorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/Algorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HSV"
.end annotation


# instance fields
.field public H:I

.field public s:F

.field public v:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->H:I

    .line 14
    iput v1, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->s:F

    .line 15
    iput v1, p0, Lcom/jingdong/app/mall/shopping/Algorithm$HSV;->v:F

    .line 11
    return-void
.end method
