.class Lcom/jingdong/app/mall/shake/ShakeController$2;
.super Ljava/lang/Object;
.source "ShakeController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeController;->loadHomeBackground(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$newLayout:Landroid/widget/RelativeLayout;

.field private final synthetic val$orginalBitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$originalLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$newLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$originalLayout:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$orginalBitmap:Landroid/graphics/Bitmap;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 120
    .local v3, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$newLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$originalLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeController$2;->val$orginalBitmap:Landroid/graphics/Bitmap;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shake/ShakeController$2$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeController$2;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 115
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 111
    return-void
.end method
