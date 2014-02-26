.class public Lcom/jingdong/common/entity/JdNews;
.super Ljava/lang/Object;
.source "JdNews.java"


# static fields
.field public static final JDNEWS:I = 0x0

.field public static final JDNEWS_DETAIL:I = 0x1


# instance fields
.field private addTime:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private jdNewsId:I

.field private startTime:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 2
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    packed-switch p2, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 42
    :pswitch_0
    :try_start_0
    const-string v1, "jdNewsId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdNews;->setJdNewsId(I)V

    .line 43
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdNews;->setTitle(Ljava/lang/String;)V

    .line 44
    const-string v1, "addTime"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdNews;->setAddTime(Ljava/lang/String;)V

    .line 45
    const-string v1, "startTime"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdNews;->setStartTime(Ljava/lang/String;)V

    .line 46
    const-string v1, "endTimel"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdNews;->setEndTimel(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_1
    :try_start_1
    const-string v1, "addTime"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdNews;->setAddTime(Ljava/lang/String;)V

    .line 51
    const-string v1, "content"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdNews;->setContent(Ljava/lang/String;)V

    .line 52
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdNews;->setTitle(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
            "Lcom/jingdong/common/entity/JdNews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 71
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    move-object v2, v3

    .line 84
    .end local v0           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    :goto_1
    return-object v2

    .line 73
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    .restart local v0       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    :cond_0
    new-instance v1, Lcom/jingdong/common/entity/JdNews;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lcom/jingdong/common/entity/JdNews;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 75
    .local v1, jdNews:Lcom/jingdong/common/entity/JdNews;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0           #i:I
    .end local v1           #jdNews:Lcom/jingdong/common/entity/JdNews;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    .restart local v0       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    goto :goto_1
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jingdong/common/entity/JdNews;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jingdong/common/entity/JdNews;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jingdong/common/entity/JdNews;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getJdNewsId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/jingdong/common/entity/JdNews;->jdNewsId:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/common/entity/JdNews;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jingdong/common/entity/JdNews;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0
    .parameter "addTime"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jingdong/common/entity/JdNews;->addTime:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/jingdong/common/entity/JdNews;->content:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setEndTimel(Ljava/lang/String;)V
    .locals 0
    .parameter "endTimel"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/jingdong/common/entity/JdNews;->endTime:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setJdNewsId(I)V
    .locals 0
    .parameter "jdNewsId"

    .prologue
    .line 92
    iput p1, p0, Lcom/jingdong/common/entity/JdNews;->jdNewsId:I

    .line 93
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jingdong/common/entity/JdNews;->startTime:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jingdong/common/entity/JdNews;->title:Ljava/lang/String;

    .line 101
    return-void
.end method
