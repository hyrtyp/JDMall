.class public Lcom/jingdong/common/entity/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# static fields
.field public static final COMMENT:I


# instance fields
.field private attribute:Ljava/lang/StringBuffer;

.field private insertTime:Ljava/lang/String;

.field private replyCount:Ljava/lang/Integer;

.field private score:Ljava/lang/Integer;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/Comment;->attribute:Ljava/lang/StringBuffer;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/Comment;->attribute:Ljava/lang/StringBuffer;

    .line 28
    packed-switch p2, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 31
    :pswitch_0
    const-string v0, "score"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Comment;->setScore(Ljava/lang/Integer;)V

    .line 32
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Comment;->setUserName(Ljava/lang/String;)V

    .line 33
    const-string v0, "creationTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Comment;->setInsertTime(Ljava/lang/String;)V

    .line 34
    const-string v0, "replyCount"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Comment;->setReplyCount(Ljava/lang/Integer;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/jingdong/common/entity/Comment;->prepareAttribute(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareAttribute(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 6
    .parameter "jsonObject"

    .prologue
    .line 57
    const-string v4, "attribute"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 59
    .local v0, arrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 72
    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v2

    .line 66
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONArrayOrNull(I)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 68
    .local v3, temp:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v3, :cond_2

    .line 69
    invoke-direct {p0, v3}, Lcom/jingdong/common/entity/Comment;->prepareAttributeFromJson(Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 66
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private prepareAttributeFromJson(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 8
    .parameter "temp"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    .line 88
    .local v4, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v4, :cond_3

    .line 115
    iget-object v6, p0, Lcom/jingdong/common/entity/Comment;->attribute:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 116
    iget-object v6, p0, Lcom/jingdong/common/entity/Comment;->attribute:Ljava/lang/StringBuffer;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_2
    iget-object v6, p0, Lcom/jingdong/common/entity/Comment;->attribute:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 97
    .local v1, childProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v1, :cond_4

    .line 94
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    :cond_4
    const-string v6, "k"

    invoke-virtual {v1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, key:Ljava/lang/String;
    const-string v6, "v"

    invoke-virtual {v1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 106
    const-string v6, "\t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
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
            "Lcom/jingdong/common/entity/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 128
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    move-object v1, v2

    .line 140
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    :goto_1
    return-object v1

    .line 130
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    .restart local v0       #i:I
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    :cond_0
    new-instance v3, Lcom/jingdong/common/entity/Comment;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/Comment;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 131
    .local v3, unit:Lcom/jingdong/common/entity/Comment;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    .end local v3           #unit:Lcom/jingdong/common/entity/Comment;
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    .restart local v0       #i:I
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Comment;>;"
    goto :goto_1
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->attribute:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 145
    const-string v0, ""

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->attribute:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInsertTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->insertTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->insertTime:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6682\u65e0\u53d1\u8868\u65f6\u95f4"

    goto :goto_0
.end method

.method public getReplyCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->replyCount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->replyCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScore()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->score:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->score:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->userName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Comment;->userName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6682\u65e0\u7528\u6237\u540d"

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/jingdong/common/entity/Comment;->attribute:Ljava/lang/StringBuffer;

    .line 152
    return-void
.end method

.method public setInsertTime(Ljava/lang/String;)V
    .locals 0
    .parameter "insertTime"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/jingdong/common/entity/Comment;->insertTime:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setReplyCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "replyCount"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/jingdong/common/entity/Comment;->replyCount:Ljava/lang/Integer;

    .line 184
    return-void
.end method

.method public setScore(Ljava/lang/Integer;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/jingdong/common/entity/Comment;->score:Ljava/lang/Integer;

    .line 160
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/jingdong/common/entity/Comment;->userName:Ljava/lang/String;

    .line 168
    return-void
.end method
