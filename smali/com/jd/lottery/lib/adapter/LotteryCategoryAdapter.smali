.class public Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "LotteryCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mDrawTime:[Ljava/lang/String;

.field private mLotteryCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnails:[I

.field mTitleColors:[Ljava/lang/String;

.field mTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, lotteryCategories:Ljava/util/List;,"Ljava/util/List<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 35
    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_shuangseqiu_icon:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 36
    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_daletou_icon:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_7xingcai_icon:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 37
    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_shishicai_icon:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_3d_icon:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 38
    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_rank_3:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_rank_5:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 39
    sget v2, Lcom/jd/lottery/lib/R$drawable;->qidaizhong_icon:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mThumbnails:[I

    .line 44
    iput-object p1, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mLotteryCategories:Ljava/util/List;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$array;->lottery_types:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mTitles:[Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    sget v1, Lcom/jd/lottery/lib/R$array;->lottery_category_color:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mTitleColors:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$array;->lottery_category_draw_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mDrawTime:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method private initViewHolder(Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .parameter "holder"
    .parameter "convertView"

    .prologue
    .line 171
    .line 172
    sget v0, Lcom/jd/lottery/lib/R$id;->lottery_category_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 171
    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    .line 174
    sget v0, Lcom/jd/lottery/lib/R$id;->lottery_category_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 173
    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 176
    sget v0, Lcom/jd/lottery/lib/R$id;->lottery_category_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 175
    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->label:Landroid/widget/ImageView;

    .line 178
    sget v0, Lcom/jd/lottery/lib/R$id;->lottery_category_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 180
    sget v0, Lcom/jd/lottery/lib/R$id;->lottery_category_dates:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->dates:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/jd/lottery/lib/R$id;->lottery_category_deadline:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->deadline:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/jd/lottery/lib/R$id;->lottery_category_totalMoney:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->totalMoney:Landroid/widget/TextView;

    .line 185
    sget v0, Lcom/jd/lottery/lib/R$id;->awardPoolContainer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->awardPoolContainer:Landroid/view/View;

    .line 187
    sget v0, Lcom/jd/lottery/lib/R$id;->lottery_category_deadline_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    iput-object v0, p1, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->deadlineTitle:Landroid/widget/TextView;

    .line 188
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mLotteryCategories:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mLotteryCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mLotteryCategories:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mLotteryCategories:Ljava/util/List;

    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/LotteryEntity;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, holder:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;

    if-nez v7, :cond_4

    .line 76
    :cond_0
    new-instance v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;

    .end local v3           #holder:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;
    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;-><init>(Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;)V

    .line 77
    .restart local v3       #holder:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;
    iget-object v7, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 78
    sget v8, Lcom/jd/lottery/lib/R$layout;->lottery_category_grid_item_layout:I

    const/4 v9, 0x0

    .line 77
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    invoke-direct {p0, v3, p2}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->initViewHolder(Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;Landroid/view/View;)V

    .line 80
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object v7, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mLotteryCategories:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jd/lottery/lib/model/LotteryEntity;

    .line 87
    .local v4, item:Lcom/jd/lottery/lib/model/LotteryEntity;
    if-eqz v4, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq p1, v7, :cond_a

    .line 90
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->label:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->deadlineTitle:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 93
    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mThumbnails:[I

    iget v9, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mTitles:[Ljava/lang/String;

    iget v9, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 96
    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mTitleColors:[Ljava/lang/String;

    iget v9, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget-object v8, v8, v9

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 95
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->dates:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/jd/lottery/lib/R$color;->text_black:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->dates:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mDrawTime:[Ljava/lang/String;

    iget v9, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v4}, Lcom/jd/lottery/lib/model/LotteryEntity;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 101
    sub-long v5, v7, v9

    .line 104
    .local v5, milliseconds:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_5

    .line 105
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->deadline:Landroid/widget/TextView;

    .line 106
    sget v8, Lcom/jd/lottery/lib/R$string;->time_counter_default:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 126
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/jd/lottery/lib/model/LotteryEntity;->getAwardTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/32 v11, 0x493e0

    add-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 127
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->deadline:Landroid/widget/TextView;

    .line 128
    sget v8, Lcom/jd/lottery/lib/R$string;->time_set_error:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 131
    :cond_1
    iget-boolean v7, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->isToday:Z

    if-eqz v7, :cond_8

    .line 132
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->label:Landroid/widget/ImageView;

    .line 133
    sget v8, Lcom/jd/lottery/lib/R$drawable;->shouye_today_lottery_icon:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->label:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :cond_2
    :goto_2
    iget-wide v7, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->awardpool:D

    const-wide/high16 v9, 0x3ff0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_9

    .line 142
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->awardPoolContainer:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .end local v5           #milliseconds:J
    :cond_3
    :goto_3
    return-object p2

    .line 82
    .end local v4           #item:Lcom/jd/lottery/lib/model/LotteryEntity;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holder:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;
    check-cast v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;

    .restart local v3       #holder:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;
    goto/16 :goto_0

    .line 108
    .restart local v4       #item:Lcom/jd/lottery/lib/model/LotteryEntity;
    .restart local v5       #milliseconds:J
    :cond_5
    new-instance v7, Ljava/util/SimpleTimeZone;

    const/4 v8, 0x0

    .line 109
    const-string v9, "GMT"

    .line 108
    invoke-direct {v7, v8, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lez v7, :cond_6

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u5929"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 115
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5c0f\u65f6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, countDown:Ljava/lang/String;
    :goto_4
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->deadline:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 116
    .end local v1           #countDown:Ljava/lang/String;
    :cond_6
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-lez v7, :cond_7

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u5c0f\u65f6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 118
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5206"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1       #countDown:Ljava/lang/String;
    goto :goto_4

    .line 120
    .end local v1           #countDown:Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u5206"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 121
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u79d2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #countDown:Ljava/lang/String;
    goto :goto_4

    .line 135
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #countDown:Ljava/lang/String;
    :cond_8
    iget-boolean v7, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->isBillion:Z

    if-eqz v7, :cond_2

    .line 136
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->label:Landroid/widget/ImageView;

    .line 137
    sget v8, Lcom/jd/lottery/lib/R$drawable;->shouye_jiangchiguoyi_icon:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->label:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 144
    :cond_9
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v7, "#,###"

    invoke-direct {v2, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, df:Ljava/text/DecimalFormat;
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->totalMoney:Landroid/widget/TextView;

    .line 146
    iget-wide v8, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->awardpool:D

    invoke-virtual {v2, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->awardPoolContainer:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 150
    .end local v2           #df:Ljava/text/DecimalFormat;
    .end local v5           #milliseconds:J
    :cond_a
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->label:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 152
    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mThumbnails:[I

    iget v9, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mTitles:[Ljava/lang/String;

    iget v9, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 155
    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mTitleColors:[Ljava/lang/String;

    iget v9, v4, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget-object v8, v8, v9

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 154
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->dates:Landroid/widget/TextView;

    .line 158
    iget-object v8, p0, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/jd/lottery/lib/R$color;->text_gray_light:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->dates:Landroid/widget/TextView;

    sget v8, Lcom/jd/lottery/lib/R$string;->more_lottery:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->deadlineTitle:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->deadline:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v7, v3, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter$ViewHolder;->totalMoney:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
