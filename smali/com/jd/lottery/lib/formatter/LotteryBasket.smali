.class public Lcom/jd/lottery/lib/formatter/LotteryBasket;
.super Ljava/lang/Object;
.source "LotteryBasket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;,
        Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;
    }
.end annotation


# static fields
.field private static final inner_separator:[Ljava/lang/String;

.field private static instance:Lcom/jd/lottery/lib/formatter/LotteryBasket;

.field public static final show_separator:[Ljava/lang/String;


# instance fields
.field private mLotterys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeAndNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "="

    aput-object v1, v0, v2

    const-string v1, "-"

    aput-object v1, v0, v3

    sput-object v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->inner_separator:[Ljava/lang/String;

    .line 16
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "|"

    aput-object v1, v0, v2

    const-string v1, " "

    aput-object v1, v0, v3

    sput-object v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->show_separator:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->instance:Lcom/jd/lottery/lib/formatter/LotteryBasket;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mTimeAndNumber:Ljava/util/Map;

    .line 67
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->B:I

    .local v0, i:I
    :goto_0
    sget v1, Lcom/jd/lottery/lib/formatter/Formatter;->E:I

    if-le v0, v1, :cond_0

    .line 71
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mTimeAndNumber:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v5, v4}, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;-><init>(IIZ)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->inner_separator:[Ljava/lang/String;

    return-object v0
.end method

.method public static deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "str"
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, s:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 227
    return-object v1

    .line 225
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "str"
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const-string v3, ""

    .line 197
    .local v3, spliter:Ljava/lang/String;
    aget-object v4, p1, v6

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\\"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, s:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_1

    .line 206
    return-object v1

    .line 200
    .end local v0           #i:I
    .end local v2           #s:[Ljava/lang/String;
    :cond_0
    aget-object v3, p1, v6

    goto :goto_0

    .line 204
    .restart local v0       #i:I
    .restart local v2       #s:[Ljava/lang/String;
    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->subdeserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->instance:Lcom/jd/lottery/lib/formatter/LotteryBasket;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;

    invoke-direct {v0}, Lcom/jd/lottery/lib/formatter/LotteryBasket;-><init>()V

    sput-object v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->instance:Lcom/jd/lottery/lib/formatter/LotteryBasket;

    .line 77
    :cond_0
    sget-object v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->instance:Lcom/jd/lottery/lib/formatter/LotteryBasket;

    return-object v0
.end method

.method public static serialize(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .line 177
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->subserialize(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 181
    return-object v1

    .line 179
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->subserialize(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static subdeserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "str"
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, s:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 218
    :cond_0
    return-object v1

    .line 215
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 216
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static subserialize(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, ""

    .line 191
    :cond_0
    return-object v1

    .line 187
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addLottery(IILjava/util/List;)V
    .locals 4
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
    .line 82
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    invoke-direct {v0}, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;-><init>()V

    .line 83
    .local v0, item:Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;
    iput p1, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    .line 84
    iput p2, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    .line 86
    sget-object v2, Lcom/jd/lottery/lib/formatter/LotteryBasket;->inner_separator:[Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->serialize(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 89
    .local v1, l:Ljava/util/List;,"Ljava/util/List<Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 125
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->B:I

    .local v0, i:I
    :goto_0
    sget v1, Lcom/jd/lottery/lib/formatter/Formatter;->E:I

    if-le v0, v1, :cond_0

    .line 128
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clear(I)V
    .locals 5
    .parameter "kind"

    .prologue
    const/4 v4, 0x1

    .line 131
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mTimeAndNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v4, v3}, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;-><init>(IIZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public getCheck(I)Z
    .locals 2
    .parameter "kind"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mTimeAndNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;

    iget-boolean v0, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;->mCheck:Z

    return v0
.end method

.method public getLotterys(I)I
    .locals 2
    .parameter "kind"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumber(I)I
    .locals 2
    .parameter "kind"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mTimeAndNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;

    iget v0, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;->mNumber:I

    return v0
.end method

.method public getShowLotterys(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v5, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 141
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 153
    return-object v4

    .line 143
    :cond_0
    new-instance v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    invoke-direct {v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;-><init>()V

    .line 144
    .local v2, item:Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    iget v5, v5, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    iput v5, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    .line 145
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    iget v5, v5, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    iput v5, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    .line 148
    iget v5, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    iget v6, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v0

    .line 150
    .local v0, formatter:Lcom/jd/lottery/lib/formatter/Formatter;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    iget-object v5, v5, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    sget-object v6, Lcom/jd/lottery/lib/formatter/LotteryBasket;->inner_separator:[Ljava/lang/String;

    .line 149
    invoke-static {v5, v6}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jd/lottery/lib/formatter/Formatter;->show_formatter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    .line 151
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTime(I)I
    .locals 2
    .parameter "kind"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mTimeAndNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;

    iget v0, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;->mTime:I

    return v0
.end method

.method public getUploadLotterys(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "kind"

    .prologue
    .line 157
    const-string v4, ""

    .line 158
    .local v4, ret:Ljava/lang/String;
    iget-object v5, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 159
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 173
    return-object v4

    .line 160
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    .line 161
    .local v2, item:Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;
    iget v5, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    invoke-static {p2, v5}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v0

    .line 162
    .local v0, formatter:Lcom/jd/lottery/lib/formatter/Formatter;
    iget v5, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    if-ne v5, p2, :cond_1

    .line 163
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 164
    iget v5, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    iget-object v6, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    .line 165
    sget-object v7, Lcom/jd/lottery/lib/formatter/LotteryBasket;->inner_separator:[Ljava/lang/String;

    .line 164
    invoke-static {v6, v7}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/jd/lottery/lib/formatter/Formatter;->upload_formatter(ILjava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 159
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 168
    iget v6, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    .line 169
    iget-object v7, v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    sget-object v8, Lcom/jd/lottery/lib/formatter/LotteryBasket;->inner_separator:[Ljava/lang/String;

    .line 168
    invoke-static {v7, v8}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/jd/lottery/lib/formatter/Formatter;->upload_formatter(ILjava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public removeLottery(II)V
    .locals 3
    .parameter "kind"
    .parameter "index"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setTimeAndNumber(IIIZ)V
    .locals 3
    .parameter "kind"
    .parameter "time"
    .parameter "number"
    .parameter "check"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mTimeAndNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;

    invoke-direct {v2, p2, p3, p4}, Lcom/jd/lottery/lib/formatter/LotteryBasket$TimeAndNumberPair;-><init>(IIZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public totalMoney(ILcom/jd/lottery/lib/formatter/Formatter;)I
    .locals 10
    .parameter "kind"
    .parameter "formatter"

    .prologue
    .line 231
    iget-object v3, p0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->mLotterys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 232
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;>;"
    const/4 v2, 0x0

    .line 233
    .local v2, total:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 237
    return v2

    .line 234
    :cond_0
    int-to-long v4, v2

    const-wide/16 v6, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    iget-object v3, v3, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    sget-object v8, Lcom/jd/lottery/lib/formatter/LotteryBasket;->inner_separator:[Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/jd/lottery/lib/formatter/Formatter;->calculate(Ljava/util/List;)J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long v3, v4, v6

    long-to-int v2, v3

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
