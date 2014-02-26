.class public Lcom/jd/lottery/lib/formatter/ShuangSeQiuFormater;
.super Lcom/jd/lottery/lib/formatter/Formatter;
.source "ShuangSeQiuFormater.java"


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

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 121
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

    invoke-static {v1, v0}, Lcom/jd/lottery/lib/utils/Util;->SSQ_count(II)J

    move-result-wide v0

    .line 126
    :goto_0
    return-wide v0

    .line 122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 123
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

    .line 124
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    invoke-static {v1, v2, v0}, Lcom/jd/lottery/lib/utils/Util;->SSQ_count(III)J

    move-result-wide v0

    goto :goto_0

    .line 126
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public checkRule(Ljava/util/List;I)Lcom/jd/lottery/lib/formatter/Formatter$Rule;
    .locals 6
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
    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 132
    if-eqz p2, :cond_0

    if-ne p2, v2, :cond_5

    .line 133
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 134
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_R5:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    .line 170
    :goto_0
    return-object v0

    .line 136
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 137
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_R16:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 139
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 140
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_B0:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 142
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    .line 143
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_B16:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 145
    :cond_4
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 146
    :cond_5
    if-ne p2, v4, :cond_d

    .line 147
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_6

    .line 148
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RD1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 150
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_7

    .line 151
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_R5:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 153
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_8

    .line 154
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RT2:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 156
    :cond_8
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

    const/4 v1, 0x7

    if-ge v0, v1, :cond_9

    .line 157
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RDT7:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 159
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

    const/16 v1, 0x14

    if-le v0, v1, :cond_a

    .line 160
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RDT20:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 162
    :cond_a
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_b

    .line 163
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_B0:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 165
    :cond_b
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_c

    .line 166
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_B16:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 168
    :cond_c
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto/16 :goto_0

    .line 170
    :cond_d
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
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const-string v8, "("

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 18
    const-string v8, "\\|"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 19
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

    .line 20
    .restart local v1       #i:I
    .restart local v2       #ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v5       #strs:[Ljava/lang/String;
    :cond_0
    aget-object v3, v5, v1

    .line 21
    .local v3, s:Ljava/lang/String;
    const-string v8, "("

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 22
    .local v4, start:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 23
    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 24
    .local v0, end:I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 25
    .local v6, t1:Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 26
    .local v7, t2:Ljava/lang/String;
    const-string v8, " "

    invoke-static {v6, v8}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v8, " "

    invoke-static {v7, v8}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .end local v0           #end:I
    .end local v6           #t1:Ljava/lang/String;
    .end local v7           #t2:Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
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
    .locals 4
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
    .line 89
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 97
    return-object v1

    .line 91
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected format(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter "type"
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
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 115
    return-object v1

    .line 105
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
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
    .line 176
    const/16 v1, 0x21

    const/4 v2, 0x6

    const/16 v3, 0x10

    const/4 v4, 0x1

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

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/16 v1, 0x21

    invoke-static {v1, p1, v2}, Lcom/jd/lottery/lib/utils/Util;->rand(IIZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const/16 v1, 0x10

    invoke-static {v1, p2, v2}, Lcom/jd/lottery/lib/utils/Util;->rand(IIZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
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

    .line 58
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

    .line 59
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 62
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

    .line 63
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 66
    return-object v1

    .line 60
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

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
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

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected show(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 5
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
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 72
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

    .line 73
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 76
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

    .line 77
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " | "

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

    .line 81
    const/4 v0, 0x1

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 84
    return-object v1

    .line 74
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

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 78
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

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 82
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

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public show_formatter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 189
    const/16 v2, 0x2c

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, ret:Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 192
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

    .line 193
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
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
