.class public Lcom/jingdong/app/mall/shopping/OrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "OrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field addrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CommAddr;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
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
            "Lcom/jingdong/common/entity/CommAddr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommAddr;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->addrList:Ljava/util/ArrayList;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .local v1, mInflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 83
    const v2, 0x7f030091

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v0, Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;-><init>()V

    .line 85
    .local v0, holder:Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;
    const v2, 0x7f0c0327

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;->mRadio:Landroid/widget/RadioButton;

    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_0
    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;->mRadio:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/OrderAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/CommAddr;

    iget-object v2, v2, Lcom/jingdong/common/entity/CommAddr;->sComUsedAddr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;->mRadio:Landroid/widget/RadioButton;

    new-instance v3, Lcom/jingdong/app/mall/shopping/OrderAdapter$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/OrderAdapter$1;-><init>(Lcom/jingdong/app/mall/shopping/OrderAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-object p2

    .line 90
    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/OrderAdapter$ViewHolder;
    goto :goto_0
.end method
