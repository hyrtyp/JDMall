.class public Lcom/jingdong/common/entity/Province;
.super Ljava/lang/Object;
.source "Province.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONSTRUCTOR:I = 0x0

.field private static final serialVersionUID:J = 0x16f740305518e890L


# instance fields
.field private provinceID:Ljava/lang/String;

.field private provinceName:Ljava/lang/String;


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

    .line 43
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Province;->setProvinceID(Ljava/lang/String;)V

    .line 37
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Province;->setProvinceName(Ljava/lang/String;)V

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
            "Lcom/jingdong/common/entity/Province;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 53
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move-object v1, v2

    .line 60
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    goto :goto_0

    .line 54
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    :goto_2
    :try_start_1
    new-instance v3, Lcom/jingdong/common/entity/Province;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/Province;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 58
    .local v3, ware:Lcom/jingdong/common/entity/Province;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    goto :goto_1

    .line 60
    .end local v3           #ware:Lcom/jingdong/common/entity/Province;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    :cond_2
    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    goto :goto_2
.end method


# virtual methods
.method public getProvinceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/entity/Province;->provinceID:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/common/entity/Province;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public setProvinceID(Ljava/lang/String;)V
    .locals 0
    .parameter "provinceID"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jingdong/common/entity/Province;->provinceID:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0
    .parameter "provinceName"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jingdong/common/entity/Province;->provinceName:Ljava/lang/String;

    .line 75
    return-void
.end method
