.class public Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
.super Ljava/lang/Object;
.source "ProductDetailCruxBasicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x64caee0fdb6c8d9eL


# instance fields
.field private adword:Ljava/lang/String;

.field private comNum:Ljava/lang/String;

.field private consult:Ljava/lang/Boolean;

.field private cousultNum:Ljava/lang/String;

.field private downPrice:Ljava/lang/Boolean;

.field private gift:Ljava/lang/Boolean;

.field private good:Ljava/lang/String;

.field private isPostByJd:Ljava/lang/Boolean;

.field private isStore:Ljava/lang/Boolean;

.field private orderNum:Ljava/lang/String;

.field private proInfo:Ljava/lang/String;

.field private proTitle:Ljava/lang/String;

.field private read:Ljava/lang/Boolean;

.field private readUrl:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private shopInfo:Ljava/lang/String;

.field private suit:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsObject"
    .parameter "functionId"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    packed-switch p2, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 200
    :pswitch_0
    const-string v0, "consult"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setConsult(Ljava/lang/Boolean;)V

    .line 201
    const-string v0, "read"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setRead(Ljava/lang/Boolean;)V

    .line 202
    const-string v0, "adword"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setAdword(Ljava/lang/String;)V

    .line 203
    const-string v0, "proInfo"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setProInfo(Ljava/lang/String;)V

    .line 204
    const-string v0, "service"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setService(Ljava/lang/String;)V

    .line 205
    const-string v0, "comNum"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setComNum(Ljava/lang/String;)V

    .line 206
    const-string v0, "orderNum"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setOrderNum(Ljava/lang/String;)V

    .line 207
    const-string v0, "cousultNum"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setCousultNum(Ljava/lang/String;)V

    .line 208
    const-string v0, "score"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setScore(Ljava/lang/String;)V

    .line 209
    const-string v0, "good"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setGood(Ljava/lang/String;)V

    .line 210
    const-string v0, "shopInfo"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setShopInfo(Ljava/lang/String;)V

    .line 211
    const-string v0, "proTitle"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setProTitle(Ljava/lang/String;)V

    .line 212
    const-string v0, "readUrl"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setReadUrl(Ljava/lang/String;)V

    .line 213
    const-string v0, "suit"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setSuit(Ljava/lang/Boolean;)V

    .line 214
    const-string v0, "isStore"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setStore(Ljava/lang/Boolean;)V

    .line 215
    const-string v0, "gift"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setGift(Ljava/lang/Boolean;)V

    .line 216
    const-string v0, "isPostByJd"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setIsPostByJd(Ljava/lang/Boolean;)V

    .line 217
    const-string v0, "downPrice"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->setDownPrice(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAdword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->adword:Ljava/lang/String;

    return-object v0
.end method

.method public getComNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->comNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCousultNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->cousultNum:Ljava/lang/String;

    return-object v0
.end method

.method public getDownPrice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->downPrice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->downPrice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getGood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->good:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPostByJd()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isPostByJd:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isPostByJd:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getOrderNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->orderNum:Ljava/lang/String;

    return-object v0
.end method

.method public getProInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->proInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getProTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->proTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getReadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->readUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->service:Ljava/lang/String;

    return-object v0
.end method

.method public getShopInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->shopInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isConsult()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->consult:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->consult:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isGift()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->gift:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->gift:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->read:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->read:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isStore()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isStore:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isStore:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isSuit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->suit:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->suit:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setAdword(Ljava/lang/String;)V
    .locals 0
    .parameter "adword"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->adword:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setComNum(Ljava/lang/String;)V
    .locals 0
    .parameter "comNum"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->comNum:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setConsult(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "consult"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->consult:Ljava/lang/Boolean;

    .line 52
    return-void
.end method

.method public setCousultNum(Ljava/lang/String;)V
    .locals 0
    .parameter "cousultNum"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->cousultNum:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setDownPrice(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "downPrice"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->downPrice:Ljava/lang/Boolean;

    .line 191
    return-void
.end method

.method public setGift(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "gift"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->gift:Ljava/lang/Boolean;

    .line 183
    return-void
.end method

.method public setGood(Ljava/lang/String;)V
    .locals 0
    .parameter "good"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->good:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setIsPostByJd(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isPostByJd"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isPostByJd:Ljava/lang/Boolean;

    .line 41
    return-void
.end method

.method public setOrderNum(Ljava/lang/String;)V
    .locals 0
    .parameter "orderNum"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->orderNum:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setProInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "proInfo"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->proInfo:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setProTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "proTitle"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->proTitle:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setRead(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "read"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->read:Ljava/lang/Boolean;

    .line 63
    return-void
.end method

.method public setReadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "readUrl"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->readUrl:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->score:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->service:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setShopInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "shopInfo"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->shopInfo:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setStore(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isStore"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isStore:Ljava/lang/Boolean;

    .line 173
    return-void
.end method

.method public setSuit(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "suit"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->suit:Ljava/lang/Boolean;

    .line 162
    return-void
.end method
