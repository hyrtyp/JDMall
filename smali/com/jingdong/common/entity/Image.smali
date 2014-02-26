.class public Lcom/jingdong/common/entity/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PRODUCTDETAIL:I = 0x0

.field public static final PRODUCT_DETAIL_NEW:I = 0x1

.field private static final serialVersionUID:J = 0x6fa3f243eaca8921L


# instance fields
.field private big:Ljava/lang/String;

.field private small:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "small"
    .parameter "big"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jingdong/common/entity/Image;->small:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/jingdong/common/entity/Image;->big:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    packed-switch p2, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 35
    :pswitch_0
    :try_start_0
    const-string v0, "newpath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Image;->setSmall(Ljava/lang/String;)V

    .line 36
    const-string v0, "bigpath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Image;->setBig(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    .line 39
    :pswitch_1
    const-string v0, "small"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Image;->setSmall(Ljava/lang/String;)V

    .line 40
    const-string v0, "big"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Image;->setBig(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toList(Lorg/json/JSONArray;I)Ljava/util/LinkedList;
    .locals 5
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v2, 0x0

    .line 77
    :goto_0
    return-object v2

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 65
    .local v2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    .local v3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move-object v2, v3

    .line 71
    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    .restart local v2       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    goto :goto_0

    .line 67
    .end local v2           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    .restart local v3       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    :cond_1
    new-instance v1, Lcom/jingdong/common/entity/Image;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/jingdong/common/entity/Image;-><init>(Lorg/json/JSONObject;I)V

    .line 68
    .local v1, image:Lcom/jingdong/common/entity/Image;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0           #i:I
    .end local v1           #image:Lcom/jingdong/common/entity/Image;
    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    .restart local v2       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    .restart local v0       #i:I
    .restart local v3       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    .restart local v2       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Image;>;"
    goto :goto_0
.end method


# virtual methods
.method public getBig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/common/entity/Image;->big:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/common/entity/Image;->small:Ljava/lang/String;

    return-object v0
.end method

.method public setBig(Ljava/lang/String;)V
    .locals 0
    .parameter "big"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jingdong/common/entity/Image;->big:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSmall(Ljava/lang/String;)V
    .locals 0
    .parameter "small"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jingdong/common/entity/Image;->small:Ljava/lang/String;

    .line 89
    return-void
.end method
