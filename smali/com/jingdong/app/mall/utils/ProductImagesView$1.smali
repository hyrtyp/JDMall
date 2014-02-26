.class Lcom/jingdong/app/mall/utils/ProductImagesView$1;
.super Landroid/database/DataSetObserver;
.source "ProductImagesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ProductImagesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ProductImagesView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    .line 273
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    return-object v0
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 279
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 280
    .local v0, myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    instance-of v1, v0, Lcom/jingdong/app/mall/product/ProductDetailActivity;

    if-eqz v1, :cond_0

    .line 281
    new-instance v1, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 304
    :cond_0
    return-void
.end method
