.class public Lcom/jingdong/common/entity/Promotion;
.super Ljava/lang/Object;
.source "Promotion.java"


# static fields
.field public static final PROMOTION:I

.field private static isValid:Z


# instance fields
.field private catelogyId:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private promotionId:Ljava/lang/String;

.field private promotionInfo:Ljava/lang/String;

.field private promotionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/common/entity/Promotion;->isValid:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    packed-switch p2, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    const-string v0, "promition_info"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Promotion;->setPromotionInfo(Ljava/lang/String;)V

    .line 66
    const-string v0, "catelogyId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Promotion;->setCatelogyId(Ljava/lang/String;)V

    .line 67
    const-string v0, "imageUrl"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Promotion;->setImageUrl(Ljava/lang/String;)V

    .line 68
    const-string v0, "promotion_name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Promotion;->setPromotionName(Ljava/lang/String;)V

    .line 69
    const-string v0, "promotion_id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Promotion;->setPromotionId(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Promotion;->getPromotionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Promotion;->setValid(Z)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 6
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    move-object v2, v3

    .line 95
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    :goto_1
    return-object v2

    .line 84
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    :cond_0
    new-instance v4, Lcom/jingdong/common/entity/Promotion;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/jingdong/common/entity/Promotion;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 85
    .local v4, pm:Lcom/jingdong/common/entity/Promotion;
    sget-boolean v5, Lcom/jingdong/common/entity/Promotion;->isValid:Z

    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    .end local v4           #pm:Lcom/jingdong/common/entity/Promotion;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Promotion;>;"
    goto :goto_2
.end method


# virtual methods
.method public getCatelogyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jingdong/common/entity/Promotion;->catelogyId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jingdong/common/entity/Promotion;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/common/entity/Promotion;->promotionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/common/entity/Promotion;->promotionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/common/entity/Promotion;->promotionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCatelogyId(Ljava/lang/String;)V
    .locals 0
    .parameter "catelogyId"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/jingdong/common/entity/Promotion;->catelogyId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jingdong/common/entity/Promotion;->imageUrl:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPromotionId(Ljava/lang/String;)V
    .locals 0
    .parameter "promotionId"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jingdong/common/entity/Promotion;->promotionId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPromotionInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "promotionInfo"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jingdong/common/entity/Promotion;->promotionInfo:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPromotionName(Ljava/lang/String;)V
    .locals 0
    .parameter "promotionName"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/jingdong/common/entity/Promotion;->promotionName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 23
    sput-boolean p1, Lcom/jingdong/common/entity/Promotion;->isValid:Z

    .line 24
    return-void
.end method
