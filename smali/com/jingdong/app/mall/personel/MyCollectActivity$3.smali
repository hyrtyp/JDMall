.class Lcom/jingdong/app/mall/personel/MyCollectActivity$3;
.super Ljava/lang/Object;
.source "MyCollectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCollectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$3;)Lcom/jingdong/app/mall/personel/MyCollectActivity;
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    sget-boolean v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->hasCacelFavorite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCollectActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCollectActivity$3$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$3$1;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->modifyData(Lcom/jingdong/common/utils/NextPageLoader$ModifyDataRunnable;)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/personel/MyCollectActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->access$2(Lcom/jingdong/app/mall/personel/MyCollectActivity;Lcom/jingdong/common/entity/Product;)V

    .line 267
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyCollectActivity;->nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->notifyDataSetChanged()V

    goto :goto_0
.end method
