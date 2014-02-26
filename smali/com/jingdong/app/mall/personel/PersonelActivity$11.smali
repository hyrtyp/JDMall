.class Lcom/jingdong/app/mall/personel/PersonelActivity$11;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->setUserImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$11;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x0

    .line 1226
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1227
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1228
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$9(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getFirstUploadSucess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1229
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$9(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mImgView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$45(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->toMergePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    .line 1230
    .local v1, img:Landroid/graphics/drawable/LayerDrawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v3, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$11;Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 1242
    .end local v1           #img:Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$9(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->savePhotoToCache(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    .line 1244
    :cond_0
    return-void

    .line 1240
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$9(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->setFirstUploadSucess(Z)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$9(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->setFirstUploadSucess(Z)V

    .line 1252
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1257
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1219
    return-void
.end method
