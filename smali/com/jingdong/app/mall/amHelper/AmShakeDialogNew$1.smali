.class Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;
.super Ljava/lang/Object;
.source "AmShakeDialogNew.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->loadProductImage(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->val$imageView:Landroid/widget/ImageView;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;)Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$2;

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$2;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 265
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 3
    .parameter "httpSettingParams"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method
