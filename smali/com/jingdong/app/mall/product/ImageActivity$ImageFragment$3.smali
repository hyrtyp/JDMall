.class Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$3;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/TouchImageView$ControllListener;


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
.method constructor <init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$3;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$3;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$3;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->singleTapUp()V

    .line 323
    :cond_0
    return-void
.end method
