.class public Lcom/ja/analytics/utils/NetUtils$NetType;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/analytics/utils/NetUtils;
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

.field imsi:Ljava/lang/String;

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
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->summaryType:I

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "summaryType"
    .parameter "extraInfo"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->summaryType:I

    .line 174
    iput p2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->summaryType:I

    .line 175
    iput-object p3, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->extraInfo:Ljava/lang/String;

    .line 176
    invoke-direct {p0, p1}, Lcom/ja/analytics/utils/NetUtils$NetType;->getSimAndOperatorInfo(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method static synthetic access$0(Lcom/ja/analytics/utils/NetUtils$NetType;)I
    .locals 1
    .parameter

    .prologue
    .line 162
    iget v0, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->summaryType:I

    return v0
.end method

.method private getSimAndOperatorInfo(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 183
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 185
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 189
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->imsi:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 193
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 201
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 202
    .local v1, temp:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkType:Ljava/lang/String;

    .line 203
    invoke-virtual {p0, v1}, Lcom/ja/analytics/utils/NetUtils$NetType;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkTypeName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 207
    .end local v1           #temp:I
    :goto_4
    return-void

    .line 204
    :catch_0
    move-exception v2

    goto :goto_4

    .line 198
    :catch_1
    move-exception v2

    goto :goto_3

    .line 194
    :catch_2
    move-exception v2

    goto :goto_2

    .line 190
    :catch_3
    move-exception v2

    goto :goto_1

    .line 186
    :catch_4
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNSP()I
    .locals 4

    .prologue
    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 218
    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->imsi:Ljava/lang/String;

    const-string v3, "46003"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->simState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 223
    goto :goto_0

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 226
    goto :goto_0

    .line 228
    :cond_4
    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 229
    const-string v1, "CMCC"

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 230
    const-string v1, "46000"

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 231
    const-string v1, "China Mobile"

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    :cond_6
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const-string v1, "China Telecom"

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string v1, "46003"

    iget-object v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    iget-object v1, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 242
    const-string v0, "China Unicom"

    iget-object v1, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 243
    const-string v0, "46001"

    iget-object v1, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 244
    const-string v0, "CU-GSM"

    iget-object v1, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 246
    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 249
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getNSPStr()I
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/ja/analytics/utils/NetUtils$NetType;->getNSP()I

    move-result v0

    .line 293
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 301
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 295
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 297
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 299
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 293
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
    .line 258
    packed-switch p1, :pswitch_data_0

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 281
    invoke-static {}, Lcom/ja/analytics/utils/NetUtils4SDK4;->getInstance()Lcom/ja/analytics/utils/NetUtils4SDK4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ja/analytics/utils/NetUtils4SDK4;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 260
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 262
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 264
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 272
    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    .line 274
    :pswitch_4
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 276
    :pswitch_5
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 278
    :pswitch_6
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 283
    :cond_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 258
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
    .line 316
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, proxyHost:Ljava/lang/String;
    invoke-static {}, Lcom/ja/analytics/utils/NetUtils;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProxyHost() proxyHost -->> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v1, 0x1

    iget v2, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->summaryType:I

    if-ne v1, v2, :cond_0

    .line 322
    invoke-static {}, Lcom/ja/analytics/utils/NetUtils;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getProxyHost() WIFI -->> "

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x0

    .line 330
    :goto_0
    return-object v1

    .line 325
    :cond_0
    invoke-static {}, Lcom/ja/analytics/utils/NetUtils;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getProxyHost() else -->> "

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput-object v0, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->proxyHost:Ljava/lang/String;

    .line 327
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->proxyPort:Ljava/lang/Integer;

    .line 329
    invoke-static {}, Lcom/ja/analytics/utils/NetUtils;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProxyHost() proxyHost -->> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->proxyHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProxyPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->proxyPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUploadType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/ja/analytics/utils/NetUtils$NetType;->networkType:Ljava/lang/String;

    return-object v0
.end method
