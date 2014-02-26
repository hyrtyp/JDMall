.class public Lcom/unionpay/upomp/bypay/other/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MfI7rgld"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/f;->a:Ljava/lang/String;

    const-string v0, "d/3ANjbUjBjN3xrEQjnNOw=="

    sput-object v0, Lcom/unionpay/upomp/bypay/other/f;->b:Ljava/lang/String;

    const-string v0, "ebtXuadBvNBuZ0arK6kslg=="

    sput-object v0, Lcom/unionpay/upomp/bypay/other/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/security/Key;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string v1, "DESede"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static a()[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DESede"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/16 v1, 0xa8

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a([B[B)[B
    .locals 3

    invoke-static {p1}, Lcom/unionpay/upomp/bypay/other/f;->a([B)Ljava/security/Key;

    move-result-object v0

    const-string v1, "DESede/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b()[B
    .locals 1

    invoke-static {}, Lcom/unionpay/upomp/bypay/other/f;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 3

    invoke-static {p1}, Lcom/unionpay/upomp/bypay/other/f;->a([B)Ljava/security/Key;

    move-result-object v0

    const-string v1, "DESede/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
