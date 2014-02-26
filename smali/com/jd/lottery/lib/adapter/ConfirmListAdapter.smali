.class public Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConfirmListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public addLottery(Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public deleteItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLotterys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v11, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    sget v12, Lcom/jd/lottery/lib/R$layout;->confirm_list_item:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 79
    .local v10, view:Landroid/view/View;
    :goto_0
    iget-object v11, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    .line 80
    .local v0, item:Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;
    sget v11, Lcom/jd/lottery/lib/R$id;->lottery:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, lottery:Landroid/widget/TextView;
    iget-object v11, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    const-string v12, "|"

    const-string v13, " | "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, lotteryText:Ljava/lang/String;
    invoke-static {v3}, Lcom/jd/lottery/lib/utils/LotteryNumberDecor;->decorLotteryNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget v11, Lcom/jd/lottery/lib/R$id;->type:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 84
    .local v8, type:Landroid/widget/TextView;
    iget v11, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mKind:I

    iget v12, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    invoke-static {v11, v12}, Lcom/jd/lottery/lib/formatter/Formatter;->getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v11

    iget-object v12, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mContext:Landroid/content/Context;

    iget v13, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mType:I

    invoke-virtual {v11, v12, v13}, Lcom/jd/lottery/lib/formatter/Formatter;->typeName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget v11, Lcom/jd/lottery/lib/R$id;->money:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 87
    .local v4, money:Landroid/widget/TextView;
    sget v11, Lcom/jd/lottery/lib/R$id;->delete:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 88
    .local v9, v:Landroid/view/View;
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v11, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    iget-object v11, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    iget-object v12, v0, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/jd/lottery/lib/formatter/Formatter;->data_formatter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v11, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {v11, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->calculate(Ljava/util/List;)J

    move-result-wide v6

    .line 95
    .local v6, numbers:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mContext:Landroid/content/Context;

    sget v13, Lcom/jd/lottery/lib/R$string;->zhu:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0x2

    mul-long/2addr v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mContext:Landroid/content/Context;

    sget v13, Lcom/jd/lottery/lib/R$string;->yuan:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-object v10

    .line 77
    .end local v0           #item:Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;
    .end local v1           #lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v2           #lottery:Landroid/widget/TextView;
    .end local v3           #lotteryText:Ljava/lang/String;
    .end local v4           #money:Landroid/widget/TextView;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #numbers:J
    .end local v8           #type:Landroid/widget/TextView;
    .end local v9           #v:Landroid/view/View;
    .end local v10           #view:Landroid/view/View;
    :cond_0
    move-object/from16 v10, p2

    .restart local v10       #view:Landroid/view/View;
    goto/16 :goto_0
.end method

.method public setFormatter(Lcom/jd/lottery/lib/formatter/Formatter;)V
    .locals 0
    .parameter "formatter"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    .line 44
    return-void
.end method

.method public setLotterys(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;>;"
    iput-object p1, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mListener:Landroid/view/View$OnLongClickListener;

    .line 36
    return-void
.end method

.method public total()I
    .locals 7

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, ret:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 105
    mul-int/lit8 v3, v2, 0x2

    return v3

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    iget-object v3, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;

    iget-object v3, v3, Lcom/jd/lottery/lib/formatter/LotteryBasket$LotteryItem;->mLottery:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/jd/lottery/lib/formatter/Formatter;->data_formatter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, lists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    int-to-long v3, v2

    iget-object v5, p0, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;

    invoke-virtual {v5, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->calculate(Ljava/util/List;)J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v2, v3

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
