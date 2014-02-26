.class Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$2;
.super Lcom/jingdong/common/utils/TouchImageView;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$2;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    .line 306
    invoke-direct {p0, p2}, Lcom/jingdong/common/utils/TouchImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onImgRecycled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 310
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$2;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    #calls: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setContentShown(ZZZ)V
    invoke-static {v0, v1, v1, v1}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->access$1(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;ZZZ)V

    .line 311
    const-string v0, "TouchImageView"

    const-string v1, "onImgRecycled"

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method
