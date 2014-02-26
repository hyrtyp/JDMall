.class public Lcom/jingdong/common/cpa/SysInfoManager;
.super Ljava/lang/Object;
.source "SysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;
    }
.end annotation


# static fields
.field private static final F_CPU_INFO:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final F_MEM_INFO:Ljava/lang/String; = "/proc/meminfo"

.field private static final QUOAR:C = '\"'

.field public static final TAG:Ljava/lang/String; = null

.field private static final UNKNOW:Ljava/lang/String; = "Unknow"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/jingdong/common/cpa/SysInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Dencode([B)[B
    .locals 6
    .parameter "byteArray"

    .prologue
    .line 561
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->I:Z

    if-eqz v3, :cond_0

    .line 562
    sget-object v3, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ckey"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    const/4 v0, 0x0

    .line 567
    .local v0, baseString:[B
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/jingdong/common/secure/RSAHelper;->getPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    .line 568
    .local v2, pk:Ljava/security/interfaces/RSAPublicKey;
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->I:Z

    if-eqz v3, :cond_1

    .line 569
    sget-object v3, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v3, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_1
    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 576
    .end local v2           #pk:Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->I:Z

    if-eqz v3, :cond_2

    .line 577
    sget-object v3, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_2
    return-object v0

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static base64Encode([B)[B
    .locals 3
    .parameter "byteArray"

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/jingdong/common/secure/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, bf:Ljava/lang/StringBuffer;
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 548
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->I:Z

    if-eqz v1, :cond_0

    .line 549
    sget-object v1, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static externalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "mounted"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static extractMemCount(Ljava/lang/String;)J
    .locals 8
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 303
    if-eqz p0, :cond_4

    .line 304
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 306
    .local v1, idx:I
    if-eq v1, v6, :cond_6

    .line 307
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 309
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 311
    if-eq v1, v6, :cond_5

    .line 312
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, unit:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 318
    .local v2, size:J
    const-string v5, "kb"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    const-wide/16 v5, 0x400

    mul-long/2addr v2, v5

    .line 351
    .end local v1           #idx:I
    .end local v2           #size:J
    .end local v4           #unit:Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    .line 321
    .restart local v1       #idx:I
    .restart local v2       #size:J
    .restart local v4       #unit:Ljava/lang/String;
    :cond_1
    const-string v5, "mb"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    const-wide/32 v5, 0x100000

    mul-long/2addr v2, v5

    .line 324
    goto :goto_0

    :cond_2
    const-string v5, "gb"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    const-wide/32 v5, 0x40000000

    mul-long/2addr v2, v5

    .line 327
    goto :goto_0

    .line 328
    :cond_3
    sget-boolean v5, Lcom/jingdong/cloud/msg/util/Log;->W:Z

    if-eqz v5, :cond_0

    .line 329
    sget-object v5, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected mem unit format: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jingdong/cloud/msg/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v2           #size:J
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v5, :cond_4

    .line 336
    sget-object v5, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #idx:I
    .end local v4           #unit:Ljava/lang/String;
    :cond_4
    :goto_1
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 340
    .restart local v1       #idx:I
    :cond_5
    sget-boolean v5, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v5, :cond_4

    .line 341
    sget-object v5, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected mem value format: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_6
    sget-boolean v5, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v5, :cond_4

    .line 346
    sget-object v5, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected mem format: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getBTMacAdrress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 194
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;

    invoke-direct {v0}, Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;-><init>()V

    .line 196
    .local v0, biInfo:Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;
    #calls: Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;->getBTmac()Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;->access$0(Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .end local v0           #biInfo:Lcom/jingdong/common/cpa/SysInfoManager$BTInfo;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\"Unknow\""

    goto :goto_0
.end method

.method public static getBuildInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x22

    const/16 v3, 0x2c

    .line 511
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\"buildInfo\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, bf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 513
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 514
    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    const-string v1, "model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 516
    const-string v1, "product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 517
    const-string v1, "brand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 518
    const-string v1, "release:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 519
    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    const-string v1, "locale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 522
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCPUSerial()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x22

    .line 94
    const-string v6, ""

    .local v6, str:Ljava/lang/String;
    const-string v7, ""

    .local v7, strCPU:Ljava/lang/String;
    const-string v0, "0000000000000000"

    .line 97
    .local v0, cpuAddress:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "cat /proc/cpuinfo"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 98
    .local v5, pp:Ljava/lang/Process;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v4, ir:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/LineNumberReader;

    invoke-direct {v3, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v3, input:Ljava/io/LineNumberReader;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/16 v8, 0x64

    if-lt v2, v8, :cond_1

    .line 122
    .end local v2           #i:I
    .end local v3           #input:Ljava/io/LineNumberReader;
    .end local v4           #ir:Ljava/io/InputStreamReader;
    .end local v5           #pp:Ljava/lang/Process;
    :cond_0
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 102
    .restart local v2       #i:I
    .restart local v3       #input:Ljava/io/LineNumberReader;
    .restart local v4       #ir:Ljava/io/InputStreamReader;
    .restart local v5       #pp:Ljava/lang/Process;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 103
    if-eqz v6, :cond_0

    .line 105
    const-string v8, "Serial"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 107
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 108
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 107
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 111
    goto :goto_1

    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2           #i:I
    .end local v3           #input:Ljava/io/LineNumberReader;
    .end local v4           #ir:Ljava/io/InputStreamReader;
    .end local v5           #pp:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 120
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSIstr()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x22

    .line 534
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 533
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 535
    .local v1, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, imsi:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMemInfo()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x22

    .line 219
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "\"memSize\":"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, bf:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/cpa/SysInfoManager;->getMemState(Landroid/content/Context;)[J

    move-result-object v1

    .line 221
    .local v1, state:[J
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    if-nez v1, :cond_0

    .line 224
    const-string v2, "Unknow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 232
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 228
    :cond_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    .line 229
    const/4 v3, 0x0

    aget-wide v3, v1, v3

    .line 228
    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static getMemState(Landroid/content/Context;)[J
    .locals 14
    .parameter "ctx"

    .prologue
    .line 241
    const/4 v7, 0x0

    .line 244
    .local v7, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 245
    new-instance v11, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    const-string v13, "/proc/meminfo"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x400

    .line 244
    invoke-direct {v8, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 249
    .local v9, totalMsg:Ljava/lang/String;
    const/4 v2, 0x0

    .line 251
    .local v2, freeMsg:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 265
    :goto_0
    const/4 v10, 0x3

    new-array v5, v10, [J

    .line 267
    .local v5, mem:[J
    const/4 v10, 0x0

    invoke-static {v9}, Lcom/jingdong/common/cpa/SysInfoManager;->extractMemCount(Ljava/lang/String;)J

    move-result-wide v11

    aput-wide v11, v5, v10

    .line 268
    const/4 v10, 0x1

    invoke-static {v2}, Lcom/jingdong/common/cpa/SysInfoManager;->extractMemCount(Ljava/lang/String;)J

    move-result-wide v11

    aput-wide v11, v5, v10

    .line 271
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    check-cast v0, Landroid/app/ActivityManager;

    .line 272
    .local v0, am:Landroid/app/ActivityManager;
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 273
    .local v6, mi:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 274
    const/4 v10, 0x2

    iget-wide v11, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    aput-wide v11, v5, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 282
    if-eqz v8, :cond_1

    .line 284
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v7, v8

    .line 293
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #freeMsg:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #mem:[J
    .end local v6           #mi:Landroid/app/ActivityManager$MemoryInfo;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v9           #totalMsg:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_2
    return-object v5

    .line 252
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v2       #freeMsg:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v9       #totalMsg:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v10, "MemTotal"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 254
    move-object v9, v4

    .line 260
    :cond_3
    :goto_3
    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 255
    :cond_4
    const-string v10, "MemFree"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v10

    if-eqz v10, :cond_3

    .line 257
    move-object v2, v4

    goto :goto_3

    .line 285
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v5       #mem:[J
    .restart local v6       #mi:Landroid/app/ActivityManager$MemoryInfo;
    :catch_0
    move-exception v3

    .line 286
    .local v3, ie:Ljava/io/IOException;
    sget-boolean v10, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v10, :cond_1

    .line 287
    sget-object v10, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 277
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #freeMsg:Ljava/lang/String;
    .end local v3           #ie:Ljava/io/IOException;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #mem:[J
    .end local v6           #mi:Landroid/app/ActivityManager$MemoryInfo;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v9           #totalMsg:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 278
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    :try_start_4
    sget-boolean v10, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v10, :cond_5

    .line 279
    sget-object v10, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    :cond_5
    if-eqz v7, :cond_6

    .line 284
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 293
    :cond_6
    :goto_5
    const/4 v5, 0x0

    goto :goto_2

    .line 285
    :catch_2
    move-exception v3

    .line 286
    .restart local v3       #ie:Ljava/io/IOException;
    sget-boolean v10, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v10, :cond_6

    .line 287
    sget-object v10, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 281
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ie:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 282
    :goto_6
    if-eqz v7, :cond_7

    .line 284
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 291
    :cond_7
    :goto_7
    throw v10

    .line 285
    :catch_3
    move-exception v3

    .line 286
    .restart local v3       #ie:Ljava/io/IOException;
    sget-boolean v11, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v11, :cond_7

    .line 287
    sget-object v11, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 281
    .end local v3           #ie:Ljava/io/IOException;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v2       #freeMsg:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v9       #totalMsg:Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 277
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public static getNetAddressInfo()Ljava/lang/String;
    .locals 10

    .prologue
    .line 401
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v7, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_1

    .line 423
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, netAddress:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 434
    .end local v2           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v6           #netAddress:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 405
    .restart local v2       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 407
    .local v5, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 408
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 409
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_2

    .line 410
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 413
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 414
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 428
    .end local v0           #addr:Ljava/lang/String;
    .end local v2           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v3           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v5           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v1

    .line 429
    .local v1, e:Ljava/net/SocketException;
    sget-boolean v8, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v8, :cond_3

    .line 430
    sget-object v8, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/SocketException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    .end local v1           #e:Ljava/net/SocketException;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 416
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v2       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v3       #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v4       #inetAddress:Ljava/net/InetAddress;
    .restart local v5       #intf:Ljava/net/NetworkInterface;
    :cond_4
    :try_start_1
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getNetworkInfoStr()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0x22

    const/16 v12, 0x2c

    .line 445
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 444
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 446
    .local v0, cm:Landroid/net/ConnectivityManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v9, "\"netwrokInfo\":"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    const-string v9, "{"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 451
    .local v4, ni:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 452
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 454
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v9

    .line 455
    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 454
    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 457
    .local v8, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 459
    .local v7, wi:Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_2

    .line 460
    const-string v2, ""

    .line 461
    .local v2, finalSSid:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, ssid:Ljava/lang/String;
    sget-boolean v9, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v9, :cond_0

    .line 463
    sget-object v9, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "wi.getSSID()"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 466
    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 470
    :goto_0
    sget-boolean v9, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v9, :cond_1

    .line 471
    sget-object v9, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "finalSSid"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_1
    const-string v9, "SSID: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    const-string v9, "BSSID: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    const-string v9, "MAC: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 476
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    .end local v2           #finalSSid:Ljava/lang/String;
    .end local v6           #ssid:Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 481
    .local v1, di:Landroid/net/DhcpInfo;
    if-eqz v1, :cond_3

    .line 482
    const-string v9, "gateway:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget v9, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v5, v9}, Lcom/jingdong/common/cpa/SysInfoManager;->putAddress(Ljava/lang/StringBuilder;I)V

    .line 484
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v9, "ip:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget v9, v1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v5, v9}, Lcom/jingdong/common/cpa/SysInfoManager;->putAddress(Ljava/lang/StringBuilder;I)V

    .line 492
    .end local v1           #di:Landroid/net/DhcpInfo;
    .end local v7           #wi:Landroid/net/wifi/WifiInfo;
    .end local v8           #wm:Landroid/net/wifi/WifiManager;
    :cond_3
    :goto_1
    const-string v9, "}"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 468
    .restart local v2       #finalSSid:Ljava/lang/String;
    .restart local v6       #ssid:Ljava/lang/String;
    .restart local v7       #wi:Landroid/net/wifi/WifiInfo;
    .restart local v8       #wm:Landroid/net/wifi/WifiManager;
    :cond_4
    move-object v2, v6

    goto :goto_0

    .line 489
    .end local v2           #finalSSid:Ljava/lang/String;
    .end local v6           #ssid:Ljava/lang/String;
    .end local v7           #wi:Landroid/net/wifi/WifiInfo;
    .end local v8           #wm:Landroid/net/wifi/WifiManager;
    :cond_5
    invoke-static {}, Lcom/jingdong/common/cpa/SysInfoManager;->getNetAddressInfo()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, localAddress:Ljava/lang/String;
    const-string v9, "ip:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getSdCardId()Ljava/lang/String;
    .locals 11

    .prologue
    .line 145
    invoke-static {}, Lcom/jingdong/common/cpa/SysInfoManager;->externalMemoryAvailable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 147
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/sys/class/mmc_host/mmc1"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v5, input:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, cid_directory:Ljava/lang/String;
    const/4 v4, 0x0

    .line 151
    .local v4, i:I
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 153
    .local v7, sid:[Ljava/io/File;
    const/4 v4, 0x0

    :goto_0
    array-length v8, v7

    if-lt v4, v8, :cond_2

    .line 165
    :cond_0
    :goto_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/cid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    .local v0, CID:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, sd_cid:Ljava/lang/String;
    sget-boolean v8, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v8, :cond_1

    .line 169
    sget-object v8, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CID of the MMC = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x22

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 182
    .end local v0           #CID:Ljava/io/BufferedReader;
    .end local v2           #cid_directory:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #sd_cid:Ljava/lang/String;
    .end local v7           #sid:[Ljava/io/File;
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    return-object v8

    .line 154
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #cid_directory:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v7       #sid:[Ljava/io/File;
    :cond_2
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmc1:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 155
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    .line 158
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    .line 157
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 156
    check-cast v1, Ljava/lang/String;

    .line 159
    .local v1, SID:Ljava/lang/String;
    sget-boolean v8, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v8, :cond_0

    .line 160
    sget-object v8, Lcom/jingdong/common/cpa/SysInfoManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " SID of MMC = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 174
    .end local v1           #SID:Ljava/lang/String;
    .end local v2           #cid_directory:Ljava/lang/String;
    .end local v4           #i:I
    .end local v7           #sid:[Ljava/io/File;
    :catch_0
    move-exception v3

    .line 175
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "CID_APP"

    const-string v9, "Can not read SD-card cid"

    invoke-static {v8, v9}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_3
    :goto_3
    const-string v8, "\"Unknow\""

    goto :goto_2

    .line 153
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #cid_directory:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v7       #sid:[Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 179
    .end local v2           #cid_directory:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #input:Ljava/io/File;
    .end local v7           #sid:[Ljava/io/File;
    :cond_5
    const-string v8, "CID_APP"

    const-string v9, " SD-card unavailble"

    invoke-static {v8, v9}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getSensorInfoString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    .line 360
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    .line 361
    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 360
    check-cast v2, Landroid/hardware/SensorManager;

    .line 362
    .local v2, sm:Landroid/hardware/SensorManager;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "\"sensors\":"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, bf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    const/4 v3, 0x0

    .line 365
    .local v3, ss:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v2, :cond_5

    .line 366
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 367
    if-eqz v3, :cond_1

    .line 368
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 380
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 384
    :cond_0
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    :cond_1
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 369
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 370
    .local v1, sensor:Landroid/hardware/Sensor;
    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v4, "sensorName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 372
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Unknow"

    .line 371
    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v4, ",vendor:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 375
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Unknow"

    .line 374
    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const-string v4, ",resolution:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getResolution()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 378
    const-string v4, "},"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 376
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 387
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :cond_5
    const-string v4, "Unknow"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getWifiMac()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x22

    .line 67
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, uudidStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 69
    .local v2, macAddress:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 70
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    .line 72
    .local v0, cxt:Landroid/content/Context;
    const-string v6, "wifi"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 71
    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 73
    .local v5, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 74
    .local v1, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    const-string v2, "Unknow"

    .line 85
    .end local v0           #cxt:Landroid/content/Context;
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v5           #wifi:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 79
    :cond_1
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, uudidArray:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 81
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v3, v6

    goto :goto_0
.end method

.method private static putAddress(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "sb"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 500
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 501
    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 502
    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    return-void
.end method
