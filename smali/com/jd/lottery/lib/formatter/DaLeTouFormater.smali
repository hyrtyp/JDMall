.class public Lcom/jd/lottery/lib/formatter/DaLeTouFormater;
.super Lcom/jd/lottery/lib/formatter/Formatter;
.source "DaLeTouFormater.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/formatter/Formatter;-><init>(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public calculate(Ljava/util/List;)J
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)J"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Lcom/jd/lottery/lib/utils/Util;->DLT_count(II)J

    move-result-wide v0

    .line 64
    :goto_0
    return-wide v0

    .line 60
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 61
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 62
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 61
    invoke-static {v1, v2, v3, v0}, Lcom/jd/lottery/lib/utils/Util;->DLT_count(IIII)J

    move-result-wide v0

    goto :goto_0

    .line 64
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public checkRule(Ljava/util/List;I)Lcom/jd/lottery/lib/formatter/Formatter$Rule;
    .locals 7
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;I)",
            "Lcom/jd/lottery/lib/formatter/Formatter$Rule;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/16 v6, 0xc

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 70
    if-eqz p2, :cond_0

    if-ne p2, v2, :cond_5

    .line 71
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 72
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_F4:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    .line 118
    :goto_0
    return-object v0

    .line 74
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    .line 75
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_F16:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 77
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 78
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_B1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 80
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    .line 81
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_B12:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 83
    :cond_4
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 84
    :cond_5
    if-ne p2, v4, :cond_10

    .line 85
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_6

    .line 86
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FD1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 88
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_7

    .line 89
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FD4:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 91
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_8

    .line 92
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FT2:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 94
    :cond_8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x22

    if-le v0, v1, :cond_9

    .line 95
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FT34:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 97
    :cond_9
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    .line 98
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FDT6:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 100
    :cond_a
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x23

    if-le v0, v1, :cond_b

    .line 101
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FDT35:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 104
    :cond_b
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_c

    .line 105
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_BD1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 107
    :cond_c
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_d

    .line 108
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_BT2:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 110
    :cond_d
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_e

    .line 111
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_BT12:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 113
    :cond_e
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-le v0, v6, :cond_f

    .line 114
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_BDT12:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 116
    :cond_f
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 118
    :cond_10
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0
.end method

.method public data_formatter(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const-string v8, "("

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 17
    const-string v8, "\\|"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 18
    .local v5, strs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v5

    if-lt v1, v8, :cond_0

    .line 35
    .end local v1           #i:I
    .end local v2           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v5           #strs:[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 19
    .restart local v1       #i:I
    .restart local v2       #ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v5       #strs:[Ljava/lang/String;
    :cond_0
    aget-object v3, v5, v1

    .line 20
    .local v3, s:Ljava/lang/String;
    const-string v8, "("

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 21
    .local v4, start:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 22
    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 23
    .local v0, end:I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 24
    .local v6, t1:Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 25
    .local v7, t2:Ljava/lang/String;
    const-string v8, " "

    invoke-static {v6, v8}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v8, " "

    invoke-static {v7, v8}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .end local v0           #end:I
    .end local v6           #t1:Ljava/lang/String;
    .end local v7           #t2:Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-static {v8, v9}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    .end local v1           #i:I
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #start:I
    .end local v5           #strs:[Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/jd/lottery/lib/formatter/LotteryBasket;->show_separator:[Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method protected format(ILjava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter "type"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, ret:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 173
    return-object v1

    .line 166
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected format(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter "type"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, list4:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, ret:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    const/4 v0, 0x1

    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    const/4 v0, 0x1

    :goto_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 203
    return-object v1

    .line 182
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 188
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 194
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 201
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public random(I)Ljava/util/List;
    .locals 6
    .parameter "counts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 208
    const/16 v1, 0x23

    const/4 v2, 0x5

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/jd/lottery/lib/utils/Util;->rand(IIIIIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public random(II)Ljava/util/List;
    .locals 3
    .parameter "red"
    .parameter "blue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/16 v1, 0x23

    invoke-static {v1, p1, v2}, Lcom/jd/lottery/lib/utils/Util;->rand(IIZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/16 v1, 0xc

    invoke-static {v1, p2, v2}, Lcom/jd/lottery/lib/utils/Util;->rand(IIZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-object v0
.end method

.method protected show(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 132
    return-object v1

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected show(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list4:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "| "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    const/4 v0, 0x1

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    const/4 v0, 0x1

    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 158
    return-object v1

    .line 140
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 144
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 150
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 156
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public show_formatter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 221
    const/16 v2, 0x2c

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, ret:Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, index:I
    const-string v2, " "

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 224
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    :cond_0
    return-object v1
.end method

.method public typeName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 44
    packed-switch p2, :pswitch_data_0

    .line 52
    const-string v0, ""

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    sget v0, Lcom/jd/lottery/lib/R$string;->lottery_betting_way_standard:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_1
    sget v0, Lcom/jd/lottery/lib/R$string;->lottery_betting_way_fushi:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_2
    sget v0, Lcom/jd/lottery/lib/R$string;->lottery_betting_way_dantuo:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
