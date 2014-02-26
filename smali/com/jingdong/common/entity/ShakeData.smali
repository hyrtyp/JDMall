.class public Lcom/jingdong/common/entity/ShakeData;
.super Ljava/lang/Object;
.source "ShakeData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SHAKE_ACCEPT_SHARE:Ljava/lang/String; = "shake_accept_share"

.field public static final SHAKE_BEAN:I = 0x4

.field public static final SHAKE_COUPON:I = 0x3

.field public static final SHAKE_HOME_DATA_INFO:I = 0xa

.field public static final SHAKE_HOME_SHARE:Ljava/lang/String; = "shake_home_share"

.field public static final SHAKE_HOT_SKU:I = 0x7

.field public static final SHAKE_MORE:I = 0x6

.field public static final SHAKE_NOTHING:I = 0x5

.field public static final SHAKE_NO_OPPORTUNITY:I = 0x9

.field public static final SHAKE_SKU:I = 0x1

.field public static final SHAKE_SPECIAL_PRIZE:I = 0x8

.field public static final SHAKE_SPECIAL_SKU:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x66f1339f744aab76L


# instance fields
.field private bkgUrl:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/Long;

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

.field private isRank:I

.field private jdPrice:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private need_sms:Ljava/lang/Integer;

.field private rankUrl:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private shareIndexAnd:Ljava/lang/String;

.field private sharePrizeAnd:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private subtype:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/entity/ShakeData;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 3
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/jingdong/common/entity/ShakeData;->imageList:Ljava/util/List;

    .line 66
    if-nez p1, :cond_0

    .line 140
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 74
    :pswitch_2
    :try_start_0
    const-string v1, "wname"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setName(Ljava/lang/String;)V

    .line 75
    const-string v1, "jdPrice"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setJdPrice(Ljava/lang/String;)V

    .line 76
    const-string v1, "imageurl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/common/entity/ShakeData;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "wareId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setId(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_1
    const-string v1, "wname"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setName(Ljava/lang/String;)V

    .line 81
    const-string v1, "jdPrice"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setJdPrice(Ljava/lang/String;)V

    .line 82
    const-string v1, "imageurl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/common/entity/ShakeData;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "wareId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setId(Ljava/lang/Long;)V

    goto :goto_0

    .line 93
    :pswitch_4
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setTitle(Ljava/lang/String;)V

    .line 94
    const-string v1, "key"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setKey(Ljava/lang/String;)V

    .line 95
    const-string v1, "comment"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setComment(Ljava/lang/String;)V

    .line 96
    const-string v1, "subtype"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setSubtype(Ljava/lang/String;)V

    .line 97
    const-string v1, "scope"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setScope(Ljava/lang/String;)V

    .line 98
    const-string v1, "startTime"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setStartTime(Ljava/lang/String;)V

    .line 99
    const-string v1, "endTime"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setEndTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :pswitch_5
    const-string v1, "key"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setKey(Ljava/lang/String;)V

    .line 103
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setTitle(Ljava/lang/String;)V

    .line 106
    const-string v1, "subtype"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setSubtype(Ljava/lang/String;)V

    .line 107
    const-string v1, "comment"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setComment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :pswitch_6
    const-string v1, "comment"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setComment(Ljava/lang/String;)V

    .line 118
    const-string v1, "key"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setKey(Ljava/lang/String;)V

    .line 119
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setTitle(Ljava/lang/String;)V

    .line 120
    const-string v1, "imageurl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/common/entity/ShakeData;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "subtype"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setSubtype(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :pswitch_7
    const-string v1, "bkgUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setBkgUrl(Ljava/lang/String;)V

    .line 126
    const-string v1, "iconUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setIconUrl(Ljava/lang/String;)V

    .line 127
    const-string v1, "isRank"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setIsRank(I)V

    .line 128
    const-string v1, "rankUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setRankUrl(Ljava/lang/String;)V

    .line 129
    const-string v1, "shareIndexAnd"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setShareIndexAnd(Ljava/lang/String;)V

    .line 130
    const-string v1, "sharePrizeAnd"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeData;->setSharePrizeAnd(Ljava/lang/String;)V

    .line 131
    const-string v1, "shake_home_share"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/ShakeData;->getShareIndexAnd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/CommonUtil;->setShakeShareText(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "shake_accept_share"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/ShakeData;->getSharePrizeAnd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/CommonUtil;->setShakeShareText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_7
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
            "Lcom/jingdong/common/entity/ShakeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ShakeData;>;"
    if-nez p0, :cond_1

    .line 145
    const/4 v2, 0x0

    .line 156
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ShakeData;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 149
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ShakeData;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 150
    new-instance v3, Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/ShakeData;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 151
    .local v3, result:Lcom/jingdong/common/entity/ShakeData;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    .end local v3           #result:Lcom/jingdong/common/entity/ShakeData;
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBkgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->bkgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, ""

    .line 404
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->bkgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->endTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string v0, ""

    .line 393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->endTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, ""

    .line 415
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->iconUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImage()Lcom/jingdong/common/entity/Image;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->imageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Image;

    .line 235
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
    .line 349
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->imageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Image;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Image;->getSmall()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsRank()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/jingdong/common/entity/ShakeData;->isRank:I

    return v0
.end method

.method public getJdPrice()Ljava/lang/String;
    .locals 6

    .prologue
    .line 216
    const-string v1, "\u6682\u65e0\u62a5\u4ef7"

    .line 218
    .local v1, retsult:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/entity/ShakeData;->jdPrice:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/jingdong/common/entity/ShakeData;->jdPrice:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 220
    .local v0, f:Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 224
    .end local v0           #f:Ljava/lang/Double;
    :cond_0
    :goto_0
    return-object v1

    .line 220
    .restart local v0       #f:Ljava/lang/Double;
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 222
    .end local v0           #f:Ljava/lang/Double;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, ""

    .line 275
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6682\u65e0\u540d\u79f0"

    goto :goto_0
.end method

.method public getRankUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->rankUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, ""

    .line 434
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->rankUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->scope:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, ""

    .line 371
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->scope:Ljava/lang/String;

    goto :goto_0
.end method

.method public getShareIndexAnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->shareIndexAnd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const-string v0, ""

    .line 456
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->shareIndexAnd:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSharePrizeAnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->sharePrizeAnd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string v0, ""

    .line 445
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->sharePrizeAnd:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->startTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string v0, ""

    .line 382
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->startTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->subtype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, ""

    .line 360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->subtype:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, ""

    .line 264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBkgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "bkgUrl"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->bkgUrl:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->comment:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->endTime:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->iconUrl:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "wareId"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->id:Ljava/lang/Long;

    .line 258
    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "small"
    .parameter "big"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeData;->imageList:Ljava/util/List;

    new-instance v1, Lcom/jingdong/common/entity/Image;

    invoke-direct {v1, p1, p2}, Lcom/jingdong/common/entity/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
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
    .line 353
    .local p1, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->imageList:Ljava/util/List;

    .line 354
    return-void
.end method

.method public setIsRank(I)V
    .locals 0
    .parameter "isRank"

    .prologue
    .line 427
    iput p1, p0, Lcom/jingdong/common/entity/ShakeData;->isRank:I

    .line 428
    return-void
.end method

.method public setJdPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "jdPrice"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->jdPrice:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->key:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 9
    .parameter "name"

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->name:Ljava/lang/String;

    .line 212
    :goto_0
    return-void

    .line 172
    :cond_0
    :try_start_0
    const-string v7, "([^a-zA-Z0-9\uff08\uff09\\(\\) ])([a-zA-Z\uff08\\(])|([^ ])([\uff08\\(])|([\uff08\\(])([^ ])|([A-Z0-9])(\\-)|(\\-)([A-Z0-9])|([0-9]*[A-Z]+[0-9]*)([^a-zA-Z0-9\uff08\uff09\\(\\) ])"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 178
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 180
    .local v2, matcher:Ljava/util/regex/Matcher;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v6, stringBuffer:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    .line 205
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 206
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, result:Ljava/lang/String;
    iput-object v4, p0, Lcom/jingdong/common/entity/ShakeData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    .end local v4           #result:Ljava/lang/String;
    .end local v6           #stringBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->name:Ljava/lang/String;

    goto :goto_0

    .line 184
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #matcher:Ljava/util/regex/Matcher;
    .restart local v3       #pattern:Ljava/util/regex/Pattern;
    .restart local v6       #stringBuffer:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-le v1, v7, :cond_2

    .line 203
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 189
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 186
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setRankUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "rankUrl"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->rankUrl:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->scope:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setShareIndexAnd(Ljava/lang/String;)V
    .locals 0
    .parameter "shareIndexAnd"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->shareIndexAnd:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setSharePrizeAnd(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePrizeAnd"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->sharePrizeAnd:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->startTime:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0
    .parameter "subtype"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->subtype:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeData;->title:Ljava/lang/String;

    .line 269
    return-void
.end method
