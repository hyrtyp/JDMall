.class public Lcom/jingdong/app/mall/amHelper/AmShakeResult;
.super Ljava/lang/Object;
.source "AmShakeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3b90ca908d815adfL


# instance fields
.field private code:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private isWin:I

.field private msg:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "sc"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->code:Ljava/lang/String;

    .line 27
    const-string v0, "0"

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string v0, "imgLoc"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->imgUrl:Ljava/lang/String;

    .line 35
    :goto_1
    const-string v0, "win"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->isWin:I

    .line 36
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->msg:Ljava/lang/String;

    .line 37
    const-string v0, "tt"

    const-string v1, "\u4eac\u4e1c\u795d\u798f"

    invoke-virtual {p1, v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->title:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "imgUrl"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->imgUrl:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->code:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->imgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->imgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIsWin()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->isWin:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->pin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->pin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->token:Ljava/lang/String;

    return-object v0
.end method
