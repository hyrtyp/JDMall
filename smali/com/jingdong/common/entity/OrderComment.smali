.class public Lcom/jingdong/common/entity/OrderComment;
.super Ljava/lang/Object;
.source "OrderComment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DETAIL_REPLY:I = 0x2

.field public static final ORDER_COMMENT:I = 0x0

.field public static final ORDER_COMMENT_DETAIL:I = 0x1


# instance fields
.field private content:Ljava/lang/String;

.field private creationTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;"
        }
    .end annotation
.end field

.field private replyCount:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalCount:Ljava/lang/Integer;

.field private userId:Ljava/lang/String;

.field private viewCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->imageList:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jingdong/common/entity/OrderComment;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONArrayPoxy;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONArrayPoxy;I)V
    .locals 5
    .parameter "jsonObject"
    .parameter "jsonImageArray"
    .parameter "functionId"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/jingdong/common/entity/OrderComment;->imageList:Ljava/util/List;

    .line 67
    packed-switch p3, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setTitle(Ljava/lang/String;)V

    .line 70
    const-string v4, "replyCount"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setReplyCount(Ljava/lang/Integer;)V

    .line 71
    const-string v4, "viewCount"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setViewCount(Ljava/lang/Integer;)V

    .line 72
    const-string v4, "userId"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setUserId(Ljava/lang/String;)V

    .line 73
    const-string v4, "creationTime"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setCreationTime(Ljava/lang/String;)V

    .line 74
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v4, "content"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setContent(Ljava/lang/String;)V

    .line 78
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setTitle(Ljava/lang/String;)V

    .line 79
    const-string v4, "replyCount"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setReplyCount(Ljava/lang/Integer;)V

    .line 80
    const-string v4, "viewCount"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setViewCount(Ljava/lang/Integer;)V

    .line 81
    const-string v4, "userId"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setUserId(Ljava/lang/String;)V

    .line 82
    const-string v4, "creationTime"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setCreationTime(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 109
    .end local v1           #i:I
    :pswitch_2
    const-string v4, "content"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setContent(Ljava/lang/String;)V

    .line 110
    const-string v4, "creationTime"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setCreationTime(Ljava/lang/String;)V

    .line 111
    const-string v4, "replyCount"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setReplyCount(Ljava/lang/Integer;)V

    .line 112
    const-string v4, "totalCount"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setTotalCount(Ljava/lang/Integer;)V

    .line 113
    const-string v4, "userId"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setUserId(Ljava/lang/String;)V

    .line 114
    const-string v4, "viewCount"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/OrderComment;->setViewCount(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 85
    .restart local v1       #i:I
    :cond_0
    :try_start_0
    invoke-virtual {p2, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 86
    .local v3, jsonImage:Lorg/json/JSONObject;
    new-instance v2, Lcom/jingdong/common/entity/Image;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/Image;-><init>(Lorg/json/JSONObject;I)V

    .line 87
    .local v2, image:Lcom/jingdong/common/entity/Image;
    iget-object v4, p0, Lcom/jingdong/common/entity/OrderComment;->imageList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2           #image:Lcom/jingdong/common/entity/Image;
    .end local v3           #jsonImage:Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 231
    .local v2, outSteam:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 232
    .local v0, buffer:[B
    const/4 v1, -0x1

    .line 233
    .local v1, len:I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 236
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 237
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 238
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 234
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
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
            "Lcom/jingdong/common/entity/OrderComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 131
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    move-object v1, v2

    .line 144
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    :goto_1
    return-object v1

    .line 133
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    .restart local v0       #i:I
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    :cond_0
    new-instance v3, Lcom/jingdong/common/entity/OrderComment;

    .line 134
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 133
    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/OrderComment;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 135
    .local v3, orderComment:Lcom/jingdong/common/entity/OrderComment;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    .end local v3           #orderComment:Lcom/jingdong/common/entity/OrderComment;
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    .restart local v0       #i:I
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    goto :goto_1
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->creationTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->creationTime:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6682\u65e0\u6652\u5355\u65f6\u95f4"

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getReplyCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->replyCount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->replyCount:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0\u56de\u590d"

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6682\u65e0\u6807\u9898"

    goto :goto_0
.end method

.method public getTotalCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->totalCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->userId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6682\u65e0\u4f5c\u8005\u540d"

    goto :goto_0
.end method

.method public getViewCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->viewCount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/OrderComment;->viewCount:Ljava/lang/Integer;

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

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderComment;->content:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setCreationTime(Ljava/lang/String;)V
    .locals 0
    .parameter "creationTime"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderComment;->creationTime:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderComment;->id:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setImageList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, imagesList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderComment;->imageList:Ljava/util/List;

    .line 220
    return-void
.end method

.method public setReplyCount(Ljava/lang/Integer;)V
    .locals 2
    .parameter "replyCount"

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 162
    const-string v1, "\u56de\u590d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/OrderComment;->replyCount:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderComment;->title:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setTotalCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "totalCount"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderComment;->totalCount:Ljava/lang/Integer;

    .line 212
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderComment;->userId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setViewCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "viewCount"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderComment;->viewCount:Ljava/lang/Integer;

    .line 172
    return-void
.end method
