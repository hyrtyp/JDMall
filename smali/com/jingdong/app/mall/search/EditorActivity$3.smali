.class Lcom/jingdong/app/mall/search/EditorActivity$3;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/EditorActivity;->doPhotoSearch(Landroid/graphics/Bitmap;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/EditorActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/EditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/search/EditorActivity$3;)Lcom/jingdong/app/mall/search/EditorActivity;
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    .line 280
    iget-object v5, p0, Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/EditorActivity;->access$3(Lcom/jingdong/app/mall/search/EditorActivity;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 281
    iget-object v5, p0, Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/EditorActivity;->access$3(Lcom/jingdong/app/mall/search/EditorActivity;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 284
    .local v2, objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v2, :cond_1

    .line 309
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v5, "imgPath"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, imageUrl:Ljava/lang/String;
    const-string v5, "resultList"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, resultList:Ljava/lang/String;
    const-string v5, "matchWareInfoList"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 290
    .local v0, arrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/16 v5, 0x1a

    invoke-static {v0, v5}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 291
    .local v3, productArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    iget-object v5, p0, Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    new-instance v6, Lcom/jingdong/app/mall/search/EditorActivity$3$2;

    invoke-direct {v6, p0, v3, v1, v4}, Lcom/jingdong/app/mall/search/EditorActivity$3$2;-><init>(Lcom/jingdong/app/mall/search/EditorActivity$3;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/search/EditorActivity;->post(Ljava/lang/Runnable;)V

    .line 303
    iget-object v5, p0, Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    new-instance v6, Lcom/jingdong/app/mall/search/EditorActivity$3$3;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/search/EditorActivity$3$3;-><init>(Lcom/jingdong/app/mall/search/EditorActivity$3;)V

    .line 308
    const/16 v7, 0xc8

    .line 303
    invoke-virtual {v5, v6, v7}, Lcom/jingdong/app/mall/search/EditorActivity;->post(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    new-instance v1, Lcom/jingdong/app/mall/search/EditorActivity$3$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/search/EditorActivity$3$1;-><init>(Lcom/jingdong/app/mall/search/EditorActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/search/EditorActivity;->post(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 259
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method
