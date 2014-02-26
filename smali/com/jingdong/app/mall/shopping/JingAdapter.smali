.class public Lcom/jingdong/app/mall/shopping/JingAdapter;
.super Landroid/widget/BaseAdapter;
.source "JingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;,
        Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;
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

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->seleted:[I

    .line 40
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->item:Ljava/util/ArrayList;

    .line 44
    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->seleted:[I

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->item:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->item:Ljava/util/ArrayList;

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
    .parameter "arg0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->item:Ljava/util/ArrayList;

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
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const v9, 0x7f0c02dc

    const v8, 0x7f0c02d8

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 84
    new-instance v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;

    invoke-direct {v0, v5}, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;)V

    .line 86
    .local v0, holder:Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;
    if-nez p2, :cond_5

    .line 87
    new-instance v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;
    invoke-direct {v0, v5}, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;)V

    .line 137
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;
    const v4, 0x7f030082

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 138
    sget-boolean v4, Lcom/jingdong/common/constant/Constants;->noJing:Z

    if-nez v4, :cond_4

    .line 139
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    .line 140
    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 142
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->seleted:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->seleted:[I

    array-length v4, v4

    if-lez v4, :cond_0

    .line 143
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->seleted:[I

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 151
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 152
    .local v3, mBanlance2:Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    sget-boolean v4, Lcom/jingdong/common/constant/Constants;->bNoYouHui:Z

    if-eqz v4, :cond_1

    .line 155
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    .line 157
    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 158
    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 171
    :cond_1
    :goto_1
    const v4, 0x7f0c02d7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->mEndTime:Landroid/widget/TextView;

    .line 173
    const v4, 0x7f0c02da

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->mScope:Landroid/widget/TextView;

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    .end local v3           #mBanlance2:Landroid/widget/TextView;
    :goto_2
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 181
    .local v2, it:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v4, "name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->mEndTime:Landroid/widget/TextView;

    const-string v4, "time"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->mScope:Landroid/widget/TextView;

    const-string v4, "scope"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-object p2

    .line 144
    .end local v2           #it:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/JingAdapter;->seleted:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_3

    .line 145
    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    const/4 v4, 0x1

    sput-boolean v4, Lcom/jingdong/common/constant/Constants;->jSelected:Z

    .line 143
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 162
    .end local v1           #i:I
    :cond_4
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .restart local v3       #mBanlance2:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    .line 165
    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;->bCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 177
    .end local v3           #mBanlance2:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;
    check-cast v0, Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/JingAdapter$ViewHolder;
    goto :goto_2
.end method
