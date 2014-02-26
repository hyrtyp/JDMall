.class public Lcom/jingdong/common/entity/SigninList;
.super Ljava/lang/Object;
.source "SigninList.java"


# instance fields
.field private leftText:Ljava/lang/String;

.field private leftValue:Ljava/lang/String;

.field private nextUpdateTime:Ljava/lang/String;

.field private rankRule:Ljava/lang/String;

.field private rightText:Ljava/lang/String;

.field private rightValue:Ljava/lang/String;

.field private topNumTimers:Ljava/lang/String;

.field private topText1:Ljava/lang/String;

.field private topText2:Ljava/lang/String;

.field private topUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SigninListUser;",
            ">;"
        }
    .end annotation
.end field

.field private upText:Ljava/lang/String;

.field private upValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 12
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v10, "nextUpdateTime"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setNextUpdateTime(Ljava/lang/String;)V

    .line 61
    const-string v10, "upText"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setUpText(Ljava/lang/String;)V

    .line 62
    const-string v10, "upValue"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setUpValue(Ljava/lang/String;)V

    .line 63
    const-string v10, "leftText"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setLeftText(Ljava/lang/String;)V

    .line 64
    const-string v10, "leftValue"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setLeftValue(Ljava/lang/String;)V

    .line 65
    const-string v10, "rightText"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setRightText(Ljava/lang/String;)V

    .line 66
    const-string v10, "rightValue"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setRightValue(Ljava/lang/String;)V

    .line 67
    const-string v10, "rankRule"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setRankRule(Ljava/lang/String;)V

    .line 69
    const-string v10, "topText"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, topText:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 71
    const-string v10, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 72
    const-string v10, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, topArray:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setTopText1(Ljava/lang/String;)V

    .line 74
    aget-object v10, v6, v11

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setTopText2(Ljava/lang/String;)V

    .line 79
    .end local v6           #topArray:[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v10, "topNumTimers"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jingdong/common/entity/SigninList;->setTopNumTimers(Ljava/lang/String;)V

    .line 81
    const-string v10, "topUsers"

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 82
    .local v0, array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/jingdong/common/entity/SigninList;->topUsers:Ljava/util/ArrayList;

    .line 84
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 113
    :cond_1
    :goto_1
    return-void

    .line 76
    .end local v0           #array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/jingdong/common/entity/SigninList;->setTopText1(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .restart local v0       #array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_3
    const/4 v4, 0x0

    .line 89
    .local v4, isSelf:Z
    const/4 v3, 0x0

    .line 91
    .local v3, isDelete:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v10

    if-lt v2, v10, :cond_4

    .line 108
    if-eqz v3, :cond_1

    .line 109
    iget-object v10, p0, Lcom/jingdong/common/entity/SigninList;->topUsers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 110
    .local v5, size:I
    iget-object v10, p0, Lcom/jingdong/common/entity/SigninList;->topUsers:Ljava/util/ArrayList;

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 92
    .end local v5           #size:I
    :cond_4
    new-instance v1, Lcom/jingdong/common/entity/SigninListUser;

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/jingdong/common/entity/SigninListUser;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 94
    .local v1, catelogy:Lcom/jingdong/common/entity/SigninListUser;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SigninListUser;->getUsrType()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, type:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 96
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 97
    .local v8, tp:I
    if-ne v8, v11, :cond_5

    .line 98
    if-nez v4, :cond_6

    .line 99
    const/4 v4, 0x1

    .line 105
    .end local v8           #tp:I
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/jingdong/common/entity/SigninList;->topUsers:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 101
    .restart local v8       #tp:I
    :cond_6
    const/4 v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public getLeftText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->leftText:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->leftValue:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->nextUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRankRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->rankRule:Ljava/lang/String;

    return-object v0
.end method

.method public getRightText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->rightText:Ljava/lang/String;

    return-object v0
.end method

.method public getRightValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->rightValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTopNumTimers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->topNumTimers:Ljava/lang/String;

    return-object v0
.end method

.method public getTopText1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->topText1:Ljava/lang/String;

    return-object v0
.end method

.method public getTopText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->topText2:Ljava/lang/String;

    return-object v0
.end method

.method public getTopUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SigninListUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->topUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUpText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->upText:Ljava/lang/String;

    return-object v0
.end method

.method public getUpValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jingdong/common/entity/SigninList;->upValue:Ljava/lang/String;

    return-object v0
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 0
    .parameter "leftText"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->leftText:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setLeftValue(Ljava/lang/String;)V
    .locals 0
    .parameter "leftValue"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->leftValue:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setNextUpdateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "nextUpdateTime"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->nextUpdateTime:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setRankRule(Ljava/lang/String;)V
    .locals 0
    .parameter "rankRule"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->rankRule:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 0
    .parameter "rightText"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->rightText:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setRightValue(Ljava/lang/String;)V
    .locals 0
    .parameter "rightValue"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->rightValue:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setTopNumTimers(Ljava/lang/String;)V
    .locals 0
    .parameter "topNumTimers"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->topNumTimers:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setTopText1(Ljava/lang/String;)V
    .locals 0
    .parameter "topText1"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->topText1:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setTopText2(Ljava/lang/String;)V
    .locals 0
    .parameter "topText2"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->topText2:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setTopUsers(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SigninListUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, topUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SigninListUser;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->topUsers:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public setUpText(Ljava/lang/String;)V
    .locals 0
    .parameter "upText"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->upText:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setUpValue(Ljava/lang/String;)V
    .locals 0
    .parameter "upValue"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/jingdong/common/entity/SigninList;->upValue:Ljava/lang/String;

    .line 137
    return-void
.end method
