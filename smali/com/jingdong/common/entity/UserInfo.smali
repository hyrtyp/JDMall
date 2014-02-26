.class public Lcom/jingdong/common/entity/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private jbAddr:Lorg/json/JSONObject;

.field private sMoble:Ljava/lang/String;

.field private sPhone:Ljava/lang/String;

.field private sUserName:Ljava/lang/String;

.field private sZip:Ljava/lang/String;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->jbAddr:Lorg/json/JSONObject;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "sName"
    .parameter "sMobile"
    .parameter "sZip"
    .parameter "where"
    .parameter "jbAddress"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jingdong/common/entity/UserInfo;->sUserName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/jingdong/common/entity/UserInfo;->sMoble:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/jingdong/common/entity/UserInfo;->sZip:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/jingdong/common/entity/UserInfo;->where:Ljava/lang/String;

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->jbAddr:Lorg/json/JSONObject;

    .line 35
    iput-object p5, p0, Lcom/jingdong/common/entity/UserInfo;->jbAddr:Lorg/json/JSONObject;

    .line 36
    return-void
.end method


# virtual methods
.method public getUserAddr()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->jbAddr:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getUserMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->sMoble:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->sUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->sPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->where:Ljava/lang/String;

    return-object v0
.end method

.method public getUserZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->sZip:Ljava/lang/String;

    return-object v0
.end method

.method public setUserAddr(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/UserInfo;->jbAddr:Lorg/json/JSONObject;

    .line 63
    iput-object p1, p0, Lcom/jingdong/common/entity/UserInfo;->jbAddr:Lorg/json/JSONObject;

    .line 64
    return-void
.end method

.method public setUserMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/common/entity/UserInfo;->sMoble:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jingdong/common/entity/UserInfo;->sUserName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUserPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jingdong/common/entity/UserInfo;->sPhone:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUserWhere(Ljava/lang/String;)V
    .locals 0
    .parameter "where"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jingdong/common/entity/UserInfo;->where:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUserZip(Ljava/lang/String;)V
    .locals 0
    .parameter "zip"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jingdong/common/entity/UserInfo;->sZip:Ljava/lang/String;

    .line 54
    return-void
.end method
