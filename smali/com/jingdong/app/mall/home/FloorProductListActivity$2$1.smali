.class Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;
.super Ljava/lang/Object;
.source "FloorProductListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 249
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 254
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
