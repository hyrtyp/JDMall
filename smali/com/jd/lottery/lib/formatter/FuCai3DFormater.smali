.class public Lcom/jd/lottery/lib/formatter/FuCai3DFormater;
.super Lcom/jd/lottery/lib/formatter/Formatter;
.source "FuCai3DFormater.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/formatter/Formatter;-><init>(I)V

    .line 58
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
    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 77
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 86
    :goto_0
    return-wide v0

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 79
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 81
    :pswitch_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v4, v0}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v3

    mul-long v0, v1, v3

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v0

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkRule(Ljava/util/List;I)Lcom/jd/lottery/lib/formatter/Formatter$Rule;
    .locals 8
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
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 22
    iget-object v2, p0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v1, v2, -0x30

    .line 24
    .local v1, t:I
    if-nez v1, :cond_2

    .line 25
    const/4 v0, 0x0

    .local v0, i:I
    if-ge v0, v7, :cond_9

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v5, :cond_0

    .line 27
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_Z_1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    .line 53
    .end local v0           #i:I
    :goto_0
    return-object v2

    .line 28
    .restart local v0       #i:I
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 29
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_Z_10:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 34
    .end local v0           #i:I
    :cond_2
    if-ne v1, v5, :cond_5

    .line 35
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_3

    .line 36
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_P3_2:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 37
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 38
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_P3_10:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 40
    :cond_4
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 42
    :cond_5
    if-ne v1, v6, :cond_8

    .line 43
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v7, :cond_6

    .line 44
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_P6_3:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 45
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_7

    .line 46
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_P6_10:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 48
    :cond_7
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 51
    :cond_8
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0

    .line 53
    .restart local v0       #i:I
    :cond_9
    sget-object v2, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    goto :goto_0
.end method

.method public data_formatter(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 17
    sget-object v0, Lcom/jd/lottery/lib/formatter/LotteryBasket;->show_separator:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->deserialize(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected format(ILjava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    const-string v2, ""

    .line 119
    .local v2, ret:Ljava/lang/String;
    iget-object v4, p0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;->mType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    packed-switch v4, :pswitch_data_0

    .line 148
    :goto_0
    return-object v2

    .line 121
    :pswitch_0
    iget-object v2, p0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;->mType:Ljava/lang/String;

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    goto :goto_0

    .line 126
    :pswitch_1
    invoke-static {p2}, Lcom/jd/lottery/lib/utils/Util;->fushi_z3(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, r:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 132
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 133
    goto :goto_0

    .line 128
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 129
    .local v3, t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    .end local v0           #i:I
    .end local v1           #r:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v3           #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_2
    invoke-static {p2}, Lcom/jd/lottery/lib/utils/Util;->fushi_z6(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 137
    .restart local v1       #r:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 143
    goto/16 :goto_0

    .line 138
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 139
    .restart local v3       #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public random()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0xa

    .line 153
    sget-object v4, Lcom/jd/lottery/lib/utils/Util;->random:Ljava/util/Random;

    .line 154
    .local v4, r:Ljava/util/Random;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v5, ret:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v7, p0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;->mType:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    packed-switch v7, :pswitch_data_0

    .line 191
    :goto_0
    return-object v5

    .line 157
    :pswitch_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v6, t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v10, :cond_0

    .line 161
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0           #i:I
    .end local v6           #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_1
    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 166
    .local v2, n1:I
    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 167
    .local v3, n2:I
    :goto_2
    if-eq v2, v3, :cond_1

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .restart local v6       #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v6           #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    goto :goto_2

    .line 178
    .end local v2           #n1:I
    .end local v3           #n2:I
    :pswitch_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .restart local v6       #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v10, :cond_3

    .line 185
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 181
    .local v1, n:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected show(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 95
    return-object v1

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    const/4 v0, 0x1

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 113
    return-object v1

    .line 103
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public typeName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;->mType:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    packed-switch v0, :pswitch_data_0

    .line 70
    const-string v0, ""

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    sget v0, Lcom/jd/lottery/lib/R$string;->lottery_betting_way_standard:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_1
    sget v0, Lcom/jd/lottery/lib/R$string;->zu3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_2
    sget v0, Lcom/jd/lottery/lib/R$string;->zu6:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
