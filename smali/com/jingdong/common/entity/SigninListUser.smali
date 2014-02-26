.class public Lcom/jingdong/common/entity/SigninListUser;
.super Ljava/lang/Object;
.source "SigninListUser.java"


# instance fields
.field private accNumTimers:Ljava/lang/String;

.field private sustainedNumTimers:Ljava/lang/String;

.field private userIcon:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userRank:Ljava/lang/Integer;

.field private usrType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "userRank"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninListUser;->setUserRank(Ljava/lang/Integer;)V

    .line 25
    const-string v0, "userName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninListUser;->setUserName(Ljava/lang/String;)V

    .line 26
    const-string v0, "userIcon"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninListUser;->setUserIcon(Ljava/lang/String;)V

    .line 27
    const-string v0, "accNumTimers"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninListUser;->setAccNumTimers(Ljava/lang/String;)V

    .line 28
    const-string v0, "sustainedNumTimers"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninListUser;->setSustainedNumTimers(Ljava/lang/String;)V

    .line 29
    const-string v0, "usrType"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninListUser;->setUsrType(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getAccNumTimers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninListUser;->accNumTimers:Ljava/lang/String;

    return-object v0
.end method

.method public getSustainedNumTimers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninListUser;->sustainedNumTimers:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninListUser;->userIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninListUser;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRank()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninListUser;->userRank:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUsrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninListUser;->usrType:Ljava/lang/String;

    return-object v0
.end method

.method public setAccNumTimers(Ljava/lang/String;)V
    .locals 0
    .parameter "accNumTimers"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninListUser;->accNumTimers:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSustainedNumTimers(Ljava/lang/String;)V
    .locals 0
    .parameter "sustainedNumTimers"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninListUser;->sustainedNumTimers:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "userIcon"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninListUser;->userIcon:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninListUser;->userName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUserRank(Ljava/lang/Integer;)V
    .locals 0
    .parameter "userRank"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninListUser;->userRank:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setUsrType(Ljava/lang/String;)V
    .locals 0
    .parameter "usrType"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninListUser;->usrType:Ljava/lang/String;

    .line 78
    return-void
.end method
