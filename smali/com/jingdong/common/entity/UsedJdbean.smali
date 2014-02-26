.class public Lcom/jingdong/common/entity/UsedJdbean;
.super Ljava/lang/Object;
.source "UsedJdbean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final USE_JDBEAN:I = 0x0

.field private static final serialVersionUID:J = 0x7f1f0154e90e1d6L


# instance fields
.field private canUseJdBeanCount:Ljava/lang/Double;

.field private isShowJdbean:Ljava/lang/Boolean;

.field private jdbeanDesc:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private jdbeanName:Ljava/lang/String;

.field private totalJdBeanCount:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 2
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    const-string v1, "usedJdBeanMap"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 62
    .local v0, jdbeanJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 63
    const-string v1, "isShowJd"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UsedJdbean;->setIsShowJdbean(Ljava/lang/Boolean;)V

    .line 64
    const-string v1, "Message1"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UsedJdbean;->setJdbeanName(Ljava/lang/String;)V

    .line 65
    const-string v1, "Message2"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UsedJdbean;->setJdbeanDesc(Ljava/lang/String;)V

    .line 66
    const-string v1, "canUseJdBeanCount"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UsedJdbean;->setCanUseJdBeanCount(Ljava/lang/Double;)V

    .line 67
    const-string v1, "totalJdBeanCount"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UsedJdbean;->setTotalJdBeanCount(Ljava/lang/Double;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .parameter "isShowJdbean"
    .parameter "jdbeanName"
    .parameter "jdbeanDesc"
    .parameter "canUseJdBeanCount"
    .parameter "totalJdBeanCount"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedJdbean;->isShowJdbean:Ljava/lang/Boolean;

    .line 48
    iput-object p2, p0, Lcom/jingdong/common/entity/UsedJdbean;->jdbeanName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/jingdong/common/entity/UsedJdbean;->jdbeanDesc:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/jingdong/common/entity/UsedJdbean;->canUseJdBeanCount:Ljava/lang/Double;

    .line 51
    iput-object p5, p0, Lcom/jingdong/common/entity/UsedJdbean;->totalJdBeanCount:Ljava/lang/Double;

    .line 52
    return-void
.end method


# virtual methods
.method public getCanUseJdBeanCount()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedJdbean;->canUseJdBeanCount:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 102
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedJdbean;->canUseJdBeanCount:Ljava/lang/Double;

    goto :goto_0
.end method

.method public getIsShowJdbean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedJdbean;->isShowJdbean:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedJdbean;->isShowJdbean:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getJdbeanDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedJdbean;->jdbeanDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getJdbeanName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedJdbean;->jdbeanName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalJdBeanCount()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedJdbean;->totalJdBeanCount:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 113
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UsedJdbean;->totalJdBeanCount:Ljava/lang/Double;

    goto :goto_0
.end method

.method public setCanUseJdBeanCount(Ljava/lang/Double;)V
    .locals 0
    .parameter "canUseJdBeanCount"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedJdbean;->canUseJdBeanCount:Ljava/lang/Double;

    .line 109
    return-void
.end method

.method public setIsShowJdbean(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isShowJdbean"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedJdbean;->isShowJdbean:Ljava/lang/Boolean;

    .line 82
    return-void
.end method

.method public setJdbeanDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "jdbeanDesc"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedJdbean;->jdbeanDesc:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setJdbeanName(Ljava/lang/String;)V
    .locals 0
    .parameter "jdbeanName"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedJdbean;->jdbeanName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTotalJdBeanCount(Ljava/lang/Double;)V
    .locals 0
    .parameter "totalJdBeanCount"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jingdong/common/entity/UsedJdbean;->totalJdBeanCount:Ljava/lang/Double;

    .line 120
    return-void
.end method
