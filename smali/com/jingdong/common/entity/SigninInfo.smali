.class public Lcom/jingdong/common/entity/SigninInfo;
.super Ljava/lang/Object;
.source "SigninInfo.java"


# instance fields
.field private clearText:Ljava/lang/String;

.field private currentTotalText:Ljava/lang/String;

.field private hintText:Ljava/lang/String;

.field private hintTextTitle:Ljava/lang/String;

.field private isDone:Ljava/lang/Integer;

.field private isLogin:Ljava/lang/Integer;

.field private isSucc:Ljava/lang/String;

.field private loginText:Ljava/lang/String;

.field private loginTextTitle:Ljava/lang/String;

.field private nextUpdateTime:Ljava/lang/String;

.field private shareText:Ljava/lang/String;

.field private sustainedNumTimes:Ljava/lang/String;

.field private sustainedText:Ljava/lang/String;

.field private titleText:Ljava/lang/String;

.field private totalNumTimes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "nextUpdateTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setNextUpdateTime(Ljava/lang/String;)V

    .line 49
    const-string v0, "isLogin"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setIsLogin(Ljava/lang/Integer;)V

    .line 50
    const-string v0, "isDone"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setIsDone(Ljava/lang/Integer;)V

    .line 51
    const-string v0, "titleText"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setTitleText(Ljava/lang/String;)V

    .line 52
    const-string v0, "hintTextTitle"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setHintTextTitle(Ljava/lang/String;)V

    .line 53
    const-string v0, "currentTotalText"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setCurrentTotalText(Ljava/lang/String;)V

    .line 54
    const-string v0, "totalNumTimes"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setTotalNumTimes(Ljava/lang/String;)V

    .line 55
    const-string v0, "sustainedText"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setSustainedText(Ljava/lang/String;)V

    .line 56
    const-string v0, "sustainedNumTimes"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setSustainedNumTimes(Ljava/lang/String;)V

    .line 57
    const-string v0, "hintText"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setHintText(Ljava/lang/String;)V

    .line 58
    const-string v0, "shareText"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setShareText(Ljava/lang/String;)V

    .line 59
    const-string v0, "loginText"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setLoginText(Ljava/lang/String;)V

    .line 60
    const-string v0, "loginTextTitle"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setLoginTextTitle(Ljava/lang/String;)V

    .line 61
    const-string v0, "isSucc"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setIsSucc(Ljava/lang/String;)V

    .line 62
    const-string v0, "clearText"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/SigninInfo;->setClearText(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getClearText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->clearText:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTotalText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->currentTotalText:Ljava/lang/String;

    return-object v0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->hintText:Ljava/lang/String;

    return-object v0
.end method

.method public getHintTextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->hintTextTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDone()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->isDone:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsLogin()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->isLogin:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsSucc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->isSucc:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->loginText:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginTextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->loginTextTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->nextUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShareText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->shareText:Ljava/lang/String;

    return-object v0
.end method

.method public getSustainedNumTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->sustainedNumTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getSustainedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->sustainedText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNumTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninInfo;->totalNumTimes:Ljava/lang/String;

    return-object v0
.end method

.method public setClearText(Ljava/lang/String;)V
    .locals 0
    .parameter "clearText"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->clearText:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setCurrentTotalText(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTotalText"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->currentTotalText:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 0
    .parameter "hintText"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->hintText:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setHintTextTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "hintTextTitle"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->hintTextTitle:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setIsDone(Ljava/lang/Integer;)V
    .locals 0
    .parameter "isDone"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->isDone:Ljava/lang/Integer;

    .line 111
    return-void
.end method

.method public setIsLogin(Ljava/lang/Integer;)V
    .locals 0
    .parameter "isLogin"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->isLogin:Ljava/lang/Integer;

    .line 103
    return-void
.end method

.method public setIsSucc(Ljava/lang/String;)V
    .locals 0
    .parameter "isSucc"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->isSucc:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setLoginText(Ljava/lang/String;)V
    .locals 0
    .parameter "loginText"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->loginText:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLoginTextTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "loginTextTitle"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->loginTextTitle:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setNextUpdateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "nextUpdateTime"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->nextUpdateTime:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setShareText(Ljava/lang/String;)V
    .locals 0
    .parameter "shareText"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->shareText:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setSustainedNumTimes(Ljava/lang/String;)V
    .locals 0
    .parameter "sustainedNumTimes"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->sustainedNumTimes:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setSustainedText(Ljava/lang/String;)V
    .locals 0
    .parameter "sustainedText"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->sustainedText:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0
    .parameter "titleText"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->titleText:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTotalNumTimes(Ljava/lang/String;)V
    .locals 0
    .parameter "totalNumTimes"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninInfo;->totalNumTimes:Ljava/lang/String;

    .line 135
    return-void
.end method
