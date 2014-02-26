.class public Lcom/jingdong/common/entity/NewUserInfoMode;
.super Ljava/lang/Object;
.source "NewUserInfoMode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECT_WARE:I = 0x0

.field private static final serialVersionUID:J = -0x34a040a4a5cac871L


# instance fields
.field private birthday:Ljava/lang/String;

.field private city:I

.field private companys:Ljava/lang/String;

.field private county:I

.field private email:Ljava/lang/String;

.field private homePage:Ljava/lang/String;

.field private imgFlag:I

.field private imgUrl:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private lastTime:Ljava/lang/String;

.field private msn:Ljava/lang/String;

.field private petName:Ljava/lang/String;

.field private province:I

.field private qq:Ljava/lang/String;

.field private regIp:Ljava/lang/String;

.field private regTime:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private schoolId:I

.field private schoolYn:I

.field private secoSchool:Ljava/lang/String;

.field private sex:I

.field private uclass:Ljava/lang/String;

.field private unColleger:Ljava/lang/String;

.field private unickName:Ljava/lang/String;

.field private userId:J

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/common/entity/NewUserInfoMode;->setUserId(J)V

    .line 311
    const-string v0, "unickName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setUnickName(Ljava/lang/String;)V

    .line 312
    const-string v0, "userName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setUserName(Ljava/lang/String;)V

    .line 313
    const-string v0, "petName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setPetName(Ljava/lang/String;)V

    .line 314
    const-string v0, "uclass"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setUclass(Ljava/lang/String;)V

    .line 315
    const-string v0, "sex"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setSex(I)V

    .line 316
    const-string v0, "province"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setProvince(I)V

    .line 317
    const-string v0, "city"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setCity(I)V

    .line 318
    const-string v0, "county"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setCounty(I)V

    .line 320
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setEmail(Ljava/lang/String;)V

    .line 321
    const-string v0, "lastTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setLastTime(Ljava/lang/String;)V

    .line 322
    const-string v0, "ipAddress"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setIpAddress(Ljava/lang/String;)V

    .line 323
    const-string v0, "regTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setRegTime(Ljava/lang/String;)V

    .line 324
    const-string v0, "regIp"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setRegIp(Ljava/lang/String;)V

    .line 326
    const-string v0, "schoolId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setSchoolId(I)V

    .line 327
    const-string v0, "schoolYn"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setSchoolYn(I)V

    .line 329
    const-string v0, "remark"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setRemark(Ljava/lang/String;)V

    .line 330
    const-string v0, "msn"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setMsn(Ljava/lang/String;)V

    .line 331
    const-string v0, "birthday"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setBirthday(Ljava/lang/String;)V

    .line 332
    const-string v0, "unColleger"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setUnColleger(Ljava/lang/String;)V

    .line 333
    const-string v0, "companys"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setCompanys(Ljava/lang/String;)V

    .line 334
    const-string v0, "secoSchool"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setSecoSchool(Ljava/lang/String;)V

    .line 335
    const-string v0, "qq"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setQq(Ljava/lang/String;)V

    .line 336
    const-string v0, "homePage"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setHomePage(Ljava/lang/String;)V

    .line 337
    const-string v0, "imgUrl"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setImgUrl(Ljava/lang/String;)V

    .line 338
    const-string v0, "imgFlag"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoMode;->setImgFlag(I)V

    .line 339
    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->birthday:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->birthday:Ljava/lang/String;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->city:I

    return v0
.end method

.method public getCompanys()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->companys:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->companys:Ljava/lang/String;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->companys:Ljava/lang/String;

    return-object v0
.end method

.method public getCounty()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->county:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->email:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->homePage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->homePage:Ljava/lang/String;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->homePage:Ljava/lang/String;

    return-object v0
.end method

.method public getImgFlag()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->imgFlag:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->imgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->imgUrl:Ljava/lang/String;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->ipAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->ipAddress:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->lastTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->lastTime:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->msn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->msn:Ljava/lang/String;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->msn:Ljava/lang/String;

    return-object v0
.end method

.method public getPetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->petName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->petName:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->petName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->province:I

    return v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->qq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->qq:Ljava/lang/String;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getRegIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->regIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->regIp:Ljava/lang/String;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->regIp:Ljava/lang/String;

    return-object v0
.end method

.method public getRegTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->regTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->regTime:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->regTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->remark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->remark:Ljava/lang/String;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSchoolId()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->schoolId:I

    return v0
.end method

.method public getSchoolYn()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->schoolYn:I

    return v0
.end method

.method public getSecoSchool()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->secoSchool:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->secoSchool:Ljava/lang/String;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->secoSchool:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->sex:I

    return v0
.end method

.method public getUclass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->uclass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->uclass:Ljava/lang/String;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->uclass:Ljava/lang/String;

    return-object v0
.end method

.method public getUnColleger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->unColleger:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->unColleger:Ljava/lang/String;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->unColleger:Ljava/lang/String;

    return-object v0
.end method

.method public getUnickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->unickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->unickName:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->unickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->userId:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->userName:Ljava/lang/String;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->birthday:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setCity(I)V
    .locals 0
    .parameter "city"

    .prologue
    .line 119
    iput p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->city:I

    .line 120
    return-void
.end method

.method public setCompanys(Ljava/lang/String;)V
    .locals 0
    .parameter "companys"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->companys:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setCounty(I)V
    .locals 0
    .parameter "county"

    .prologue
    .line 127
    iput p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->county:I

    .line 128
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->email:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setHomePage(Ljava/lang/String;)V
    .locals 0
    .parameter "homePage"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->homePage:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setImgFlag(I)V
    .locals 0
    .parameter "imgFlag"

    .prologue
    .line 305
    iput p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->imgFlag:I

    .line 306
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imgUrl"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->imgUrl:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ipAddress"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->ipAddress:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastTime"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->lastTime:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMsn(Ljava/lang/String;)V
    .locals 0
    .parameter "msn"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->msn:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setPetName(Ljava/lang/String;)V
    .locals 0
    .parameter "petName"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->petName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setProvince(I)V
    .locals 0
    .parameter "province"

    .prologue
    .line 111
    iput p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->province:I

    .line 112
    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->qq:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setRegIp(Ljava/lang/String;)V
    .locals 0
    .parameter "regIp"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->regIp:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setRegTime(Ljava/lang/String;)V
    .locals 0
    .parameter "regTime"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->regTime:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->remark:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSchoolId(I)V
    .locals 0
    .parameter "schoolId"

    .prologue
    .line 190
    iput p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->schoolId:I

    .line 191
    return-void
.end method

.method public setSchoolYn(I)V
    .locals 0
    .parameter "schoolYn"

    .prologue
    .line 198
    iput p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->schoolYn:I

    .line 199
    return-void
.end method

.method public setSecoSchool(Ljava/lang/String;)V
    .locals 0
    .parameter "secoSchool"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->secoSchool:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 103
    iput p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->sex:I

    .line 104
    return-void
.end method

.method public setUclass(Ljava/lang/String;)V
    .locals 0
    .parameter "uclass"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->uclass:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUnColleger(Ljava/lang/String;)V
    .locals 0
    .parameter "unColleger"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->unColleger:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setUnickName(Ljava/lang/String;)V
    .locals 0
    .parameter "unickName"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->unickName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->userId:J

    .line 52
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoMode;->userName:Ljava/lang/String;

    .line 74
    return-void
.end method
