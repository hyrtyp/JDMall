.class Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor;
.super Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;
.source "GiftSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/GiftSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlertImageProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor$MyUIRunnable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected provideUIRunnable(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/adapter/UIRunnable;
    .locals 1
    .parameter "subViewHolder"
    .parameter "imageState"

    .prologue
    .line 221
    new-instance v0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor$MyUIRunnable;

    invoke-direct {v0, p1, p2}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor$MyUIRunnable;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    return-object v0
.end method
