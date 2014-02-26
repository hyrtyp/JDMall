.class Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;
.super Ljava/lang/Object;
.source "SysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/cpa/SysInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BTInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;->getBTmac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBTmac()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 206
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->isSDKVersionMoreThan16()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {}, Lcom/jingdong/common/utils/BlueUtils;->getWiFiAddress()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .end local v0           #address:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\"Unknow\""

    goto :goto_0
.end method
