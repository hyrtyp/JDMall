.class public Lcom/jingdong/common/entity/JDShoppingModel;
.super Ljava/lang/Object;
.source "JDShoppingModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private activityId:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDShoppingModel;->setTitle(Ljava/lang/String;)V

    .line 30
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDShoppingModel;->setImageUrl(Ljava/lang/String;)V

    .line 31
    const-string v1, "functionId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDShoppingModel;->setFunctionId(Ljava/lang/String;)V

    .line 32
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDShoppingModel;->setType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/JDShoppingModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDShoppingModel;>;"
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v3

    .line 101
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 103
    .local v1, jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_2

    .line 104
    new-instance v2, Lcom/jingdong/common/entity/JDShoppingModel;

    invoke-direct {v2, v1}, Lcom/jingdong/common/entity/JDShoppingModel;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 105
    .local v2, jdOrderStat:Lcom/jingdong/common/entity/JDShoppingModel;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2           #jdOrderStat:Lcom/jingdong/common/entity/JDShoppingModel;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v1           #jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/common/entity/JDShoppingModel;->activityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDShoppingModel;->activityId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/common/entity/JDShoppingModel;->functionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDShoppingModel;->functionId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/common/entity/JDShoppingModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/common/entity/JDShoppingModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDShoppingModel;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/jingdong/common/entity/JDShoppingModel;->type:I

    return v0
.end method

.method public setActivityId(Ljava/lang/String;)V
    .locals 0
    .parameter "activityId"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/common/entity/JDShoppingModel;->activityId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/common/entity/JDShoppingModel;->functionId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jingdong/common/entity/JDShoppingModel;->imageUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jingdong/common/entity/JDShoppingModel;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 90
    iput p1, p0, Lcom/jingdong/common/entity/JDShoppingModel;->type:I

    .line 91
    return-void
.end method
