.class public Lcom/jingdong/common/entity/UsedBalance;
.super Ljava/lang/Object;
.source "UsedBalance.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final USE_BALANCE:I = 0x0

.field private static final serialVersionUID:J = 0x7f1f0154e90e1d6L


# instance fields
.field private balanceDesc:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private balanceName:Ljava/lang/String;

.field private balanceValue:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 2
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    const-string v1, "usedBalanceMap"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 57
    .local v0, balanceJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "Balance"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UsedBalance;->setBalanceValue(Ljava/lang/Double;)V

    .line 59
    const-string v1, "Message1"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UsedBalance;->setBalanceName(Ljava/lang/String;)V

    .line 60
    const-string v1, "Message2"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UsedBalance;->setBalanceDesc(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "balanceValue"
    .parameter "balanceName"
    .parameter "balanceDesc"
    .parameter "isShowJdbean"
    .parameter "jdbeanName"
    .parameter "jdbeanDesc"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceValue:Ljava/lang/Double;

    .line 45
    iput-object p2, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceDesc:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getBalanceDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getBalanceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getBalanceValue()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceValue:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 68
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceValue:Ljava/lang/Double;

    goto :goto_0
.end method

.method public isShowBanance()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBalanceDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "balanceDesc"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceDesc:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setBalanceName(Ljava/lang/String;)V
    .locals 0
    .parameter "balanceName"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setBalanceValue(Ljava/lang/Double;)V
    .locals 0
    .parameter "balanceValue"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedBalance;->balanceValue:Ljava/lang/Double;

    .line 75
    return-void
.end method
