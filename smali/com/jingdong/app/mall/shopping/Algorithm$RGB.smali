.class public Lcom/jingdong/app/mall/shopping/Algorithm$RGB;
.super Ljava/lang/Object;
.source "Algorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/Algorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RGB"
.end annotation


# instance fields
.field public B:I

.field public G:I

.field public R:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->R:I

    .line 21
    iput v0, p0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->G:I

    .line 22
    iput v0, p0, Lcom/jingdong/app/mall/shopping/Algorithm$RGB;->B:I

    .line 18
    return-void
.end method
