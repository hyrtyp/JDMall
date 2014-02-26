.class public Lcom/jingdong/common/utils/SimpleSubViewBinder;
.super Ljava/lang/Object;
.source "SimpleSubViewBinder.java"

# interfaces
.implements Lcom/jingdong/common/utils/SubViewBinder;


# instance fields
.field private imageProcessor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V
    .locals 0
    .parameter "imageProcessor"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleSubViewBinder;->imageProcessor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    .line 22
    return-void
.end method


# virtual methods
.method public bind(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;)Z
    .locals 12
    .parameter "h"

    .prologue
    const v11, 0x44268000

    const/4 v10, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/SimpleSubViewBinder;->subBind(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v10

    .line 119
    :goto_0
    return v8

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubView()Landroid/view/View;

    move-result-object v7

    .line 35
    .local v7, v:Landroid/view/View;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubData()Ljava/lang/Object;

    move-result-object v2

    .line 37
    .local v2, data:Ljava/lang/Object;
    instance-of v8, v7, Landroid/widget/Checkable;

    if-eqz v8, :cond_1

    instance-of v8, v2, Ljava/lang/Boolean;

    if-eqz v8, :cond_1

    .line 42
    check-cast v7, Landroid/widget/Checkable;

    .end local v7           #v:Landroid/view/View;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #data:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    move v8, v10

    .line 43
    goto :goto_0

    .line 44
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v7       #v:Landroid/view/View;
    :cond_1
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    instance-of v8, v2, Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    .line 49
    check-cast v7, Landroid/widget/TextView;

    .end local v7           #v:Landroid/view/View;
    check-cast v2, Ljava/lang/CharSequence;

    .end local v2           #data:Ljava/lang/Object;
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v8, v10

    .line 50
    goto :goto_0

    .line 51
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v7       #v:Landroid/view/View;
    :cond_2
    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_9

    .line 53
    instance-of v8, v2, Ljava/lang/Integer;

    if-eqz v8, :cond_3

    .line 58
    check-cast v7, Landroid/widget/ImageView;

    .end local v7           #v:Landroid/view/View;
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #data:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    move v8, v10

    .line 59
    goto :goto_0

    .line 60
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v7       #v:Landroid/view/View;
    :cond_3
    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 66
    :try_start_0
    move-object v0, v7

    check-cast v0, Landroid/widget/ImageView;

    move-object v8, v0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v10

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/NumberFormatException;
    move-object v6, v2

    .line 69
    check-cast v6, Ljava/lang/String;

    .line 70
    .local v6, str:Ljava/lang/String;
    const-string v8, "http"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 75
    check-cast v7, Landroid/widget/ImageView;

    .end local v7           #v:Landroid/view/View;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    move v8, v10

    .line 76
    goto :goto_0

    .line 82
    .restart local v7       #v:Landroid/view/View;
    :cond_4
    new-instance v1, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-direct {v1, v6}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getPosition()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setPosition(I)V

    .line 88
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 89
    .local v5, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_5

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v8, v10, :cond_5

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v8, v10, :cond_6

    .line 90
    :cond_5
    invoke-static {v11}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v8

    invoke-static {v11}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 91
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 93
    :cond_6
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v8, :cond_7

    .line 97
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setWidth(I)V

    .line 99
    :cond_7
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_8

    .line 103
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setHeight(I)V

    .line 106
    :cond_8
    invoke-static {v1}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getImageState(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    move-result-object v4

    .line 110
    .local v4, imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    iget-object v8, p0, Lcom/jingdong/common/utils/SimpleSubViewBinder;->imageProcessor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    invoke-virtual {v8, p1, v4}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;->show(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    move v8, v10

    .line 111
    goto/16 :goto_0

    .line 119
    .end local v1           #bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v4           #imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    .end local v5           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v6           #str:Ljava/lang/String;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public getSimpleImageProcessor()Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleSubViewBinder;->imageProcessor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    return-object v0
.end method

.method protected subBind(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;)Z
    .locals 1
    .parameter "h"

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method
