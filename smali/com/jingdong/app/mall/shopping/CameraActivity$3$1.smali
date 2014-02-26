.class Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

.field private final synthetic val$colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity$3;Lcom/jingdong/common/entity/JDColorProductModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->val$colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    const/4 v6, 0x0

    .line 270
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v3

    invoke-static {v3, v6, v6}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->isColorExtracting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$20(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 278
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    .line 279
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 280
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 281
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorProductModel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$15(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/JDColorProductModel;

    .line 282
    .local v2, t:Lcom/jingdong/common/entity/JDColorProductModel;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$18(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JDColorProductModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #t:Lcom/jingdong/common/entity/JDColorProductModel;
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$18(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->val$colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/JDColorProductModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorProductModel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$15(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->val$colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v4

    .line 298
    :cond_2
    :goto_0
    return-void

    .line 277
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 294
    :cond_3
    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 266
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 262
    return-void
.end method
