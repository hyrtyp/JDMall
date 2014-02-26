.class public Lcom/jd/lottery/lib/model/BetRequest;
.super Lcom/jd/lottery/lib/model/RequestEntity;
.source "BetRequest.java"


# static fields
.field private static final PREFIX_APPENDINFO:Ljava/lang/String; = "appendinfo"

.field private static final PREFIX_ORDERINFO:Ljava/lang/String; = "orderinfo"

.field private static final PREFIX_USERINFO:Ljava/lang/String; = "user"

.field private static final serialVersionUID:J = -0x2e48f2484771a7fL


# instance fields
.field public appendIssueinfo:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "appendinfo->\u001dappendissueinfo"
    .end annotation
.end field

.field public buyFrom:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dbuyfrom"
    .end annotation
.end field

.field public childPlaytype:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dchildplaytype"
        optional = true
    .end annotation
.end field

.field public couponIds:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dcouponIds"
    .end annotation
.end field

.field public fullName:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "user->\u001dfullname"
    .end annotation
.end field

.field public idcardNumber:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "user->\u001didcardnumber"
    .end annotation
.end field

.field public issueId:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dissueid"
    .end annotation
.end field

.field public issueName:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dissuename"
    .end annotation
.end field

.field public lotteryCategory:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dlotterycategory"
    .end annotation
.end field

.field public lotteryNumber:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dlotterynumber"
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "user->\u001dmobile"
    .end annotation
.end field

.field public multi:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dmulti"
    .end annotation
.end field

.field public orderType:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dordertype"
    .end annotation
.end field

.field public payPassword:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dpaypassword"
    .end annotation
.end field

.field public payType:Lcom/jd/lottery/lib/data/Constants$PayType;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dpaytype"
    .end annotation
.end field

.field public pin:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dpin"
    .end annotation
.end field

.field public planType:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "appendinfo->\u001dplantype"
    .end annotation
.end field

.field public stopAward:J
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "appendinfo->\u001dstopaward"
    .end annotation
.end field

.field public stopflag:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "appendinfo->\u001dstopflag"
    .end annotation
.end field

.field public totalFee:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dtotalfee"
    .end annotation
.end field

.field public totalStake:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "orderinfo->\u001dtotalstake"
    .end annotation
.end field

.field public userType:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "user->\u001dusertype"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jd/lottery/lib/model/RequestEntity;-><init>()V

    .line 21
    const/16 v0, 0x7d1

    iput v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->funcid:I

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->buyFrom:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->planType:I

    .line 24
    return-void
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 173
    new-instance v0, Lcom/jd/lottery/lib/model/BetRequest;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/BetRequest;-><init>()V

    .line 174
    .local v0, betRequest:Lcom/jd/lottery/lib/model/BetRequest;
    iput v3, v0, Lcom/jd/lottery/lib/model/BetRequest;->lotteryCategory:I

    .line 176
    iput-object p0, v0, Lcom/jd/lottery/lib/model/BetRequest;->pin:Ljava/lang/String;

    .line 177
    const/4 v1, 0x3

    iput v1, v0, Lcom/jd/lottery/lib/model/BetRequest;->buyFrom:I

    .line 178
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setLotteryCategory(I)V

    .line 179
    const-wide/32 v1, 0x35a632ac

    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/model/BetRequest;->setIssueId(J)V

    .line 180
    const-wide/32 v1, 0x1eb7ba

    invoke-virtual {v0, v1, v2}, Lcom/jd/lottery/lib/model/BetRequest;->setIssueName(J)V

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setOrderType(I)V

    .line 182
    invoke-virtual {v0, v3}, Lcom/jd/lottery/lib/model/BetRequest;->setBuyFrom(I)V

    .line 183
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setPayType(Lcom/jd/lottery/lib/data/Constants$PayType;)V

    .line 184
    const-string v1, "123qwe"

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setPayPassword(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v3}, Lcom/jd/lottery/lib/model/BetRequest;->setTotalStake(I)V

    .line 186
    invoke-virtual {v0, v3}, Lcom/jd/lottery/lib/model/BetRequest;->setMulti(I)V

    .line 187
    const-string v1, "0:020307091827|10"

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setLotteryNumber(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setTotalFee(I)V

    .line 191
    const-string v1, "\u4e2d\u56fd"

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setFullName(Ljava/lang/String;)V

    .line 192
    const-string v1, "130522198706111580"

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setIdcardNumber(Ljava/lang/String;)V

    .line 193
    const-string v1, "15379169713"

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/model/BetRequest;->setMobile(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v3}, Lcom/jd/lottery/lib/model/BetRequest;->setUserType(I)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@@@@@@@@@222"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jd/lottery/lib/model/BetRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 197
    invoke-static {v0}, Lcom/jd/lottery/lib/model/EncryptEntity;->getEncryptUri(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAppendIssueinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->appendIssueinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyFrom()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->buyFrom:I

    return v0
.end method

.method public getChildPlaytype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->childPlaytype:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->couponIds:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdcardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->idcardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueId()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->issueId:J

    return-wide v0
.end method

.method public getIssueName()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->issueName:J

    return-wide v0
.end method

.method public getLotteryCategory()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->lotteryCategory:I

    return v0
.end method

.method public getLotteryNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->lotteryNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMulti()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->multi:I

    return v0
.end method

.method public getOrderType()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->orderType:I

    return v0
.end method

.method public getPayPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->payPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Lcom/jd/lottery/lib/data/Constants$PayType;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->payType:Lcom/jd/lottery/lib/data/Constants$PayType;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getPlanType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->planType:I

    return v0
.end method

.method public getStopAward()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->stopAward:J

    return-wide v0
.end method

.method public getStopflag()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->stopflag:I

    return v0
.end method

.method public getTotalFee()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->totalFee:I

    return v0
.end method

.method public getTotalStake()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->totalStake:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@@@@@@@@222"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jd/lottery/lib/model/BetRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 203
    invoke-static {p0}, Lcom/jd/lottery/lib/model/EncryptEntity;->getEncryptUri(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/jd/lottery/lib/model/BetRequest;->userType:I

    return v0
.end method

.method public setAppendIssueinfo(Ljava/lang/String;)V
    .locals 0
    .parameter "appendIssueinfo"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->appendIssueinfo:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setBuyFrom(I)V
    .locals 0
    .parameter "buyFrom"

    .prologue
    .line 243
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->buyFrom:I

    .line 244
    return-void
.end method

.method public setChildPlaytype(Ljava/lang/String;)V
    .locals 0
    .parameter "childPlaytype"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->childPlaytype:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCouponIds(Ljava/lang/String;)V
    .locals 0
    .parameter "couponIds"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->couponIds:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .parameter "fullName"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->fullName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setIdcardNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "idcardNumber"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->idcardNumber:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setIssueId(J)V
    .locals 0
    .parameter "issueId"

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->issueId:J

    .line 220
    return-void
.end method

.method public setIssueName(J)V
    .locals 0
    .parameter "issueName"

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->issueName:J

    .line 228
    return-void
.end method

.method public setLotteryCategory(I)V
    .locals 0
    .parameter "lotteryCategory"

    .prologue
    .line 211
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->lotteryCategory:I

    .line 212
    return-void
.end method

.method public setLotteryNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "lotteryNumber"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->lotteryNumber:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->mobile:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setMulti(I)V
    .locals 0
    .parameter "multi"

    .prologue
    .line 275
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->multi:I

    .line 276
    return-void
.end method

.method public setOrderType(I)V
    .locals 0
    .parameter "orderType"

    .prologue
    .line 235
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->orderType:I

    .line 236
    return-void
.end method

.method public setPayPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "payPassword"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->payPassword:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setPayType(Lcom/jd/lottery/lib/data/Constants$PayType;)V
    .locals 0
    .parameter "payType"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->payType:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 252
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->pin:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setPlanType(I)V
    .locals 0
    .parameter "planType"

    .prologue
    .line 92
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->planType:I

    .line 93
    return-void
.end method

.method public setStopAward(J)V
    .locals 0
    .parameter "stopAward"

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->stopAward:J

    .line 109
    return-void
.end method

.method public setStopflag(I)V
    .locals 0
    .parameter "stopflag"

    .prologue
    .line 100
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->stopflag:I

    .line 101
    return-void
.end method

.method public setTotalFee(I)V
    .locals 0
    .parameter "totalFee"

    .prologue
    .line 291
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->totalFee:I

    .line 292
    return-void
.end method

.method public setTotalStake(I)V
    .locals 0
    .parameter "totalStake"

    .prologue
    .line 267
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->totalStake:I

    .line 268
    return-void
.end method

.method public setUserType(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 136
    iput p1, p0, Lcom/jd/lottery/lib/model/BetRequest;->userType:I

    .line 137
    return-void
.end method
