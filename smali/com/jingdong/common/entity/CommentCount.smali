.class public Lcom/jingdong/common/entity/CommentCount;
.super Ljava/lang/Object;
.source "CommentCount.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONSTRUCTOR:I = 0x0

.field public static final TYPE_BAD:I = 0x3

.field public static final TYPE_CENTER:I = 0x2

.field public static final TYPE_GOOD:I = 0x1

.field private static final serialVersionUID:J = 0xd4be972e46caa3cL


# instance fields
.field private name:Ljava/lang/String;

.field private scoreCount:Ljava/lang/Integer;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    packed-switch p2, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 38
    :pswitch_0
    const-string v0, "scoreCount1"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "scoreCount1"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CommentCount;->setScoreCount(Ljava/lang/Integer;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CommentCount;->setType(I)V

    .line 48
    :cond_0
    :goto_1
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CommentCount;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "scoreCount2"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    const-string v0, "scoreCount2"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CommentCount;->setScoreCount(Ljava/lang/Integer;)V

    .line 43
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CommentCount;->setType(I)V

    goto :goto_1

    .line 44
    :cond_2
    const-string v0, "scoreCount3"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "scoreCount3"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CommentCount;->setScoreCount(Ljava/lang/Integer;)V

    .line 46
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CommentCount;->setType(I)V

    goto :goto_1

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
            "Lcom/jingdong/common/entity/CommentCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 61
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    move-object v1, v2

    .line 76
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    :goto_1
    return-object v1

    .line 63
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    :cond_0
    if-nez v2, :cond_1

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    :goto_2
    :try_start_1
    new-instance v3, Lcom/jingdong/common/entity/CommentCount;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/CommentCount;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 67
    .local v3, unit:Lcom/jingdong/common/entity/CommentCount;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    goto :goto_0

    .line 70
    .end local v3           #unit:Lcom/jingdong/common/entity/CommentCount;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    :cond_1
    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    goto :goto_2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/common/entity/CommentCount;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CommentCount;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScoreCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/common/entity/CommentCount;->scoreCount:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CommentCount;->scoreCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/jingdong/common/entity/CommentCount;->type:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jingdong/common/entity/CommentCount;->name:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setScoreCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "scoreCount"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jingdong/common/entity/CommentCount;->scoreCount:Ljava/lang/Integer;

    .line 97
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 104
    iput p1, p0, Lcom/jingdong/common/entity/CommentCount;->type:I

    .line 105
    return-void
.end method
