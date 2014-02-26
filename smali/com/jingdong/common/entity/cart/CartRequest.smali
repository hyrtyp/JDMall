.class public Lcom/jingdong/common/entity/cart/CartRequest;
.super Ljava/lang/Object;
.source "CartRequest.java"


# instance fields
.field private cartCommon:Lcom/jingdong/common/entity/cart/CartRequestCommon;

.field private cartOperates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartRequestOperate;",
            ">;"
        }
    .end annotation
.end field

.field private noResponse:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->noResponse:Ljava/lang/Boolean;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/entity/cart/CartRequestCommon;)V
    .locals 1
    .parameter "cartCommon"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->noResponse:Ljava/lang/Boolean;

    .line 32
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartCommon:Lcom/jingdong/common/entity/cart/CartRequestCommon;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/entity/cart/CartRequestOperate;)V
    .locals 1
    .parameter "cartOperate"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->noResponse:Ljava/lang/Boolean;

    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartRequestOperate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, cartOperates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->noResponse:Ljava/lang/Boolean;

    .line 41
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/jingdong/common/entity/cart/CartRequestCommon;)V
    .locals 1
    .parameter
    .parameter "cartCommon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartRequestOperate;",
            ">;",
            "Lcom/jingdong/common/entity/cart/CartRequestCommon;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, cartOperates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->noResponse:Ljava/lang/Boolean;

    .line 61
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    .line 62
    iput-object p2, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartCommon:Lcom/jingdong/common/entity/cart/CartRequestCommon;

    .line 63
    return-void
.end method


# virtual methods
.method public getCartCommon()Lcom/jingdong/common/entity/cart/CartRequestCommon;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartCommon:Lcom/jingdong/common/entity/cart/CartRequestCommon;

    return-object v0
.end method

.method public getCartOperates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartRequestOperate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNoResponse()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->noResponse:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequest;->noResponse:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setCartCommon(Lcom/jingdong/common/entity/cart/CartRequestCommon;)V
    .locals 0
    .parameter "cartCommon"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartCommon:Lcom/jingdong/common/entity/cart/CartRequestCommon;

    .line 79
    return-void
.end method

.method public setCartOperates(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartRequestOperate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, cartOperates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequest;->cartOperates:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method public setNoResponse(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "noResponse"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequest;->noResponse:Ljava/lang/Boolean;

    .line 94
    return-void
.end method
