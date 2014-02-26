.class public Lcom/jingdong/common/utils/SDKUtils;
.super Ljava/lang/Object;
.source "SDKUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSDKVersion()I
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isSDKVersionMoreThan16()Z
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDKVersionMoreThan20()Z
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDKVersionMoreThan21()Z
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
