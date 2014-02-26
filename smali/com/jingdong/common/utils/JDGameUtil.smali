.class public Lcom/jingdong/common/utils/JDGameUtil;
.super Ljava/lang/Object;
.source "JDGameUtil.java"


# static fields
.field private static final ACTION_LOGIN_CANCEL:Ljava/lang/String; = "jd.jgame.login.CANCEL"

.field private static final ACTION_LOGIN_OUT:Ljava/lang/String; = "jd.jgame.login.OUT"

.field private static final ACTION_LOGIN_SUCCESS:Ljava/lang/String; = "jd.jgame.login.SUCCESS"

.field private static final ACTION_MAIN:Ljava/lang/String; = "jd.intent.action.MAIN"

.field public static final DES_AFTER_LOGIN_CANCEL:I = 0x3

.field public static final DES_AFTER_LOGIN_SUCCESS:I = 0x2

.field public static final DES_MAIN:I = 0x1

.field public static final FUNCTION_ID:Ljava/lang/String; = "jdgame"

.field private static final JD_GAME_COMPONENT_NAME:Ljava/lang/String; = "com.jingdong.jgame"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "jd.intent.category.LAUNCHER"

.field private static final KEY_LOGIN_COOKIE:Ljava/lang/String; = "loginCookie"

.field private static final KEY_LOGIN_NAME:Ljava/lang/String; = "loginName"

.field private static final TAG:Ljava/lang/String; = "JDGameUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkJDGameHasExist(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 169
    const-string v1, "com.jingdong.jgame"

    invoke-static {p0, v1}, Lcom/jingdong/common/utils/CommonUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 171
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 175
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getDESCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cookie"

    .prologue
    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/jingdong/common/utils/JDGameUtil;->getDesEncryptValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, ""

    goto :goto_0
.end method

.method private static getDesEncryptValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "source"

    .prologue
    .line 188
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "6A647E2D"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "DES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 190
    .local v4, key:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 191
    .local v1, cipherEncrypt:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 193
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 196
    .local v3, enc:[B
    new-instance v0, Lcom/jingdong/common/auth/BASE64Encoder;

    invoke-direct {v0}, Lcom/jingdong/common/auth/BASE64Encoder;-><init>()V

    .line 197
    .local v0, base64:Lcom/jingdong/common/auth/BASE64Encoder;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/auth/BASE64Encoder;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 202
    .end local v0           #base64:Lcom/jingdong/common/auth/BASE64Encoder;
    .end local v1           #cipherEncrypt:Ljavax/crypto/Cipher;
    .end local v3           #enc:[B
    .end local v4           #key:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v5

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const-string v5, ""

    goto :goto_0
.end method

.method public static gotoJDGameUtil(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "activity"
    .parameter "userName"
    .parameter "cookie"
    .parameter "des"

    .prologue
    .line 72
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/utils/JDGameUtil;->gotoJDGameUtil(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 73
    return-void
.end method

.method public static gotoJDGameUtil(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .parameter "activity"
    .parameter "userName"
    .parameter "cookie"
    .parameter "des"
    .parameter "downloadUrl"
    .parameter "downloadSize"

    .prologue
    .line 91
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/JDGameUtil;->checkJDGameHasExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    packed-switch p3, :pswitch_data_0

    .line 118
    const-string v2, "jd.jgame.login.CANCEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "loginName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "loginCookie"

    invoke-static {p2}, Lcom/jingdong/common/utils/JDGameUtil;->getDESCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_0
    const-string v2, "jd.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    const-string v2, "loginCookie"

    invoke-static {p2}, Lcom/jingdong/common/utils/JDGameUtil;->getDESCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "loginName"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v2, "jd.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v2, "com.jingdong.jgame"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v2, "jd.jgame.login.SUCCESS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 134
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-lt p5, v2, :cond_0

    .line 137
    sget-object v2, Lcom/jingdong/common/res/StringUtil;->jd_game_app_has_no_install:Ljava/lang/String;

    const-string v3, "jdgame"

    invoke-static {p0, p4, p5, v2, v3}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->tryDownloadAndInstall(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sendLogoutBroadCast(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "jd.jgame.login.OUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
