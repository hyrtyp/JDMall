.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;
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
    name = "StatClickMyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2093
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2097
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v1, v1, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 2098
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 2111
    :goto_0
    return-void

    .line 2103
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 2104
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 2105
    const-string v1, "wareId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v3

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->id:J
    invoke-static {v3}, Lcom/jingdong/common/controller/ProductDetailController;->access$3(Lcom/jingdong/common/controller/ProductDetailController;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2106
    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 2108
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$7(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 2110
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    goto :goto_0
.end method
