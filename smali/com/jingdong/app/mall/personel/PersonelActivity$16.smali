.class Lcom/jingdong/app/mall/personel/PersonelActivity$16;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->onOrderInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$16;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 1726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$16;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$16;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 1738
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 1739
    .local v2, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "JdOrderStat"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/common/entity/JdOrderStat;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1740
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    if-nez v0, :cond_0

    .line 1754
    .end local v0           #data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .end local v2           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    return-void

    .line 1743
    .restart local v0       #data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .restart local v2       #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$16;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v4, Lcom/jingdong/app/mall/personel/PersonelActivity$16$1;

    invoke-direct {v4, p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$16$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$16;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1751
    .end local v0           #data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .end local v2           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v1

    .line 1752
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$16;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isLoadedOrderInfo:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$53(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 1762
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1767
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1730
    return-void
.end method
