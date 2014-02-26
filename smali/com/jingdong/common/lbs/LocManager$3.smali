.class Lcom/jingdong/common/lbs/LocManager$3;
.super Ljava/lang/Object;
.source "LocManager.java"

# interfaces
.implements Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/lbs/LocManager;->queryInfoByLocation(Lcom/jingdong/common/lbs/LocManager$MyLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/lbs/LocManager;


# direct methods
.method constructor <init>(Lcom/jingdong/common/lbs/LocManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/lbs/LocManager$3;->this$0:Lcom/jingdong/common/lbs/LocManager;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/jingdong/common/lbs/LocManager$3;->this$0:Lcom/jingdong/common/lbs/LocManager;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/common/lbs/LocManager;->isCurrLocationSucceed:Z
    invoke-static {v0, v1}, Lcom/jingdong/common/lbs/LocManager;->access$2(Lcom/jingdong/common/lbs/LocManager;Z)V

    .line 199
    invoke-static {p1}, Lcom/jingdong/common/lbs/LocManager;->updateLocation(Ljava/util/Map;)V

    .line 204
    iget-object v0, p0, Lcom/jingdong/common/lbs/LocManager$3;->this$0:Lcom/jingdong/common/lbs/LocManager;

    #getter for: Lcom/jingdong/common/lbs/LocManager;->productInfoUtil:Lcom/jingdong/common/lbs/ProductInfoUtil;
    invoke-static {v0}, Lcom/jingdong/common/lbs/LocManager;->access$3(Lcom/jingdong/common/lbs/LocManager;)Lcom/jingdong/common/lbs/ProductInfoUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/lbs/LocManager$3;->this$0:Lcom/jingdong/common/lbs/LocManager;

    #getter for: Lcom/jingdong/common/lbs/LocManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/jingdong/common/lbs/LocManager;->access$4(Lcom/jingdong/common/lbs/LocManager;)Landroid/content/Context;

    move-result-object v1

    sget-wide v2, Lcom/jingdong/common/lbs/LocManager;->lati:D

    sget-wide v4, Lcom/jingdong/common/lbs/LocManager;->longi:D

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/common/lbs/ProductInfoUtil;->queryProductInfo(Landroid/content/Context;DD)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->access$1()Lcom/jingdong/common/lbs/LocManager$MyLocationListener;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/jingdong/common/res/StringUtil;->gps_location_fail:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jingdong/common/lbs/LocManager$MyLocationListener;->onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V

    goto :goto_0
.end method
