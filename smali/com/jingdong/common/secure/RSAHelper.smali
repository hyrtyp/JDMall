.class public Lcom/jingdong/common/secure/RSAHelper;
.super Ljava/lang/Object;
.source "RSAHelper.java"


# static fields
.field private static final PT_LEN:I = 0x75

.field private static final PUBLIC_KEY:Ljava/lang/String; = "z35gz/L59tV5t3kI8v7+/vr//H5y/89+dv1+fv92gF/LMSt4yF/3uWv6Dme5vdDahm5fK/EvAucjmeuNYPmNptyX596cPgNhsvoRZyajnvzLxxWqEXHy60kmHudViRMr2XGxKBQEh3DMK8+AUsGaORU6xnwVeZHWJtUslz94lXNboAU7fxPTGj7YZKqAgvGUREyLZ2QHG+xhCoF6Cv38/v/+"

.field public static final RAS_D1:Ljava/lang/String; = "10181422781937368681220224452580987776122511431935312391878834964708126870730228463498680788599310908784256229822204254336226066937231750248762020207374189368257192202796979116569703068970833761011754528432893872901525616312296004047864321453311474491486232253554750079150960526505082970220415017289481286449"

.field public static final RAS_E1:Ljava/lang/String; = "65537"

.field public static final RAS_N1:Ljava/lang/String; = "151271798880033854287265892076354612533153713832406385904911178209493654664939238905534582371895950811379233854875946546459589151862470463852440833899497247142453992630018166245597346904446766965609150343967974904481793067794500077913992375940130870900414482641497283447201731956542465730058686924517791676251"

.field private static final RSA_N:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCMmJVS+HQCMeVKDPsGZNwjdQtj/m/QliM1evvRZj+7yu9nmfk13b8nX/UMhg0tcs0Vbgt66VK759qpmgCH6uLKVe2Xr0QDA4guH32SU9RUWXKlC3r6RDzPAY3Bb9CG2q3tJC5RnkoVtWRM6owkd4CycMXiOXhT3Zut/Ne+8q30eQIDAQAB"

.field private static final SPRIT_CHAR:Ljava/lang/String; = "|"

.field private static cipher:Ljavax/crypto/Cipher;

.field private static instance:Lcom/jingdong/common/secure/RSAHelper;

.field private static privateKey:Ljava/security/PrivateKey;

.field private static publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/jingdong/common/secure/RSAHelper;

    invoke-direct {v0}, Lcom/jingdong/common/secure/RSAHelper;-><init>()V

    sput-object v0, Lcom/jingdong/common/secure/RSAHelper;->instance:Lcom/jingdong/common/secure/RSAHelper;

    .line 201
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static dencrypt([B)[B
    .locals 5
    .parameter "encrypt"

    .prologue
    .line 191
    :try_start_0
    sget-object v2, Lcom/jingdong/common/secure/RSAHelper;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    sget-object v4, Lcom/jingdong/common/secure/RSAHelper;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 192
    sget-object v2, Lcom/jingdong/common/secure/RSAHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dencryptBySeg(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "plainTextA"

    .prologue
    .line 254
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tokenizer counts:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 260
    :cond_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 261
    .local v3, tmpBase64Str:Ljava/lang/String;
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dencryptBySeg:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    invoke-static {v3}, Lcom/jingdong/common/secure/RSAHelper;->getFromatBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/common/secure/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 265
    .local v2, tmp:[B
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "base64 decode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {v2}, Lcom/jingdong/common/secure/RSAHelper;->dencrypt([B)[B

    move-result-object v2

    .line 267
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Rsa decode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v2           #tmp:[B
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static dencryptBySegBaseZip(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "plainTextA"
    .parameter "times"

    .prologue
    .line 285
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_0

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 290
    :cond_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 294
    .local v3, tmpBase64Str:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/jingdong/common/secure/RSAHelper;->getFromatBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/jingdong/common/secure/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 296
    .local v2, tmp:[B
    invoke-static {v2}, Lcom/jingdong/common/secure/RSAHelper;->dencrypt([B)[B

    move-result-object v2

    .line 297
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v2           #tmp:[B
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encrypt([B)[B
    .locals 5
    .parameter "plainTextArray"

    .prologue
    .line 172
    :try_start_0
    sget-object v2, Lcom/jingdong/common/secure/RSAHelper;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    sget-object v4, Lcom/jingdong/common/secure/RSAHelper;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 173
    sget-object v2, Lcom/jingdong/common/secure/RSAHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static encryptBySeg([B)Ljava/lang/String;
    .locals 1
    .parameter "plainText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jingdong/common/secure/RSAHelper;->encryptBySeg([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptBySeg([BI)Ljava/lang/String;
    .locals 10
    .parameter "plainText"
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x75

    const/4 v8, 0x0

    .line 223
    array-length v6, p0

    div-int/lit8 v6, v6, 0x75

    add-int/lit8 v3, v6, 0x1

    .line 224
    .local v3, mods:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 244
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 227
    :cond_0
    add-int/lit8 v6, v3, -0x1

    if-ne v1, v6, :cond_1

    .line 228
    array-length v6, p0

    mul-int/lit8 v7, v1, 0x75

    sub-int v2, v6, v7

    .line 229
    .local v2, leftLen:I
    new-array v5, v2, [B

    .line 230
    .local v5, tmp:[B
    mul-int/lit8 v6, v1, 0x75

    invoke-static {p0, v6, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    .end local v2           #leftLen:I
    :goto_1
    invoke-static {v5}, Lcom/jingdong/common/secure/RSAHelper;->encrypt([B)[B

    move-result-object v5

    .line 238
    invoke-static {v5, p1}, Lcom/jingdong/common/secure/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, base64str:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0           #base64str:Ljava/lang/String;
    .end local v5           #tmp:[B
    :cond_1
    new-array v5, v9, [B

    .line 234
    .restart local v5       #tmp:[B
    mul-int/lit8 v6, v1, 0x75

    invoke-static {p0, v6, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public static getFromatBase64String(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 315
    const/16 v1, 0xac

    .line 316
    .local v1, subLength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0xac

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, ret:Ljava/lang/String;
    const-string v2, "reg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "regleng:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "reg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v0
.end method

.method public static getInstance()Lcom/jingdong/common/secure/RSAHelper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/jingdong/common/secure/RSAHelper;->instance:Lcom/jingdong/common/secure/RSAHelper;

    return-object v0
.end method

.method public static getPrivateKey()Ljava/security/PrivateKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 152
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "151271798880033854287265892076354612533153713832406385904911178209493654664939238905534582371895950811379233854875946546459589151862470463852440833899497247142453992630018166245597346904446766965609150343967974904481793067794500077913992375940130870900414482641497283447201731956542465730058686924517791676251"

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 153
    .local v4, rsa_n:Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "10181422781937368681220224452580987776122511431935312391878834964708126870730228463498680788599310908784256229822204254336226066937231750248762020207374189368257192202796979116569703068970833761011754528432893872901525616312296004047864321453311474491486232253554750079150960526505082970220415017289481286449"

    invoke-direct {v3, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 154
    .local v3, rsa_d:Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v2, v4, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 156
    .local v2, rsaPrivateKeySpec:Ljava/security/spec/RSAPrivateKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 158
    .local v0, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 157
    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 159
    .local v1, privateKey:Ljava/security/interfaces/RSAPrivateKey;
    return-object v1
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lcom/jingdong/common/secure/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 138
    .local v0, keyBytes:[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 139
    .local v2, keySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 140
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 141
    .local v3, privateKey:Ljava/security/PrivateKey;
    return-object v3
.end method

.method public static getPublicKey()Ljava/security/PublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 96
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 97
    .local v0, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "65537"

    invoke-direct {v3, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 98
    .local v3, rsa_e:Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "151271798880033854287265892076354612533153713832406385904911178209493654664939238905534582371895950811379233854875946546459589151862470463852440833899497247142453992630018166245597346904446766965609150343967974904481793067794500077913992375940130870900414482641497283447201731956542465730058686924517791676251"

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 99
    .local v4, rsa_n:Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v4, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 102
    .local v2, rsaPublicKeySpec:Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 101
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 103
    .local v1, rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    return-object v1
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/jingdong/common/secure/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 116
    .local v2, keyBytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, v2

    .local v0, byteLength:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 120
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 121
    .local v4, keySpec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 122
    .local v3, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/RSAPublicKey;

    .line 123
    .local v5, publicKey:Ljava/security/interfaces/RSAPublicKey;
    return-object v5

    .line 117
    .end local v3           #keyFactory:Ljava/security/KeyFactory;
    .end local v4           #keySpec:Ljava/security/spec/X509EncodedKeySpec;
    .end local v5           #publicKey:Ljava/security/interfaces/RSAPublicKey;
    :cond_0
    aget-byte v6, v2, v1

    xor-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 46
    :try_start_0
    const-string v1, "z35gz/L59tV5t3kI8v7+/vr//H5y/89+dv1+fv92gF/LMSt4yF/3uWv6Dme5vdDahm5fK/EvAucjmeuNYPmNptyX596cPgNhsvoRZyajnvzLxxWqEXHy60kmHudViRMr2XGxKBQEh3DMK8+AUsGaORU6xnwVeZHWJtUslz94lXNboAU7fxPTGj7YZKqAgvGUREyLZ2QHG+xhCoF6Cv38/v/+"

    invoke-static {v1}, Lcom/jingdong/common/secure/RSAHelper;->getPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/secure/RSAHelper;->publicKey:Ljava/security/PublicKey;

    .line 48
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/secure/RSAHelper;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 50
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 3
    .parameter "pubKey"

    .prologue
    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/jingdong/common/secure/RSAHelper;->getPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/secure/RSAHelper;->publicKey:Ljava/security/PublicKey;

    .line 64
    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/secure/RSAHelper;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "priKey"
    .parameter "pubKey"

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/jingdong/common/secure/RSAHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/secure/RSAHelper;->privateKey:Ljava/security/PrivateKey;

    .line 81
    invoke-static {p1}, Lcom/jingdong/common/secure/RSAHelper;->getPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/secure/RSAHelper;->publicKey:Ljava/security/PublicKey;

    .line 82
    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/secure/RSAHelper;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
