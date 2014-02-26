.class public Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShoppingCartAdapter.java"


# instance fields
.field private cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

.field private gifts:I

.field private resource:I

.field private skus:I

.field private suits:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->resource:I

    .line 24
    return-void
.end method


# virtual methods
.method public getCartResponseInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->gifts:I

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->suits:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 84
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    if-ge p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->gifts:I

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getGifts()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->suits:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->gifts:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSuits()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->gifts:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 96
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    if-ge p1, v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->gifts:I

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->suits:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->gifts:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 101
    const/4 v0, 0x2

    goto :goto_0

    .line 103
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 113
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->resource:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isExisSelectItem()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 27
    const/4 v6, 0x0

    .line 29
    .local v6, tf:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    if-lt v1, v8, :cond_0

    .line 36
    const/4 v1, 0x0

    :goto_1
    iget v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->gifts:I

    if-lt v1, v8, :cond_2

    .line 43
    const/4 v1, 0x0

    :goto_2
    iget v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->suits:I

    if-lt v1, v8, :cond_4

    .line 67
    .end local v6           #tf:Z
    :goto_3
    return v6

    .line 30
    .restart local v6       #tf:Z
    :cond_0
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 31
    .local v3, sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    .line 32
    goto :goto_3

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v3           #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    :cond_2
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getGifts()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 38
    .restart local v3       #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 39
    goto :goto_3

    .line 36
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    .end local v3           #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    :cond_4
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSuits()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 46
    .local v5, suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    if-nez v5, :cond_6

    .line 43
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_6
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, stype:Ljava/lang/String;
    const-string v8, "4"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 52
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    move v6, v7

    .line 53
    goto :goto_3

    .line 57
    :cond_7
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, childProductSize:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    if-ge v2, v0, :cond_5

    .line 59
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 60
    .restart local v3       #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8

    move v6, v7

    .line 61
    goto :goto_3

    .line 58
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public setData(Lcom/jingdong/common/entity/cart/CartResponseInfo;)V
    .locals 2
    .parameter "cartinfo"

    .prologue
    const/4 v1, 0x0

    .line 71
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getGifts()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->gifts:I

    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->skus:I

    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSuits()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->suits:I

    .line 75
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getGifts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSuits()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_2
.end method
