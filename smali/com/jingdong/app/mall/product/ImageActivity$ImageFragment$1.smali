.class Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$1;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$1;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$1;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$1;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mImage:Lcom/jingdong/common/entity/Image;

    #calls: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->showImage(Lcom/jingdong/common/entity/Image;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;Lcom/jingdong/common/entity/Image;)V

    .line 287
    return-void
.end method
