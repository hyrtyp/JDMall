.class public Lcom/jingdong/app/mall/shopping/EasyAdapter;
.super Landroid/widget/BaseAdapter;
.source "EasyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;
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

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->seleted:[I

    .line 41
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->item:Ljava/util/ArrayList;

    .line 45
    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->seleted:[I

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->item:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
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
    .line 69
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 87
    new-instance v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;)V

    .line 88
    .local v0, holder:Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;
    if-nez p2, :cond_3

    .line 90
    new-instance v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;
    invoke-direct {v0, v4}, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;)V

    .line 91
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;
    const v3, 0x7f030052

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    const v3, 0x7f0c01f4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    .line 94
    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 95
    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 97
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->seleted:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->seleted:[I

    array-length v3, v3

    if-lez v3, :cond_0

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->seleted:[I

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 109
    .end local v1           #i:I
    :cond_0
    const v3, 0x7f0c01de

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 118
    .local v2, it:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-object p2

    .line 101
    .end local v2           #it:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyAdapter;->seleted:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_2

    .line 103
    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 104
    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;->mImage:Landroid/widget/RadioButton;

    sput-object v3, Lcom/jingdong/common/constant/Constants;->oldBtn:Landroid/widget/RadioButton;

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1           #i:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;
    check-cast v0, Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/EasyAdapter$ViewHolder;
    goto :goto_1
.end method
