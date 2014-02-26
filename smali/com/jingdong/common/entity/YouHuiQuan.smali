.class public Lcom/jingdong/common/entity/YouHuiQuan;
.super Ljava/lang/Object;
.source "YouHuiQuan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;,
        Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;,
        Lcom/jingdong/common/entity/YouHuiQuan$liPinKa;
    }
.end annotation


# instance fields
.field public Coupons:Lorg/json/JSONObject;

.field private final DONG_QUAN:I

.field private final JING_QUAN:I

.field private final LI_PIN_KA:I

.field public LipinKas:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/common/entity/YouHuiQuan;->JING_QUAN:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/jingdong/common/entity/YouHuiQuan;->DONG_QUAN:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/common/entity/YouHuiQuan;->LI_PIN_KA:I

    .line 17
    return-void
.end method


# virtual methods
.method public getJingDongQuanDetailInfo(I)Lorg/json/JSONObject;
    .locals 1
    .parameter "type"

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    sget-object v0, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->jbJingQuanInfo:Lorg/json/JSONObject;

    goto :goto_0

    .line 109
    :pswitch_1
    sget-object v0, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->jbDongQuanInfo:Lorg/json/JSONObject;

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getJingDongQuanTotalCount(I)I
    .locals 1
    .parameter "quanType"

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 44
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 40
    :pswitch_0
    sget v0, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->nTotalCount:I

    goto :goto_0

    .line 42
    :pswitch_1
    sget v0, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->nTotalCount:I

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getJingDongQuanUsedCount(I)I
    .locals 1
    .parameter "quanType"

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 64
    :pswitch_0
    sget v0, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->nUsedCount:I

    goto :goto_0

    .line 66
    :pswitch_1
    sget v0, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->nUsedCount:I

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLiPinKaInfo()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/jingdong/common/entity/YouHuiQuan$liPinKa;->jbLiPinKaInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLiPinKaTotalMoney()D
    .locals 2

    .prologue
    .line 78
    sget-wide v0, Lcom/jingdong/common/entity/YouHuiQuan$liPinKa;->nTotalBalance:D

    return-wide v0
.end method

.method public getLiPinKaUsedBalance()D
    .locals 2

    .prologue
    .line 87
    sget-wide v0, Lcom/jingdong/common/entity/YouHuiQuan$liPinKa;->nUsedBalance:D

    return-wide v0
.end method

.method public setJingDongQuanDetailInfo(ILorg/json/JSONObject;)V
    .locals 0
    .parameter "type"
    .parameter "JDQuanInfo"

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 95
    :pswitch_0
    sput-object p2, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->jbJingQuanInfo:Lorg/json/JSONObject;

    .line 97
    :pswitch_1
    sput-object p2, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->jbDongQuanInfo:Lorg/json/JSONObject;

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setJingDongQuanTotalCount(II)V
    .locals 0
    .parameter "quanType"
    .parameter "tcount"

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 34
    :goto_0
    return-void

    .line 28
    :pswitch_0
    sput p2, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->nTotalCount:I

    goto :goto_0

    .line 31
    :pswitch_1
    sput p2, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->nTotalCount:I

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setJingDongQuanUsedCount(II)V
    .locals 0
    .parameter "quanType"
    .parameter "count"

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 52
    :pswitch_0
    sput p2, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->nUsedCount:I

    goto :goto_0

    .line 55
    :pswitch_1
    sput p2, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->nUsedCount:I

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLiPinKaInfo(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jbLiPinInfo"

    .prologue
    .line 117
    sput-object p1, Lcom/jingdong/common/entity/YouHuiQuan$liPinKa;->jbLiPinKaInfo:Lorg/json/JSONObject;

    .line 118
    return-void
.end method

.method public setLiPinKaTotalMoney(D)V
    .locals 0
    .parameter "howmuch"

    .prologue
    .line 74
    sput-wide p1, Lcom/jingdong/common/entity/YouHuiQuan$liPinKa;->nTotalBalance:D

    .line 75
    return-void
.end method

.method public setLiPinKaUsedBalance(D)V
    .locals 0
    .parameter "balance"

    .prologue
    .line 83
    sput-wide p1, Lcom/jingdong/common/entity/YouHuiQuan$liPinKa;->nUsedBalance:D

    .line 84
    return-void
.end method
