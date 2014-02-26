.class public Lcom/jingdong/app/mall/shopping/YouHuiAdapter;
.super Landroid/widget/BaseAdapter;
.source "YouHuiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mYouHui:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "c"
    .parameter
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
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, item:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->context:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mYouHui:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mYouHui:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mYouHui:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mYouHui:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51
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
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mYouHui:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f0c0ace

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 81
    new-instance v0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;)V

    .line 83
    .local v0, holder:Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 85
    new-instance v0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;
    invoke-direct {v0, v4}, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;)V

    .line 87
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;
    const v3, 0x7f03014c

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    const v3, 0x7f0c0acf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mYouHui:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, it:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;->mYouHui:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_0

    const-string v3, ""

    if-eq v1, v3, :cond_0

    const-string v3, " "

    if-ne v1, v3, :cond_2

    .line 100
    :cond_0
    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_1
    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-object p2

    .line 95
    .end local v1           #it:Ljava/lang/String;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;
    check-cast v0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;
    goto :goto_0

    .line 106
    .restart local v1       #it:Ljava/lang/String;
    :cond_2
    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/YouHuiAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    .restart local v2       #tv:Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
