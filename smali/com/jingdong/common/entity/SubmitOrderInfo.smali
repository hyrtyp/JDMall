.class public Lcom/jingdong/common/entity/SubmitOrderInfo;
.super Ljava/lang/Object;
.source "SubmitOrderInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SUBMIT_ORDER:I = 0x0

.field private static final serialVersionUID:J = 0x39fd37face595d3eL


# instance fields
.field private captchaCode:Ljava/lang/String;

.field private captchaKey:Ljava/lang/String;

.field private captchaUrl:Ljava/lang/String;

.field private factPrice:Ljava/lang/Integer;

.field private feedBackMsg:Ljava/lang/String;

.field private flag:Ljava/lang/Boolean;

.field private idCompanyBranch:Ljava/lang/Integer;

.field private idPaymentType:Ljava/lang/Integer;

.field private isIdTown:Ljava/lang/Boolean;

.field private isOnlinePay:Ljava/lang/Boolean;

.field private message:Ljava/lang/String;

.field private messageType:Ljava/lang/Integer;

.field private orderId:Ljava/lang/String;

.field private orderType:Ljava/lang/Integer;

.field private price:Ljava/lang/Integer;

.field private submitSkuNum:Ljava/lang/Integer;

.field private useBalance:Ljava/lang/Integer;

.field private useScore:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 0
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 71
    return-void
.end method


# virtual methods
.method public getCaptchaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->captchaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->captchaKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->captchaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFactPrice()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->factPrice:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFeedBackMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->feedBackMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->flag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIdCompanyBranch()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->idCompanyBranch:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdPaymentType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->idPaymentType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsIdTown()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->isIdTown:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->isIdTown:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getIsOnlinePay()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->isOnlinePay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->messageType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->orderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->price:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubmitSkuNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->submitSkuNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUseBalance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->useBalance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUseScore()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->useScore:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCaptchaCode(Ljava/lang/String;)V
    .locals 0
    .parameter "captchaCode"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->captchaCode:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCaptchaKey(Ljava/lang/String;)V
    .locals 0
    .parameter "captchaKey"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->captchaKey:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setCaptchaUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "captchaUrl"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->captchaUrl:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setFactPrice(Ljava/lang/Integer;)V
    .locals 0
    .parameter "factPrice"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->factPrice:Ljava/lang/Integer;

    .line 182
    return-void
.end method

.method public setFeedBackMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "feedBackMsg"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->feedBackMsg:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setFlag(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->flag:Ljava/lang/Boolean;

    .line 166
    return-void
.end method

.method public setIdCompanyBranch(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idCompanyBranch"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->idCompanyBranch:Ljava/lang/Integer;

    .line 198
    return-void
.end method

.method public setIdPaymentType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idPaymentType"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->idPaymentType:Ljava/lang/Integer;

    .line 174
    return-void
.end method

.method public setIsIdTown(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isIdTown"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->isIdTown:Ljava/lang/Boolean;

    .line 249
    return-void
.end method

.method public setIsOnlinePay(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isOnlinePay"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->isOnlinePay:Ljava/lang/Boolean;

    .line 158
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->message:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setMessageType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "messageType"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->messageType:Ljava/lang/Integer;

    .line 190
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .parameter "orderId"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->orderId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setOrderType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "orderType"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->orderType:Ljava/lang/Integer;

    .line 214
    return-void
.end method

.method public setPrice(Ljava/lang/Integer;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->price:Ljava/lang/Integer;

    .line 222
    return-void
.end method

.method public setSubmitSkuNum(Ljava/lang/Integer;)V
    .locals 0
    .parameter "submitSkuNum"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->submitSkuNum:Ljava/lang/Integer;

    .line 230
    return-void
.end method

.method public setUseBalance(Ljava/lang/Integer;)V
    .locals 0
    .parameter "useBalance"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->useBalance:Ljava/lang/Integer;

    .line 206
    return-void
.end method

.method public setUseScore(Ljava/lang/Integer;)V
    .locals 0
    .parameter "useScore"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->useScore:Ljava/lang/Integer;

    .line 238
    return-void
.end method

.method public update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 2
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 75
    packed-switch p2, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const-string v1, "coMsg"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->feedBackMsg:Ljava/lang/String;

    .line 78
    const-string v1, "onlinePay"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/SubmitOrderInfo;->isOnlinePay:Ljava/lang/Boolean;

    .line 79
    const-string v1, "submitOrder"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 80
    .local v0, submitJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 81
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setCaptchaUrl(Ljava/lang/String;)V

    .line 82
    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setMessage(Ljava/lang/String;)V

    .line 83
    const-string v1, "OrderId"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 84
    const-string v1, "Flag"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setFlag(Ljava/lang/Boolean;)V

    .line 85
    const-string v1, "UseScore"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setUseScore(Ljava/lang/Integer;)V

    .line 86
    const-string v1, "SubmitSkuNum"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setSubmitSkuNum(Ljava/lang/Integer;)V

    .line 87
    const-string v1, "Price"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setPrice(Ljava/lang/Integer;)V

    .line 88
    const-string v1, "OrderType"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setOrderType(Ljava/lang/Integer;)V

    .line 89
    const-string v1, "UseBalance"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setUseBalance(Ljava/lang/Integer;)V

    .line 90
    const-string v1, "IdCompanyBranch"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setIdCompanyBranch(Ljava/lang/Integer;)V

    .line 91
    const-string v1, "MessageType"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setMessageType(Ljava/lang/Integer;)V

    .line 92
    const-string v1, "FactPrice"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setFactPrice(Ljava/lang/Integer;)V

    .line 93
    const-string v1, "IdPaymentType"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setIdPaymentType(Ljava/lang/Integer;)V

    .line 95
    const-string v1, "isIdTown"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setIsIdTown(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
