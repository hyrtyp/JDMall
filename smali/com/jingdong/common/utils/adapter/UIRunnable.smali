.class public Lcom/jingdong/common/utils/adapter/UIRunnable;
.super Ljava/lang/Object;
.source "UIRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;
    }
.end annotation


# static fields
.field private static final CONTEXT:Landroid/content/Context;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final APP_NAME:Ljava/lang/String;

.field private final NEED_LONG_CLICK:Ljava/lang/String;

.field private imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

.field private subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jingdong/common/utils/adapter/UIRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/adapter/UIRunnable;->TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/adapter/UIRunnable;->CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V
    .locals 1
    .parameter "subViewHolder"
    .parameter "imageState"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->app_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->APP_NAME:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->need_long_click:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->NEED_LONG_CLICK:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    .line 36
    iput-object p2, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    .line 37
    return-void
.end method

.method private gc()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    .line 186
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    .line 187
    return-void
.end method


# virtual methods
.method protected getItemView()Landroid/view/View;
    .locals 5

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getAdapterHelper()Lcom/jingdong/common/utils/AdapterHelper;

    move-result-object v0

    .line 157
    .local v0, adapterHelper:Lcom/jingdong/common/utils/AdapterHelper;
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    move-result-object v1

    .line 158
    .local v1, holder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 163
    .local v2, item:Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getItemData()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/AdapterHelper;->getItemView(IZ)Landroid/view/View;

    move-result-object v3

    .line 172
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 49
    iget-object v10, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getItemView()Landroid/view/View;

    move-result-object v5

    .line 50
    .local v5, itemView:Landroid/view/View;
    if-nez v5, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->getItemView()Landroid/view/View;

    move-result-object v5

    .line 54
    :cond_0
    if-nez v5, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->gc()V

    .line 149
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubViewId()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 69
    .local v9, subView:Landroid/view/View;
    if-nez v9, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubViewId()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 70
    move-object v9, v5

    .line 73
    :cond_2
    iget-object v10, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v0

    .line 78
    .local v0, adapter:Lcom/jingdong/common/utils/SimpleBeanAdapter;
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_3

    move-object v6, v9

    .line 79
    check-cast v6, Landroid/widget/ImageView;

    .line 81
    .local v6, iv:Landroid/widget/ImageView;
    new-instance v4, Lcom/jingdong/common/ui/ExceptionDrawable;

    sget-object v10, Lcom/jingdong/common/utils/adapter/UIRunnable;->CONTEXT:Landroid/content/Context;

    iget-object v11, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->NEED_LONG_CLICK:Ljava/lang/String;

    invoke-direct {v4, v10, v11}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .local v4, interactionDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    new-instance v3, Lcom/jingdong/common/ui/ExceptionDrawable;

    sget-object v10, Lcom/jingdong/common/utils/adapter/UIRunnable;->CONTEXT:Landroid/content/Context;

    iget-object v11, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->APP_NAME:Ljava/lang/String;

    invoke-direct {v3, v10, v11}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .local v3, defaultDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    iget-object v10, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->getState()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 148
    .end local v3           #defaultDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    .end local v4           #interactionDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    .end local v6           #iv:Landroid/widget/ImageView;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->gc()V

    goto :goto_0

    .line 90
    .restart local v3       #defaultDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    .restart local v4       #interactionDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    .restart local v6       #iv:Landroid/widget/ImageView;
    :pswitch_0
    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->allowNoImageAndIsNoImage()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 91
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->allowNoImageAndIsNoImage()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 101
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 113
    :pswitch_2
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 114
    .local v7, localLoadImage:Ljava/lang/Boolean;
    iget-object v10, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    const-string v11, "localLoadImage"

    invoke-virtual {v10, v11}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getMoreParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 115
    .local v8, o:Ljava/lang/Object;
    if-eqz v8, :cond_6

    instance-of v10, v8, Ljava/lang/Boolean;

    if-eqz v10, :cond_6

    move-object v7, v8

    .line 116
    check-cast v7, Ljava/lang/Boolean;

    .line 122
    :cond_6
    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->allowNoImageAndIsNoImage()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 123
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    new-instance v10, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;

    iget-object v11, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    iget-object v12, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-static {v12}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getBitmapDigest(Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 128
    :cond_7
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 135
    .end local v7           #localLoadImage:Ljava/lang/Boolean;
    .end local v8           #o:Ljava/lang/Object;
    :pswitch_3
    iget-object v10, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-static {v10}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getBitmapDigest(Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    move-result-object v2

    .line 136
    .local v2, bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    iget-object v10, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 138
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    if-nez v2, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 139
    :cond_8
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v10, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->none()V

    goto :goto_1

    .line 142
    :cond_9
    new-instance v10, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Lcom/jingdong/common/utils/adapter/UIRunnable;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-direct {v10, v11, v12, v2, v1}, Lcom/jingdong/common/utils/adapter/MyBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
