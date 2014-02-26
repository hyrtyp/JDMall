.class public Lcom/jingdong/app/mall/shopping/DongAdapter;
.super Landroid/widget/BaseAdapter;
.source "DongAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private jingLayout:Landroid/widget/RelativeLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field seleted:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[I)V
    .locals 1
    .parameter "c"
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;[I)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, item1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->seleted:[I

    .line 40
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->item:Ljava/util/ArrayList;

    .line 44
    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->seleted:[I

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->item:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const v10, 0x7f0c02de

    const v9, 0x7f0c02dc

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 84
    new-instance v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;

    invoke-direct {v0, v6}, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;)V

    .line 86
    .local v0, holder:Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;
    if-nez p2, :cond_5

    .line 87
    new-instance v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;
    invoke-direct {v0, v6}, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;)V

    .line 90
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;
    const v5, 0x7f030083

    invoke-static {v5, v6}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    sget-boolean v5, Lcom/jingdong/common/constant/Constants;->noDong:Z

    if-nez v5, :cond_4

    .line 92
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    .line 94
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 95
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 97
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->seleted:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->seleted:[I

    array-length v5, v5

    if-lez v5, :cond_0

    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->seleted:[I

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 107
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    .local v3, mBanlance2:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    sget-boolean v5, Lcom/jingdong/common/constant/Constants;->bNoYouHui:Z

    if-eqz v5, :cond_1

    .line 110
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 111
    .local v4, mBanlance3:Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    .line 114
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 115
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    .end local v4           #mBanlance3:Landroid/widget/TextView;
    :cond_1
    :goto_1
    const v5, 0x7f0c02d7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mEndTime:Landroid/widget/TextView;

    .line 131
    const v5, 0x7f0c02e0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mScope:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    .end local v3           #mBanlance2:Landroid/widget/TextView;
    :goto_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 139
    .local v2, it:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v5, "name"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mEndTime:Landroid/widget/TextView;

    const-string v5, "time"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v6, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mScope:Landroid/widget/TextView;

    const-string v5, "scope"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-object p2

    .line 99
    .end local v2           #it:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/DongAdapter;->seleted:[I

    aget v5, v5, v1

    if-ne v5, p1, :cond_3

    .line 100
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 101
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    sput-object v5, Lcom/jingdong/common/constant/Constants;->oldBtn:Landroid/widget/RadioButton;

    .line 102
    const/4 v5, 0x1

    sput-boolean v5, Lcom/jingdong/common/constant/Constants;->dSelected:Z

    .line 98
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 119
    .end local v1           #i:I
    :cond_4
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 120
    .restart local v3       #mBanlance2:Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    .line 123
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 124
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 135
    .end local v3           #mBanlance2:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;
    check-cast v0, Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/DongAdapter$ViewHolder;
    goto :goto_2
.end method
