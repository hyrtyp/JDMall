.class public Lcom/ja/sdk/utils/NetUtils$NetType;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/sdk/utils/NetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetType"
.end annotation


# static fields
.field private static final CHINA_MOBILE:Ljava/lang/String; = "\u4e2d\u56fd\u79fb\u52a8"

.field private static final CHINA_TELECOM:Ljava/lang/String; = "\u4e2d\u56fd\u7535\u4fe1"

.field private static final CHINA_UNICOM:Ljava/lang/String; = "\u4e2d\u56fd\u8054\u901a"

.field public static final NSP_CHINA_MOBILE:I = 0x1

.field public static final NSP_CHINA_TELECOM:I = 0x3

.field public static final NSP_CHINA_UNICOM:I = 0x2

.field public static final NSP_NO:I = -0x1

.field public static final NSP_OTHER:I = 0x0

.field public static final SUMMARY_TYPE_MOBILE:I = 0x2

.field public static final SUMMARY_TYPE_OTHER:I = 0x0

.field public static final SUMMARY_TYPE_WIFI:I = 0x1


# instance fields
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
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->summaryType:I

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "summaryType"
    .parameter "extraInfo"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->summaryType:I

    .line 179
    iput p2, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->summaryType:I

    .line 180
    iput-object p3, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->extraInfo:Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1}, Lcom/ja/sdk/utils/NetUtils$NetType;->getSimAndOperatorInfo(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method static synthetic access$0(Lcom/ja/sdk/utils/NetUtils$NetType;)I
    .locals 1
    .parameter

    .prologue
    .line 167
    iget v0, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->summaryType:I

    return v0
.end method

.method private getSimAndOperatorInfo(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 188
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 190
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 194
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 198
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 203
    .local v1, temp:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkType:Ljava/lang/String;

    .line 204
    invoke-virtual {p0, v1}, Lcom/ja/sdk/utils/NetUtils$NetType;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkTypeName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 208
    .end local v1           #temp:I
    :goto_3
    return-void

    .line 205
    :catch_0
    move-exception v2

    goto :goto_3

    .line 199
    :catch_1
    move-exception v2

    goto :goto_2

    .line 195
    :catch_2
    move-exception v2

    goto :goto_1

    .line 191
    :catch_3
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNSP()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 219
    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    :cond_2
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    const-string v0, "CMCC"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    const-string v0, "46000"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    const-string v0, "China Mobile"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    :cond_4
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    const-string v0, "China Telecom"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 234
    const-string v0, "46003"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 238
    :cond_6
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 239
    const-string v0, "China Unicom"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 240
    const-string v0, "46001"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 241
    const-string v0, "CU-GSM"

    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 246
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getNSPStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/ja/sdk/utils/NetUtils$NetType;->getNSP()I

    move-result v0

    .line 290
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 298
    const-string v1, ""

    :goto_0
    return-object v1

    .line 292
    :pswitch_0
    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    goto :goto_0

    .line 294
    :pswitch_1
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0

    .line 296
    :pswitch_2
    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 2
    .parameter "code"

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 278
    invoke-static {}, Lcom/ja/sdk/utils/NetUtils4SDK4;->getInstance()Lcom/ja/sdk/utils/NetUtils4SDK4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ja/sdk/utils/NetUtils4SDK4;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 259
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 261
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 269
    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    .line 271
    :pswitch_4
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 273
    :pswitch_5
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 275
    :pswitch_6
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 280
    :cond_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 313
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, proxyHost:Ljava/lang/String;
    const-string v1, "Ja SDK: NetUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProxyHost() proxyHost -->> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x1

    iget v2, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->summaryType:I

    if-ne v1, v2, :cond_0

    .line 319
    const-string v1, "Ja SDK: NetUtils"

    const-string v2, "getProxyHost() WIFI -->> "

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x0

    .line 327
    :goto_0
    return-object v1

    .line 322
    :cond_0
    const-string v1, "Ja SDK: NetUtils"

    const-string v2, "getProxyHost() else -->> "

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iput-object v0, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->proxyHost:Ljava/lang/String;

    .line 324
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->proxyPort:Ljava/lang/Integer;

    .line 326
    const-string v1, "Ja SDK: NetUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProxyHost() proxyHost -->> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->proxyHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProxyPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->proxyPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUploadType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/ja/sdk/utils/NetUtils$NetType;->networkType:Ljava/lang/String;

    return-object v0
.end method
