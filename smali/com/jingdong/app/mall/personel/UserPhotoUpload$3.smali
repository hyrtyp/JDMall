.class Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;
.super Ljava/lang/Object;
.source "UserPhotoUpload.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/UserPhotoUpload;->uploadBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

.field private final synthetic val$photo:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->val$photo:Landroid/graphics/Bitmap;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 232
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 233
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, responseCode:Ljava/lang/String;
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, msgComment:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 237
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$1(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    const v4, 0x7f070495

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$1(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->val$photo:Landroid/graphics/Bitmap;

    invoke-direct {v4, p0, v5, v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;-><init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 266
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->val$photo:Landroid/graphics/Bitmap;

    #calls: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->recycleBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$2(Lcom/jingdong/app/mall/personel/UserPhotoUpload;Landroid/graphics/Bitmap;)V

    .line 272
    .end local v0           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v1           #msgComment:Ljava/lang/String;
    .end local v2           #responseCode:Ljava/lang/String;
    :goto_1
    return-void

    .line 257
    .restart local v0       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v1       #msgComment:Ljava/lang/String;
    .restart local v2       #responseCode:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$1(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    const v4, 0x7f070494

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #calls: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->showAlertDialogDialog()V
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$3(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V

    goto :goto_0

    .line 267
    .end local v0           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v1           #msgComment:Ljava/lang/String;
    .end local v2           #responseCode:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 261
    .restart local v0       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v1       #msgComment:Ljava/lang/String;
    .restart local v2       #responseCode:Ljava/lang/String;
    :cond_2
    const-string v3, "-2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #calls: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->showAlertDialogDialog()V
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$3(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->val$photo:Landroid/graphics/Bitmap;

    #calls: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->recycleBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$2(Lcom/jingdong/app/mall/personel/UserPhotoUpload;Landroid/graphics/Bitmap;)V

    .line 225
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #calls: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->showAlertDialogDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$3(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V

    .line 226
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 215
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$1(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$2;-><init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method
