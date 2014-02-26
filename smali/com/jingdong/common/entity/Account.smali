.class public Lcom/jingdong/common/entity/Account;
.super Ljava/lang/Object;
.source "Account.java"


# static fields
.field public static final LOGIN:I = 0x1


# instance fields
.field private mCurrentLoginDate:Ljava/util/Date;

.field private mLastLoginDate:Ljava/util/Date;

.field private mLatestVisitedProducts:[Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 2
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    const-string v1, "loginname"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Account;->mUserName:Ljava/lang/String;

    .line 39
    const-string v1, "loginpwd"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Account;->mPassword:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "UserName"
    .parameter "Password"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jingdong/common/entity/Account;->mUserName:Ljava/lang/String;

    .line 32
    iget-object p2, p0, Lcom/jingdong/common/entity/Account;->mPassword:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/LinkedList;
    .locals 6
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/jingdong/common/entity/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v3, 0x0

    .line 71
    .local v3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v2, v5, :cond_0

    move-object v3, v4

    .line 85
    .end local v2           #i:I
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    .restart local v3       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    :goto_1
    return-object v4

    .line 73
    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    .restart local v2       #i:I
    .restart local v4       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/Account;

    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v0, v5, p1}, Lcom/jingdong/common/entity/Account;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 75
    .local v0, account:Lcom/jingdong/common/entity/Account;
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0           #account:Lcom/jingdong/common/entity/Account;
    .end local v2           #i:I
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    .restart local v3       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Lorg/json/JSONException;
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 78
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    .restart local v2       #i:I
    .restart local v4       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    .restart local v3       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jingdong/common/entity/Account;>;"
    goto :goto_2
.end method


# virtual methods
.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/common/entity/Account;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/common/entity/Account;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jingdong/common/entity/Account;->mUserName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "pwd"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jingdong/common/entity/Account;->mPassword:Ljava/lang/String;

    .line 54
    return-void
.end method
