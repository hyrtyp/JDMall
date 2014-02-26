.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;
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
    name = "AddFavoriteMyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1902
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;)Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    .locals 1
    .parameter

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1906
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    iget v1, v1, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 1907
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-virtual {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->doNext()V

    .line 1958
    :goto_0
    return-void

    .line 1916
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1917
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "addFavorite"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1918
    const-string v1, "wareId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

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

    .line 1919
    const-string v1, "isNewText"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1920
    const-string v1, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1921
    new-instance v1, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler$1;

    invoke-direct {v1, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler$1;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1956
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1957
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;

    move-result-object v1

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$7(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method
