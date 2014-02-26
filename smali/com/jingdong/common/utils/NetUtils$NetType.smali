.class public Lcom/jingdong/common/utils/NetUtils$NetType;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/NetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetType"
.end annotation


# static fields
.field public static final NSP_CHINA_MOBILE:I = 0x1

.field public static final NSP_CHINA_TELECOM:I = 0x3

.field public static final NSP_CHINA_UNICOM:I = 0x2

.field public static final NSP_NO:I = -0x1

.field public static final NSP_OTHER:I = 0x0

.field public static final SUMMARY_TYPE_MOBILE:I = 0x2

.field public static final SUMMARY_TYPE_OTHER:I = 0x0

.field public static final SUMMARY_TYPE_WIFI:I = 0x1


# instance fields
.field private detailType:Ljava/lang/String;

.field private extraInfo:Ljava/lang/String;

.field networkOperator:Ljava/lang/String;

.field networkOperatorName:Ljava/lang/String;

.field networkType:Ljava/lang/String;

.field networkTypeName:Ljava/lang/String;

.field proxyHost:Ljava/lang/String;

.field proxyPort:Ljava/lang/Integer;

.field simState:Ljava/lang/Integer;

.field private summaryType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I

    .line 203
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "summaryType"
    .parameter "extraInfo"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I

    .line 197
    iput p1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I

    .line 198
    iput-object p2, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->extraInfo:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/jingdong/common/utils/NetUtils$NetType;->getSimAndOperatorInfo()V

    .line 200
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/NetUtils$NetType;)I
    .locals 1
    .parameter

    .prologue
    .line 184
    iget v0, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I

    return v0
.end method

.method private getSimAndOperatorInfo()V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 208
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 212
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 216
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 221
    .local v1, temp:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkType:Ljava/lang/String;

    .line 222
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/NetUtils$NetType;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkTypeName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 226
    .end local v1           #temp:I
    :goto_3
    return-void

    .line 223
    :catch_0
    move-exception v2

    goto :goto_3

    .line 217
    :catch_1
    move-exception v2

    goto :goto_2

    .line 213
    :catch_2
    move-exception v2

    goto :goto_1

    .line 209
    :catch_3
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getDetailType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string v0, ""

    return-object v0
.end method

.method public getNSP()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 230
    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :cond_2
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    const-string v0, "CMCC"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 239
    const-string v0, "46000"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    const-string v0, "China Mobile"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :cond_4
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 245
    const-string v0, "China Telecom"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 246
    const-string v0, "46003"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 250
    :cond_6
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 251
    const-string v0, "China Unicom"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 252
    const-string v0, "46001"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 253
    const-string v0, "CU-GSM"

    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 258
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "code"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 285
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 265
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 267
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 269
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 271
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 273
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 275
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 277
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 279
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 281
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 283
    :pswitch_9
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, proxyHost:Ljava/lang/String;
    const/4 v1, 0x1

    iget v2, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I

    if-ne v1, v2, :cond_0

    .line 308
    const/4 v1, 0x0

    .line 320
    :goto_0
    return-object v1

    .line 313
    :cond_0
    iput-object v0, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->proxyHost:Ljava/lang/String;

    .line 314
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->proxyPort:Ljava/lang/Integer;

    .line 320
    iget-object v1, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->proxyHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProxyPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->proxyPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUploadType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/jingdong/common/utils/NetUtils$NetType;->networkType:Ljava/lang/String;

    return-object v0
.end method
