.class public Lcom/jingdong/common/entity/cart/CartRequestBase;
.super Ljava/lang/Object;
.source "CartRequestBase.java"


# instance fields
.field protected packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;"
        }
    .end annotation
.end field

.field protected skus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;)V
    .locals 1
    .parameter "sku"
    .parameter "pack"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    if-eqz p2, :cond_1

    .line 47
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, skus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .local p2, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    .line 34
    iput-object p2, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public getPacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setOperatePacks(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public setOperateSkus(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, skus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public toParams()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v1, proxy:Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartRequestBase;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    .line 62
    iget-object v4, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 63
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 64
    .local v2, skusProxy:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->skus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    const-string v4, "TheSkus"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .end local v2           #skusProxy:Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartRequestBase;->getPacks()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    .line 71
    iget-object v4, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 72
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 73
    .local v0, packsProxy:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/jingdong/common/entity/cart/CartRequestBase;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 76
    const-string v4, "ThePacks"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .end local v0           #packsProxy:Lorg/json/JSONArray;
    :cond_1
    return-object v1

    .line 64
    .restart local v2       #skusProxy:Lorg/json/JSONArray;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 65
    .local v3, summary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->toSummaryParams()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 73
    .end local v2           #skusProxy:Lorg/json/JSONArray;
    .end local v3           #summary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .restart local v0       #packsProxy:Lorg/json/JSONArray;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 74
    .local v3, summary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartPackSummary;->toSummaryParams()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method
