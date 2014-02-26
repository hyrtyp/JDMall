.class public Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/ShoppingBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShoppingHttpListener"
.end annotation


# instance fields
.field private mShoppingListener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 0
    .parameter "shoppingListener"

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->mShoppingListener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;

    .line 810
    return-void
.end method

.method private shoppingOnEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->mShoppingListener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->mShoppingListener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;->onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V

    .line 875
    :cond_0
    return-void
.end method

.method private shoppingOnError(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->mShoppingListener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->mShoppingListener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;->onError(Ljava/lang/String;)V

    .line 886
    :cond_0
    return-void
.end method

.method private shoppingOnStart()V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->mShoppingListener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->mShoppingListener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;

    invoke-interface {v0}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;->onStart()V

    .line 897
    :cond_0
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    const/4 v4, 0x0

    .line 830
    if-eqz p1, :cond_3

    .line 831
    new-instance v0, Lcom/jingdong/common/entity/cart/CartResponse;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jingdong/common/entity/cart/CartResponse;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 833
    .local v0, response:Lcom/jingdong/common/entity/cart/CartResponse;
    const/4 v1, 0x0

    .line 835
    .local v1, showNum:I
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 836
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->shoppingOnError(Ljava/lang/String;)V

    .line 863
    .end local v0           #response:Lcom/jingdong/common/entity/cart/CartResponse;
    .end local v1           #showNum:I
    :cond_0
    :goto_0
    return-void

    .line 840
    .restart local v0       #response:Lcom/jingdong/common/entity/cart/CartResponse;
    .restart local v1       #showNum:I
    :cond_1
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 842
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;

    invoke-direct {v3, v4}, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;-><init>(Lcom/jingdong/common/entity/cart/CartResponseInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 849
    :goto_1
    invoke-static {v1}, Lcom/jingdong/common/controller/ShoppingBaseController;->setProductCount(I)V

    .line 852
    #calls: Lcom/jingdong/common/controller/ShoppingBaseController;->validateCartIcon()V
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->access$0()V

    .line 854
    invoke-direct {p0, v0}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->shoppingOnEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V

    .line 856
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/jingdong/common/login/LoginUserBase;->setAlreadySyncCart(Z)V

    goto :goto_0

    .line 844
    :cond_2
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 846
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;-><init>(Lcom/jingdong/common/entity/cart/CartResponseInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 861
    .end local v0           #response:Lcom/jingdong/common/entity/cart/CartResponse;
    .end local v1           #showNum:I
    :cond_3
    invoke-direct {p0, v4}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->shoppingOnError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->shoppingOnError(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 819
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;->shoppingOnStart()V

    .line 815
    return-void
.end method
