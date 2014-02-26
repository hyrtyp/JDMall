.class public Lcom/jingdong/common/entity/Catelogy;
.super Ljava/lang/Object;
.source "Catelogy.java"


# static fields
.field public static final CATELOGY:I = 0x0

.field public static final CATELOGY_FILTER:I = 0x1

.field public static final CATELOGY_PROMOTION:I = 0x2

.field private static final DESTINATION_EBOOK_M:Ljava/lang/String; = "ebook_m"

.field private static final DESTINATION_JD_GAME_M:Ljava/lang/String; = "jdgame_to"

.field private static final DESTINATION_M_WITH_ACTION:Ljava/lang/String; = "_m"

.field private static final DESTINATION_M_WITH_TO:Ljava/lang/String; = "_to"


# instance fields
.field private action:Ljava/lang/String;

.field private cId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private destination:Ljava/lang/String;

.field private fId:Ljava/lang/String;

.field private field:Ljava/lang/String;

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

.field private imgUrl:Ljava/lang/String;

.field private jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private level:I

.field private name:Ljava/lang/String;

.field private orderSort:I

.field private promotionID:J

.field private wareNumber:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->imageList:Ljava/util/List;

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 3
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->imageList:Ljava/util/List;

    .line 91
    packed-switch p2, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 93
    :pswitch_0
    const-string v1, "cid"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->cId:Ljava/lang/String;

    .line 94
    const-string v1, "level"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/jingdong/common/entity/Catelogy;->level:I

    .line 95
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->name:Ljava/lang/String;

    .line 96
    const-string v1, "orderSort"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/jingdong/common/entity/Catelogy;->orderSort:I

    .line 97
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->imgUrl:Ljava/lang/String;

    .line 98
    const-string v1, "fid"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->fId:Ljava/lang/String;

    .line 99
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->description:Ljava/lang/String;

    .line 101
    const-string v1, "destination"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->destination:Ljava/lang/String;

    .line 102
    const-string v1, "action"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->action:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v1, "cid"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/Catelogy;->setcId(Ljava/lang/String;)V

    .line 112
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/Catelogy;->setName(Ljava/lang/String;)V

    .line 113
    const-string v1, "wareNumber"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/Catelogy;->setWareNumber(Ljava/lang/Integer;)V

    .line 114
    const-string v1, "filed"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/Catelogy;->setField(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v1, "catelogyId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/Catelogy;->setcId(Ljava/lang/String;)V

    .line 119
    const-string v1, "promotion_name"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/Catelogy;->setName(Ljava/lang/String;)V

    .line 120
    const-string v1, "promotion_info"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->description:Ljava/lang/String;

    .line 121
    const-string v1, "imageUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Catelogy;->imgUrl:Ljava/lang/String;

    .line 123
    :try_start_0
    const-string v1, "promotion_id"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jingdong/common/entity/Catelogy;->promotionID:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
            "Lcom/jingdong/common/entity/Catelogy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 149
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    move-object v2, v3

    .line 165
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    :goto_1
    return-object v2

    .line 151
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/Catelogy;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Lcom/jingdong/common/entity/Catelogy;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 152
    .local v0, catelogy:Lcom/jingdong/common/entity/Catelogy;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0           #catelogy:Lcom/jingdong/common/entity/Catelogy;
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    goto :goto_1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->action:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 297
    const-string v0, ""

    .line 299
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->action:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, ""

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->destination:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 286
    const-string v0, ""

    .line 288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->destination:Ljava/lang/String;

    goto :goto_0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/jingdong/common/entity/Image;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->imageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Image;

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 239
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/jingdong/common/entity/Catelogy;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, ""

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrderSort()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/jingdong/common/entity/Catelogy;->orderSort:I

    return v0
.end method

.method public getPromotionID()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/jingdong/common/entity/Catelogy;->promotionID:J

    return-wide v0
.end method

.method public getWareNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->wareNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->cId:Ljava/lang/String;

    return-object v0
.end method

.method public getfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->fId:Ljava/lang/String;

    return-object v0
.end method

.method public isGoToMWithAction()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->destination:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->destination:Ljava/lang/String;

    const-string v1, "_m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isGoToMWithTo()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->destination:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->destination:Ljava/lang/String;

    const-string v1, "_to"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWantedToEbookM()Z
    .locals 2

    .prologue
    .line 312
    const-string v0, "ebook_m"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Catelogy;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWantedToJDGame()Z
    .locals 2

    .prologue
    .line 321
    const-string v0, "jdgame_to"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/Catelogy;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->action:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->description:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 0
    .parameter "destination"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->destination:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0
    .parameter "field"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->field:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "small"
    .parameter "big"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jingdong/common/entity/Catelogy;->imageList:Ljava/util/List;

    new-instance v1, Lcom/jingdong/common/entity/Image;

    invoke-direct {v1, p1, p2}, Lcom/jingdong/common/entity/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
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
    .line 243
    .local p1, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->imageList:Ljava/util/List;

    .line 244
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imgUrl"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->imgUrl:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 192
    iput p1, p0, Lcom/jingdong/common/entity/Catelogy;->level:I

    .line 193
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->name:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setOrderSort(I)V
    .locals 0
    .parameter "orderSort"

    .prologue
    .line 200
    iput p1, p0, Lcom/jingdong/common/entity/Catelogy;->orderSort:I

    .line 201
    return-void
.end method

.method public setPromotionID(J)V
    .locals 0
    .parameter "promotionID"

    .prologue
    .line 270
    iput-wide p1, p0, Lcom/jingdong/common/entity/Catelogy;->promotionID:J

    .line 271
    return-void
.end method

.method public setWareNumber(Ljava/lang/Integer;)V
    .locals 0
    .parameter "wareNumber"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->wareNumber:Ljava/lang/Integer;

    .line 209
    return-void
.end method

.method public setcId(Ljava/lang/String;)V
    .locals 0
    .parameter "cId"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->cId:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setfId(Ljava/lang/String;)V
    .locals 0
    .parameter "fId"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/jingdong/common/entity/Catelogy;->fId:Ljava/lang/String;

    .line 263
    return-void
.end method
