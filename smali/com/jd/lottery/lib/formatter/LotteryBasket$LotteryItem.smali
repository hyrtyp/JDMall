.class public Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;
.super Ljava/lang/Object;
.source "LotteryBasket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/formatter/LotteryBasket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LotteryItem"
.end annotation


# instance fields
.field public mKind:I

.field public mLottery:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .parameter "kind"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    .line 41
    iput p2, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    .line 43
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->access$0()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->serialize(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 21
    move-object v0, p1

    check-cast v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    .line 22
    .local v0, item:Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;
    iget v1, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    iget v2, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    iget v2, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    if-ne v1, v2, :cond_0

    .line 23
    iget-object v1, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    iget-object v2, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 26
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
