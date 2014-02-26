.class public Lcom/jd/lottery/lib/data/OnlinePayManager;
.super Ljava/lang/Object;
.source "OnlinePayManager.java"


# static fields
.field private static mInstance:Lcom/jd/lottery/lib/data/OnlinePayManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getInstance()Lcom/jd/lottery/lib/data/OnlinePayManager;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/jd/lottery/lib/data/OnlinePayManager;->mInstance:Lcom/jd/lottery/lib/data/OnlinePayManager;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/jd/lottery/lib/data/OnlinePayManager;

    invoke-direct {v0}, Lcom/jd/lottery/lib/data/OnlinePayManager;-><init>()V

    sput-object v0, Lcom/jd/lottery/lib/data/OnlinePayManager;->mInstance:Lcom/jd/lottery/lib/data/OnlinePayManager;

    .line 15
    :cond_0
    sget-object v0, Lcom/jd/lottery/lib/data/OnlinePayManager;->mInstance:Lcom/jd/lottery/lib/data/OnlinePayManager;

    return-object v0
.end method
