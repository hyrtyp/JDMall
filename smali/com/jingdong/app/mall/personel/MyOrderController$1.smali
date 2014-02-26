.class Lcom/jingdong/app/mall/personel/MyOrderController$1;
.super Ljava/lang/Object;
.source "MyOrderController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderController;->queryUserImage(Ljava/lang/String;Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderController;

.field private final synthetic val$listener:Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderController;Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderController$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderController;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderController$1;->val$listener:Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    .local v1, imgDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderController$1;->val$listener:Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;

    invoke-interface {v2, v1}, Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;->onFinish(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderController$1;->val$listener:Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;->onFinish(Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 42
    return-void
.end method
