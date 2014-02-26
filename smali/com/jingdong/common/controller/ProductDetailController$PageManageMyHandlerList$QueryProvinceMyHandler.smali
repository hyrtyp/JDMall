.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;
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
    name = "QueryProvinceMyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 2026
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2026
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    .locals 1
    .parameter

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2030
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v2, v2, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-eq v2, v4, :cond_0

    .line 2031
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 2084
    :goto_0
    return-void

    .line 2035
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getProvinceList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getProvinceList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2036
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    goto :goto_0

    .line 2044
    :cond_1
    new-instance v1, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler$1;

    invoke-direct {v1, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler$1;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;)V

    .line 2076
    .local v1, listener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 2077
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "selectedProvince"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 2078
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 2079
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 2080
    const-wide/32 v2, 0xf731400

    invoke-virtual {v0, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 2081
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 2083
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$7(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method
