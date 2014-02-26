.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;
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
    name = "QueryThirdAddressCityMyHandler"
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
    .line 1029
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->province:Ljava/lang/String;

    .line 1031
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->city:Ljava/lang/String;

    .line 1032
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->county:Ljava/lang/String;

    .line 1033
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->town:Ljava/lang/String;

    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v0, v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v0, v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 1058
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

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

    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getCheckNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    goto :goto_0

    .line 1054
    :cond_2
    const-string v0, "getCitys"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->action:Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v0

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getProvinceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->province:Ljava/lang/String;

    .line 1057
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->action:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v2

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getSkuId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->province:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->city:Ljava/lang/String;

    iget-object v5, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->county:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->town:Ljava/lang/String;

    iget-object v7, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v7}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v7

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z
    invoke-static {v7}, Lcom/jingdong/common/controller/ProductDetailController;->access$13(Lcom/jingdong/common/controller/ProductDetailController;)Z

    move-result v7

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->QueryDatas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v7}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$2(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
