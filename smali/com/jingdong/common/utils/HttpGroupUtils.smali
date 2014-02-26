.class public Lcom/jingdong/common/utils/HttpGroupUtils;
.super Ljava/lang/Object;
.source "HttpGroupUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;
    .locals 2
    .parameter "type"

    .prologue
    .line 12
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 13
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 14
    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    return-object v1
.end method

.method public static getHttpGroupaAsynPool(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)Lcom/jingdong/common/utils/HttpGroup;
    .locals 1
    .parameter "setting"

    .prologue
    .line 18
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 19
    .local v0, httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    return-object v0
.end method
