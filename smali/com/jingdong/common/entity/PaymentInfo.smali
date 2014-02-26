.class public Lcom/jingdong/common/entity/PaymentInfo;
.super Ljava/lang/Object;
.source "PaymentInfo.java"


# static fields
.field public static final GET_BY_SELF:I = 0x3

.field public static final PAY_AFTER_RECEIVE:I = 0x1

.field public static final PAY_ONLINE:I = 0x4

.field public static final POST:I = 0x2

.field public static final get_by_self:Ljava/lang/String; = "\u5230\u4eac\u4e1c\u81ea\u63d0"

.field public static final pay_after_receive:Ljava/lang/String; = "\u8d27\u5230\u4ed8\u6b3e"

.field public static final post:Ljava/lang/String; = "\u90ae\u5c40\u6c47\u6b3e"


# instance fields
.field private jbGet_By_Self:Lorg/json/JSONObject;

.field private jbPay_After_Receive:Lorg/json/JSONObject;

.field private jbPaymentDetailInfos:Lorg/json/JSONArray;

.field private jbPaymentTypes:Lorg/json/JSONArray;

.field private jbPost:Lorg/json/JSONObject;

.field private jbPostAddrArray:Lorg/json/JSONArray;

.field private jbShipments:Lorg/json/JSONObject;

.field private jdPay_OnLine:Lorg/json/JSONObject;

.field public nSelected:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    .line 30
    iput v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 43
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPostAddrArray:Lorg/json/JSONArray;

    .line 44
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentDetailInfos:Lorg/json/JSONArray;

    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentTypes:Lorg/json/JSONArray;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPay_After_Receive:Lorg/json/JSONObject;

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbGet_By_Self:Lorg/json/JSONObject;

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPost:Lorg/json/JSONObject;

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbShipments:Lorg/json/JSONObject;

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jdPay_OnLine:Lorg/json/JSONObject;

    .line 51
    return-void
.end method

.method private getPayOnLine()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jdPay_OnLine:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getPaymentName(I)Ljava/lang/String;
    .locals 1
    .parameter "type_code"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, back:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 184
    :goto_0
    return-object v0

    .line 172
    :pswitch_0
    const-string v0, "\u8d27\u5230\u4ed8\u6b3e"

    .line 173
    goto :goto_0

    .line 175
    :pswitch_1
    const-string v0, "\u5230\u4eac\u4e1c\u81ea\u63d0"

    .line 176
    goto :goto_0

    .line 178
    :pswitch_2
    const-string v0, "\u90ae\u5c40\u6c47\u6b3e"

    .line 179
    goto :goto_0

    .line 181
    :pswitch_3
    const-string v0, "\u5728\u7ebf\u652f\u4ed8"

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setPayOnline(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "payInfo"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->jdPay_OnLine:Lorg/json/JSONObject;

    .line 138
    return-void
.end method


# virtual methods
.method public getBySelf()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbGet_By_Self:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPayAfterReceive()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPay_After_Receive:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPayMentType(I)Lorg/json/JSONObject;
    .locals 1
    .parameter "index"

    .prologue
    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v0, temp:Lorg/json/JSONObject;
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/PaymentInfo;->getPayAfterReceive()Lorg/json/JSONObject;

    move-result-object v0

    .line 147
    goto :goto_0

    .line 149
    :pswitch_1
    invoke-direct {p0}, Lcom/jingdong/common/entity/PaymentInfo;->getPayOnLine()Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    goto :goto_0

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Lcom/jingdong/common/entity/PaymentInfo;->getBySelf()Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    goto :goto_0

    .line 156
    :pswitch_3
    invoke-virtual {p0}, Lcom/jingdong/common/entity/PaymentInfo;->getPost()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getPaymentDetailInfos()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentDetailInfos:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPaymentTypes()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentTypes:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPost()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPost:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPostArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPostAddrArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getSel()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    goto :goto_0
.end method

.method public getSelectedPaymentType(I)Lorg/json/JSONObject;
    .locals 4
    .parameter "type"

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, temp:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentTypes:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 111
    :cond_0
    return-object v2

    .line 97
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    .end local v2           #temp:Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .restart local v2       #temp:Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentTypes:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 100
    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, p1, :cond_0

    .line 94
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getShipments()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbShipments:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setGetBySelf(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "get_by_self"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbGet_By_Self:Lorg/json/JSONObject;

    .line 209
    return-void
.end method

.method public setPayAfterReceive(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "pay_after_receive"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPay_After_Receive:Lorg/json/JSONObject;

    .line 199
    return-void
.end method

.method public setPayMentType(ILorg/json/JSONObject;)V
    .locals 0
    .parameter "index"
    .parameter "payInfo"

    .prologue
    .line 116
    iput p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/jingdong/common/entity/PaymentInfo;->setPayAfterReceive(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/jingdong/common/entity/PaymentInfo;->setPayOnline(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 126
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/jingdong/common/entity/PaymentInfo;->setGetBySelf(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 131
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/jingdong/common/entity/PaymentInfo;->setPost(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPaymentDetailInfos(Lorg/json/JSONArray;)V
    .locals 1
    .parameter "PaymentDetailInfos"

    .prologue
    .line 72
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentDetailInfos:Lorg/json/JSONArray;

    .line 73
    iput-object p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentDetailInfos:Lorg/json/JSONArray;

    .line 74
    return-void
.end method

.method public setPaymentTypes(Lorg/json/JSONArray;)V
    .locals 1
    .parameter "jbptinfo"

    .prologue
    .line 81
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentTypes:Lorg/json/JSONArray;

    .line 82
    iput-object p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPaymentTypes:Lorg/json/JSONArray;

    .line 83
    return-void
.end method

.method public setPost(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "post"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPost:Lorg/json/JSONObject;

    .line 219
    return-void
.end method

.method public setPostArray(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "post"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbPostAddrArray:Lorg/json/JSONArray;

    .line 64
    return-void
.end method

.method public setSel(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 188
    iput p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 189
    return-void
.end method

.method public setShipments(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "Shipments"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jingdong/common/entity/PaymentInfo;->jbShipments:Lorg/json/JSONObject;

    .line 55
    return-void
.end method
