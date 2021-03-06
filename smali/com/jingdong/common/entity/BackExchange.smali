.class public Lcom/jingdong/common/entity/BackExchange;
.super Ljava/lang/Object;
.source "BackExchange.java"


# instance fields
.field private action:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private group:Ljava/lang/Integer;

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/BackExchange;->setName(Ljava/lang/String;)V

    .line 30
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/BackExchange;->setUrl(Ljava/lang/String;)V

    .line 31
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/BackExchange;->setIcon(Ljava/lang/String;)V

    .line 32
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/BackExchange;->setDescription(Ljava/lang/String;)V

    .line 33
    const-string v0, "group"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/BackExchange;->setGroup(Ljava/lang/Integer;)V

    .line 34
    const-string v0, "functionId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/BackExchange;->setAction(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private static isAdd(Lcom/jingdong/common/entity/BackExchange;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/jingdong/common/entity/BackExchange;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BackExchange;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BackExchange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v3, 0x0

    .line 40
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BackExchange;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 54
    :goto_0
    return-object v4

    .line 43
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BackExchange;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BackExchange;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    :goto_2
    move-object v4, v3

    .line 54
    goto :goto_0

    .line 46
    :cond_2
    new-instance v2, Lcom/jingdong/common/entity/BackExchange;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/jingdong/common/entity/BackExchange;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 47
    .local v2, item:Lcom/jingdong/common/entity/BackExchange;
    invoke-static {v2}, Lcom/jingdong/common/entity/BackExchange;->isAdd(Lcom/jingdong/common/entity/BackExchange;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    .end local v2           #item:Lcom/jingdong/common/entity/BackExchange;
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/common/entity/BackExchange;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/common/entity/BackExchange;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/common/entity/BackExchange;->group:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/common/entity/BackExchange;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/common/entity/BackExchange;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/common/entity/BackExchange;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jingdong/common/entity/BackExchange;->action:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jingdong/common/entity/BackExchange;->description:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setGroup(Ljava/lang/Integer;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/jingdong/common/entity/BackExchange;->group:Ljava/lang/Integer;

    .line 102
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jingdong/common/entity/BackExchange;->icon:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jingdong/common/entity/BackExchange;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/jingdong/common/entity/BackExchange;->url:Ljava/lang/String;

    .line 78
    return-void
.end method
