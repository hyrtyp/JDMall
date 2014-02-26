.class public Lcom/jingdong/common/entity/Keyword;
.super Ljava/lang/Object;
.source "Keyword.java"


# static fields
.field public static final TIP:I


# instance fields
.field private count:Ljava/lang/Integer;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    packed-switch p2, :pswitch_data_0

    .line 32
    :goto_0
    return-void

    .line 23
    :pswitch_0
    const-string v0, "wname"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Keyword;->name:Ljava/lang/String;

    .line 24
    const-string v0, "tipNumber"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Keyword;->count:Ljava/lang/Integer;

    goto :goto_0

    .line 20
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
            "Lcom/jingdong/common/entity/Keyword;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v3, 0x0

    .line 54
    :goto_0
    return-object v3

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 44
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    move-object v3, v4

    .line 50
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    goto :goto_0

    .line 46
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    :cond_1
    new-instance v2, Lcom/jingdong/common/entity/Keyword;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v2, v5, p1}, Lcom/jingdong/common/entity/Keyword;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 47
    .local v2, keyword:Lcom/jingdong/common/entity/Keyword;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v1           #i:I
    .end local v2           #keyword:Lcom/jingdong/common/entity/Keyword;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    .restart local v1       #i:I
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    goto :goto_2
.end method


# virtual methods
.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/common/entity/Keyword;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/entity/Keyword;->count:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ea6"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/Keyword;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6761\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/common/entity/Keyword;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jingdong/common/entity/Keyword;->count:Ljava/lang/Integer;

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jingdong/common/entity/Keyword;->name:Ljava/lang/String;

    .line 66
    return-void
.end method
