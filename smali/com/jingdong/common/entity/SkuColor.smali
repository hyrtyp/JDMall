.class public Lcom/jingdong/common/entity/SkuColor;
.super Ljava/lang/Object;
.source "SkuColor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONSTRUCTOR:I = 0x0

.field private static final serialVersionUID:J = -0x1b1a958ba558ea5fL


# instance fields
.field private colorImg:Ljava/lang/String;

.field private colorName:Ljava/lang/String;

.field private promotion:Ljava/lang/Boolean;

.field private wareId:Ljava/lang/Long;

.field private wareName:Ljava/lang/String;

.field private wareTitle:Ljava/lang/String;


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

    .line 47
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuColor;->setColorName(Ljava/lang/String;)V

    .line 37
    const-string v0, "colorImg"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuColor;->setColorImg(Ljava/lang/String;)V

    .line 38
    const-string v0, "promotion"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuColor;->setPromotion(Ljava/lang/Boolean;)V

    .line 39
    const-string v0, "wareId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuColor;->setWareId(Ljava/lang/Long;)V

    .line 40
    const-string v0, "waretitle"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuColor;->setWareTitle(Ljava/lang/String;)V

    .line 41
    const-string v0, "wname"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SkuColor;->setWareName(Ljava/lang/String;)V

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
            "Lcom/jingdong/common/entity/SkuColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 57
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move-object v1, v2

    .line 64
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    goto :goto_0

    .line 58
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    :goto_2
    :try_start_1
    new-instance v3, Lcom/jingdong/common/entity/SkuColor;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/SkuColor;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 62
    .local v3, ware:Lcom/jingdong/common/entity/SkuColor;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    goto :goto_1

    .line 64
    .end local v3           #ware:Lcom/jingdong/common/entity/SkuColor;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    :cond_2
    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    goto :goto_2
.end method


# virtual methods
.method public getColorImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->colorImg:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->colorImg:Ljava/lang/String;

    goto :goto_0
.end method

.method public getColorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->colorName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->colorName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPromotion()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->promotion:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->promotion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getWareId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->wareId:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->wareId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->wareName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->wareName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWareTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->wareTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SkuColor;->wareTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setColorImg(Ljava/lang/String;)V
    .locals 0
    .parameter "colorImg"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuColor;->colorImg:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setColorName(Ljava/lang/String;)V
    .locals 0
    .parameter "colorName"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuColor;->colorName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPromotion(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "promotion"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuColor;->promotion:Ljava/lang/Boolean;

    .line 101
    return-void
.end method

.method public setWareId(Ljava/lang/Long;)V
    .locals 0
    .parameter "wareId"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuColor;->wareId:Ljava/lang/Long;

    .line 109
    return-void
.end method

.method public setWareName(Ljava/lang/String;)V
    .locals 0
    .parameter "wareName"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuColor;->wareName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setWareTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "wareTitle"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jingdong/common/entity/SkuColor;->wareTitle:Ljava/lang/String;

    .line 117
    return-void
.end method
