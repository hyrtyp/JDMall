.class Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;
.super Ljava/lang/Object;
.source "UserPhotoUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

.field private final synthetic val$msgComment:Ljava/lang/String;

.field private final synthetic val$photo:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->val$photo:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->val$msgComment:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mUserImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$4(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->val$photo:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mUserImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$4(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->toMergePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mHeadRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$5(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->val$photo:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PhotoUtils;->BoxBlurFilter(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/utils/ImageUtil;->zoomDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->mHeadRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$5(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 247
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$1(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->val$msgComment:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->setFirstUploadSucess(Z)V

    .line 249
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->this$1:Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload$3;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$3$1;->val$photo:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->savePhotoToCache(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method
