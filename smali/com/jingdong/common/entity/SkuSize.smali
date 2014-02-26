.class public Lcom/jingdong/common/entity/SkuSize;
.super Ljava/lang/Object;
.source "SkuSize.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONSTRUCTOR:I = 0x0

.field private static final serialVersionUID:J = -0x20da0c28cc501f75L


# instance fields
.field private directShow:Ljava/lang/Boolean;

.field private promotion:Ljava/lang/Boolean;

.field private sizeName:Ljava/lang/String;

.field private wareId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    packed-switch p2, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const-string v0, "directShow"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuSize;->setDirectShow(Ljava/lang/Boolean;)V

    .line 37
    const-string v0, "promotion"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuSize;->setPromotion(Ljava/lang/Boolean;)V

    .line 38
    const-string v0, "size"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuSize;->setSizeName(Ljava/lang/String;)V

    .line 39
    const-string v0, "wareId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuSize;->setWareId(Ljava/lang/Long;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SkuSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 66
    :goto_0
    return-object v1

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 54
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move-object v1, v2

    .line 61
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    goto :goto_0

    .line 55
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    :goto_2
    :try_start_1
    new-instance v3, Lcom/jingdong/common/entity/SkuSize;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/SkuSize;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 59
    .local v3, ware:Lcom/jingdong/common/entity/SkuSize;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    goto :goto_1

    .line 61
    .end local v3           #ware:Lcom/jingdong/common/entity/SkuSize;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    :cond_2
    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    goto :goto_2
.end method


# virtual methods
.method public getDirectShow()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuSize;->directShow:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuSize;->directShow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getPromotion()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuSize;->promotion:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuSize;->promotion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getSizeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuSize;->sizeName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuSize;->sizeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWareId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuSize;->wareId:Ljava/lang/Long;

    return-object v0
.end method

.method public setDirectShow(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "directShow"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuSize;->directShow:Ljava/lang/Boolean;

    .line 80
    return-void
.end method

.method public setPromotion(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "promotion"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuSize;->promotion:Ljava/lang/Boolean;

    .line 88
    return-void
.end method

.method public setSizeName(Ljava/lang/String;)V
    .locals 0
    .parameter "sizeName"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuSize;->sizeName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setWareId(Ljava/lang/Long;)V
    .locals 0
    .parameter "wareId"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuSize;->wareId:Ljava/lang/Long;

    .line 96
    return-void
.end method
