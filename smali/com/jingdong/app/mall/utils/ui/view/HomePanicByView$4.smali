.class Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;
.super Ljava/lang/Object;
.source "HomePanicByView.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 312
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->timeMillis:J
    invoke-static {v3, v4, v5}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$3(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;J)V

    .line 316
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "indexMiaoSha"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 317
    .local v0, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "scheme"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, scheme:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    const-string v4, "A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->isTestA:Z
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$4(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;Z)V

    .line 321
    :cond_0
    const/16 v3, 0x11

    invoke-static {v0, v3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 322
    .local v1, products:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-nez v1, :cond_1

    .line 351
    .end local v0           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v1           #products:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .end local v2           #scheme:Ljava/lang/String;
    :goto_0
    return-void

    .line 330
    .restart local v0       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v1       #products:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .restart local v2       #scheme:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->context:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$2(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;

    invoke-direct {v4, p0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v0           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v1           #products:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .end local v2           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 304
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 297
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method
