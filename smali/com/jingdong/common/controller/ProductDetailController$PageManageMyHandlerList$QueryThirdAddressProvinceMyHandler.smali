.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/MyHandlerList$MyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThirdAddressProvinceMyHandler"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field city:Ljava/lang/String;

.field county:Ljava/lang/String;

.field province:Ljava/lang/String;

.field final synthetic this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

.field town:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V
    .locals 1
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->province:Ljava/lang/String;

    .line 963
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->city:Ljava/lang/String;

    .line 964
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->county:Ljava/lang/String;

    .line 965
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->town:Ljava/lang/String;

    .line 966
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 961
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 973
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v0, v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v0, v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 1019
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getStockFunction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getCheckNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getProvinceIDFromSharedPreferences()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$8(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getCityIDFromSharedPreferences()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCityId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$9(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getDistrictIdFromSharedPreferences()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCountyId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$10(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getTownIdFromSharedPreferences()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultTownId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$11(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$12(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/jingdong/common/lbs/LocManager;->isLocateSuccess:Z

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$8(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCityId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$9(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/jingdong/common/lbs/LocManager;->districtId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCountyId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$10(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    const-string v1, "0"

    #setter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultTownId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$11(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V

    .line 1005
    :cond_3
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$13(Lcom/jingdong/common/controller/ProductDetailController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1006
    const-string v0, "getProvinces"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->action:Ljava/lang/String;

    .line 1018
    :goto_1
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->action:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getSkuId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->province:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->city:Ljava/lang/String;

    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->county:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->town:Ljava/lang/String;

    iget-object v7, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v7}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z
    invoke-static {v7}, Lcom/jingdong/common/controller/ProductDetailController;->access$13(Lcom/jingdong/common/controller/ProductDetailController;)Z

    move-result v7

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->QueryDatas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v7}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$2(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1007
    :cond_4
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$12(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1008
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->action:Ljava/lang/String;

    .line 1009
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$12(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->province:Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCityId:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$14(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->city:Ljava/lang/String;

    .line 1011
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCountyId:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$15(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->county:Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultTownId:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$16(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->town:Ljava/lang/String;

    goto :goto_1

    .line 1014
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;->action:Ljava/lang/String;

    goto :goto_1
.end method
