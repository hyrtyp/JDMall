.class public Lcom/jingdong/common/entity/MessageDetail;
.super Lcom/jingdong/common/entity/MessageListItem;
.source "MessageDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASK_REPLY_CONTENT_KEY:Ljava/lang/String; = "content"

.field public static final ASK_REPLY_PIN_KEY:Ljava/lang/String; = "pin"

.field public static final ASK_REPLY_REPLY_TIME_KEY:Ljava/lang/String; = "replyDate"

.field public static final ASK_REPLY_TITLE_KEY:Ljava/lang/String; = "title"

.field public static final ASK_REPLY_WARE_ID_KEY:Ljava/lang/String; = "wareId"

.field public static final ASK_REPLY_WARE_NAME_KEY:Ljava/lang/String; = "wname"

.field public static final MESSAG_LIST_ITEM_KEY:Ljava/lang/String; = "msgDetail"

.field public static final MESSA_COMMMON_KEY:Ljava/lang/String; = "common"

.field public static final MESSA_OTHER_KEY:Ljava/lang/String; = "others"

.field public static final NEW_PRICE_KEY:Ljava/lang/String; = "newPrice"

.field public static final OLD_PRICE_KEY:Ljava/lang/String; = "oldPrice"

.field public static final ORDER_ID_KEY:Ljava/lang/String; = "orderId"

.field public static final PRODUCT_AD_WORAD_KEY:Ljava/lang/String; = "adword"

.field public static final PRODUCT_ID_KEY:Ljava/lang/String; = "wareId"

.field public static final PRODUCT_IMAGE_URL_KEY:Ljava/lang/String; = "imageurl"

.field public static final PRODUCT_NAME_KEY:Ljava/lang/String; = "wname"

.field public static final PRODUCT_URL_KEY:Ljava/lang/String; = "productURL"

.field public static final PUBC_NUM_KEY:Ljava/lang/String; = "pubcNum"

.field private static final serialVersionUID:J = 0xae95989bc8b4c8eL


# instance fields
.field private askReplyContent:Ljava/lang/String;

.field private askReplyPin:Ljava/lang/String;

.field private askReplyTime:Ljava/lang/String;

.field private askReplyTitle:Ljava/lang/String;

.field private isHasAction:Z

.field private newPrice:Ljava/lang/String;

.field private oldPrice:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private productAdWard:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productImageUrl:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productUrl:Ljava/lang/String;

.field private pubcNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "itemProxy"
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, p1}, Lcom/jingdong/common/entity/MessageListItem;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/entity/MessageDetail;->isHasAction:Z

    .line 65
    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageDetail;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/MessageDetail;->setHasAction(Z)V

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 114
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/MessageDetail;->setHasAction(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageDetail;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 101
    :pswitch_1
    const-string v0, "content"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setAskReplyContent(Ljava/lang/String;)V

    .line 102
    const-string v0, "pin"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setAskReplyPin(Ljava/lang/String;)V

    .line 103
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setAskReplyTitle(Ljava/lang/String;)V

    .line 104
    const-string v0, "replyDate"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setAskReplyTime(Ljava/lang/String;)V

    .line 105
    const-string v0, "wareId"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductId(Ljava/lang/String;)V

    .line 106
    const-string v0, "adword"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductAdWard(Ljava/lang/String;)V

    .line 107
    const-string v0, "imageurl"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductImageUrl(Ljava/lang/String;)V

    .line 108
    const-string v0, "wname"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductName(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    const-string v0, "newPrice"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setNewPrice(Ljava/lang/String;)V

    .line 78
    const-string v0, "oldPrice"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setOldPrice(Ljava/lang/String;)V

    .line 79
    const-string v0, "wareId"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductId(Ljava/lang/String;)V

    .line 80
    const-string v0, "wname"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductName(Ljava/lang/String;)V

    .line 81
    const-string v0, "productURL"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductUrl(Ljava/lang/String;)V

    .line 82
    const-string v0, "adword"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductAdWard(Ljava/lang/String;)V

    .line 83
    const-string v0, "imageurl"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :pswitch_3
    const-string v0, "orderId"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setOrderId(Ljava/lang/String;)V

    .line 89
    const-string v0, "pubcNum"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setPubcNum(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :pswitch_4
    const-string v0, "wareId"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductId(Ljava/lang/String;)V

    .line 94
    const-string v0, "wname"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductName(Ljava/lang/String;)V

    .line 95
    const-string v0, "productURL"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductUrl(Ljava/lang/String;)V

    .line 96
    const-string v0, "adword"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductAdWard(Ljava/lang/String;)V

    .line 97
    const-string v0, "imageurl"

    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageDetail;->setProductImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAskReplyContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->askReplyContent:Ljava/lang/String;

    return-object v0
.end method

.method public getAskReplyPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->askReplyPin:Ljava/lang/String;

    return-object v0
.end method

.method public getAskReplyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->askReplyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getAskReplyTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->askReplyTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->newPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOldPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->oldPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductAdWard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->productAdWard:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 201
    const-string v0, ""

    .line 203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->productAdWard:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->productImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->productName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    const-string v0, ""

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->productName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProductUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->productUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPubcNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageDetail;->pubcNum:Ljava/lang/String;

    return-object v0
.end method

.method public isHasAction()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/jingdong/common/entity/MessageDetail;->isHasAction:Z

    return v0
.end method

.method public setAskReplyContent(Ljava/lang/String;)V
    .locals 0
    .parameter "askReplyContent"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->askReplyContent:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setAskReplyPin(Ljava/lang/String;)V
    .locals 0
    .parameter "askReplyPin"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->askReplyPin:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setAskReplyTime(Ljava/lang/String;)V
    .locals 0
    .parameter "askReplyTime"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->askReplyTime:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setAskReplyTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "askReplyTitle"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->askReplyTitle:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setHasAction(Z)V
    .locals 0
    .parameter "isHasAction"

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/jingdong/common/entity/MessageDetail;->isHasAction:Z

    .line 232
    return-void
.end method

.method public setNewPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "newPrice"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->newPrice:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setOldPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "oldPrice"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->oldPrice:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .parameter "orderId"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->orderId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setProductAdWard(Ljava/lang/String;)V
    .locals 0
    .parameter "productAdWard"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->productAdWard:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .parameter "productId"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->productId:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setProductImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "productImageUrl"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->productImageUrl:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .parameter "productName"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->productName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setProductUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "productUrl"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->productUrl:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setPubcNum(Ljava/lang/String;)V
    .locals 0
    .parameter "pubcNum"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageDetail;->pubcNum:Ljava/lang/String;

    .line 173
    return-void
.end method
