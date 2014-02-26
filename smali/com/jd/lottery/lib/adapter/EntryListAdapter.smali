.class public Lcom/jd/lottery/lib/adapter/EntryListAdapter;
.super Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;
.source "EntryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter",
        "<",
        "Lcom/jd/lottery/lib/model/LotteryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawTime:[Ljava/lang/String;

.field private mThumbnails:[I

.field private mTitleColors:[Ljava/lang/String;

.field private mTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jd/droidlib/persist/sql/stmt/Select;)V
    .locals 3
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/jd/droidlib/persist/sql/stmt/Select",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, select:Lcom/jd/droidlib/persist/sql/stmt/Select;,"Lcom/jd/droidlib/persist/sql/stmt/Select<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    const-class v0, Lcom/jd/lottery/lib/model/LotteryEntity;

    invoke-direct {p0, v0, p1, p2}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;)V

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_shuangseqiu_icon:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_daletou_icon:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_7xingcai_icon:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 32
    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_shishicai_icon:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_3d_icon:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 33
    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_rank_3:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/jd/lottery/lib/R$drawable;->shouye_rank_5:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 34
    sget v2, Lcom/jd/lottery/lib/R$drawable;->qidaizhong_icon:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->mThumbnails:[I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$array;->lottery_types:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->mTitles:[Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    sget v1, Lcom/jd/lottery/lib/R$array;->lottery_category_color:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->mTitleColors:[Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$array;->lottery_category_draw_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->mDrawTime:[Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/content/Context;Landroid/view/View;Lcom/jd/droidlib/model/Entity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p3, Lcom/jd/lottery/lib/model/LotteryEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->bindView(Landroid/content/Context;Landroid/view/View;Lcom/jd/lottery/lib/model/LotteryEntity;)V

    return-void
.end method

.method public bindView(Landroid/content/Context;Landroid/view/View;Lcom/jd/lottery/lib/model/LotteryEntity;)V
    .locals 12
    .parameter "context"
    .parameter "view"
    .parameter "item"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;

    .line 89
    .local v3, holder:Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;
    if-eqz p3, :cond_2

    .line 91
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_label:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_thumbnail:Landroid/widget/ImageView;

    .line 93
    iget-object v7, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->mThumbnails:[I

    iget v8, p3, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->mTitles:[Ljava/lang/String;

    iget v8, p3, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_title:Landroid/widget/TextView;

    .line 96
    iget-object v7, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->mTitleColors:[Ljava/lang/String;

    iget v8, p3, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget-object v7, v7, v8

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 95
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_dates:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->mDrawTime:[Ljava/lang/String;

    iget v8, p3, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p3}, Lcom/jd/lottery/lib/model/LotteryEntity;->getEndTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 100
    sub-long v4, v6, v8

    .line 103
    .local v4, milliseconds:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    .line 104
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_deadline:Landroid/widget/TextView;

    .line 105
    sget v7, Lcom/jd/lottery/lib/R$string;->time_counter_default:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/jd/lottery/lib/model/LotteryEntity;->getAwardTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 126
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_deadline:Landroid/widget/TextView;

    .line 127
    sget v7, Lcom/jd/lottery/lib/R$string;->time_set_error:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 130
    :cond_0
    iget-boolean v6, p3, Lcom/jd/lottery/lib/model/LotteryEntity;->isToday:Z

    if-eqz v6, :cond_6

    .line 131
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_label:Landroid/widget/ImageView;

    .line 132
    sget v7, Lcom/jd/lottery/lib/R$drawable;->shouye_today_lottery_icon:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_label:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :cond_1
    :goto_1
    iget-wide v6, p3, Lcom/jd/lottery/lib/model/LotteryEntity;->awardpool:D

    const-wide/high16 v8, 0x3ff0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_7

    .line 141
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->awardPoolContainer:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .end local v4           #milliseconds:J
    :cond_2
    :goto_2
    return-void

    .line 107
    .restart local v4       #milliseconds:J
    :cond_3
    new-instance v6, Ljava/util/SimpleTimeZone;

    const/4 v7, 0x0

    .line 108
    const-string v8, "GMT"

    .line 107
    invoke-direct {v6, v7, v8}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_4

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5929"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 114
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5c0f\u65f6"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, countDown:Ljava/lang/String;
    :goto_3
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_deadline:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 115
    .end local v1           #countDown:Ljava/lang/String;
    :cond_4
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lez v6, :cond_5

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5c0f\u65f6"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 117
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5206"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .restart local v1       #countDown:Ljava/lang/String;
    goto :goto_3

    .line 119
    .end local v1           #countDown:Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5206"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 120
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u79d2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #countDown:Ljava/lang/String;
    goto :goto_3

    .line 134
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #countDown:Ljava/lang/String;
    :cond_6
    iget-boolean v6, p3, Lcom/jd/lottery/lib/model/LotteryEntity;->isBillion:Z

    if-eqz v6, :cond_1

    .line 135
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_label:Landroid/widget/ImageView;

    .line 136
    sget v7, Lcom/jd/lottery/lib/R$drawable;->shouye_jiangchiguoyi_icon:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_label:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 143
    :cond_7
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v6, "#,###"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, df:Ljava/text/DecimalFormat;
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->lottery_category_totalMoney:Landroid/widget/TextView;

    .line 145
    iget-wide v7, p3, Lcom/jd/lottery/lib/model/LotteryEntity;->awardpool:D

    invoke-virtual {v2, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v6, v3, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->awardPoolContainer:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 50
    sget v3, Lcom/jd/lottery/lib/R$layout;->lottery_category_grid_item_layout:I

    const/4 v4, 0x0

    .line 49
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;

    invoke-direct {v0, p0, v1}, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;-><init>(Lcom/jd/lottery/lib/adapter/EntryListAdapter;Landroid/view/View;)V

    .line 57
    .local v0, holder:Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    return-object v1
.end method
