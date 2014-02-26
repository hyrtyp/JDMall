.class Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->showImage(Lcom/jingdong/common/utils/TouchImageView;Lcom/jingdong/common/entity/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

.field private final synthetic val$image:Lcom/jingdong/common/entity/Image;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;Lcom/jingdong/common/entity/Image;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->val$image:Lcom/jingdong/common/entity/Image;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    .locals 1
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    new-instance v1, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->val$image:Lcom/jingdong/common/entity/Image;

    invoke-direct {v1, p0, p1, v2}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;-><init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Lcom/jingdong/common/entity/Image;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/product/ImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    new-instance v1, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;-><init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/product/ImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 544
    return-void
.end method
