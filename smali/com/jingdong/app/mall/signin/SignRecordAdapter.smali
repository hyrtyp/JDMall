.class public Lcom/jingdong/app/mall/signin/SignRecordAdapter;
.super Landroid/widget/BaseAdapter;
.source "SignRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SignRecordAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SigninListUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->records:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SigninListUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SigninListUser;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->records:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->records:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, holder:Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;

    if-nez v5, :cond_3

    .line 73
    :cond_0
    const-string v5, "SignRecordAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "convertView is null  position =  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f03011d

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;

    .end local v1           #holder:Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;-><init>()V

    .line 77
    .restart local v1       #holder:Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;
    const v5, 0x7f0c0700

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    .line 79
    const v5, 0x7f0c0701

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 78
    iput-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->position:Landroid/widget/TextView;

    .line 81
    const v5, 0x7f0c0705

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 80
    iput-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->point:Landroid/widget/TextView;

    .line 82
    const v5, 0x7f0c0702

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 83
    const v5, 0x7f0c0703

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 84
    const v5, 0x7f0c0704

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 86
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 87
    const-string v6, "scryptii.ttf"

    .line 86
    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 88
    .local v0, face:Landroid/graphics/Typeface;
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->position:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    .end local v0           #face:Landroid/graphics/Typeface;
    :goto_0
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->records:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/SigninListUser;

    .line 97
    .local v2, record:Lcom/jingdong/common/entity/SigninListUser;
    if-nez p1, :cond_4

    .line 98
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->position:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 99
    const v7, 0x7f0900ac

    .line 98
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    :goto_1
    iget-object v6, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->position:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUserRank()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xa

    if-ge v5, v7, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUserRank()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->point:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getSustainedNumTimers()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020365

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUserIcon()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUserIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    const-string v5, "SignRecordAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "record.getUserIcon() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUserIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/jingdong/common/frame/IMyActivity;

    iget-object v6, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUserIcon()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 123
    :cond_1
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const v6, 0x7f02045b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 124
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    const v6, 0x7f020366

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUsrType()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, type:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, tp:I
    if-ne v3, v8, :cond_2

    .line 130
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const v6, 0x7f02045a

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 131
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    const v6, 0x7f020367

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    .end local v3           #tp:I
    :cond_2
    return-object p2

    .line 92
    .end local v2           #record:Lcom/jingdong/common/entity/SigninListUser;
    .end local v4           #type:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;
    check-cast v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;
    goto/16 :goto_0

    .line 100
    .restart local v2       #record:Lcom/jingdong/common/entity/SigninListUser;
    :cond_4
    if-ne p1, v8, :cond_5

    .line 101
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->position:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 102
    const v7, 0x7f0900ad

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 101
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 103
    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    .line 104
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->position:Landroid/widget/TextView;

    .line 105
    iget-object v6, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 107
    :cond_6
    iget-object v5, v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter$ViewHolder;->position:Landroid/widget/TextView;

    .line 108
    iget-object v6, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 112
    :cond_7
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninListUser;->getUserRank()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method

.method public setRecords(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SigninListUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SigninListUser;>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->records:Ljava/util/ArrayList;

    .line 39
    return-void
.end method
