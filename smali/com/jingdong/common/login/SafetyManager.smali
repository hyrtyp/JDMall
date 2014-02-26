.class public Lcom/jingdong/common/login/SafetyManager;
.super Ljava/lang/Object;
.source "SafetyManager.java"


# static fields
.field private static final OLD_NEW_COOKIES:Ljava/lang/String; = "cookies"

.field private static final OLD_OLD_COOKIES:Ljava/lang/String; = "oldCookies"

.field private static final OLD_REMEMBER_FLAG:Ljava/lang/String; = "remember"

.field private static final OLD_REMEMBER_NAME:Ljava/lang/String; = "userName"

.field private static final OLD_REMEMBER_PASSWORD:Ljava/lang/String; = "password"

.field private static final SHARED_PREFERENCE_COOKIES:Ljava/lang/String; = "jdPrice"

.field private static final SHARED_PREFERENCE_COOKIES_OLD:Ljava/lang/String; = "price"

.field private static final SHARED_PREFERENCE_IS_REMEMBER:Ljava/lang/String; = "isCollection"

.field private static final SHARED_PREFERENCE_PASSWORD:Ljava/lang/String; = "name"

.field private static final SHARED_PREFERENCE_USERNAME:Ljava/lang/String; = "productCode"

.field private static final TAG:Ljava/lang/String; = "SafetyManager"

.field private static cacheCookies:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSafety()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method

.method public static compatibleOldVersion()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 157
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "remember"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const-string v2, "userName"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v3, "password"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    const/4 v4, 0x1

    .line 159
    invoke-static {v2, v3, v4}, Lcom/jingdong/common/login/SafetyManager;->saveSafety(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "remember"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v2, "userName"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v2, "password"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v2, "cookies"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    const-string v2, "cookies"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/login/SafetyManager;->saveCookies(Ljava/lang/String;)V

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cookies"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    :cond_1
    const-string v2, "oldCookies"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 181
    const-string v2, "oldCookies"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/login/SafetyManager;->saveOldCookies(Ljava/lang/String;)V

    .line 184
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "oldCookies"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    :cond_2
    return-void
.end method

.method public static getCookies()Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "jdPrice"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, cookies:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 213
    invoke-static {v0}, Lcom/jingdong/common/utils/JniUtils;->dP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_0
    return-object v0
.end method

.method public static getOldCookies()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "price"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, cookies:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 264
    invoke-static {v0}, Lcom/jingdong/common/utils/JniUtils;->dP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    return-object v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "name"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, password:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 126
    invoke-static {v0}, Lcom/jingdong/common/utils/JniUtils;->dP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/jingdong/common/MyApplication;->networkSetting()V

    .line 65
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private static getSharedPreferencesName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/JniUtils;->getSHN()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "productCode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 113
    invoke-static {v0}, Lcom/jingdong/common/utils/JniUtils;->dU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method public static initEncryptKey()V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "jd_key4"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-static {}, Lcom/jingdong/common/utils/JniUtils;->eMK()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "jd_key4"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    :cond_0
    sput-object v0, Lcom/jingdong/common/utils/CommonUtil;->miaoShaKey:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public static isRemember()Z
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isCollection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static removePassword()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method public static removeRemember()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isCollection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    return-void
.end method

.method public static removeUsername()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "productCode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public static saveCookies(Ljava/lang/String;)V
    .locals 3
    .parameter "cookies"

    .prologue
    .line 231
    sget-object v1, Lcom/jingdong/common/login/SafetyManager;->cacheCookies:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 232
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getCookies()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/login/SafetyManager;->cacheCookies:Ljava/lang/String;

    .line 235
    :cond_0
    sget-object v1, Lcom/jingdong/common/login/SafetyManager;->cacheCookies:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :goto_0
    return-void

    .line 241
    :cond_1
    sput-object p0, Lcom/jingdong/common/login/SafetyManager;->cacheCookies:Ljava/lang/String;

    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "jdPrice"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {p0}, Lcom/jingdong/common/utils/JniUtils;->eP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, tmpCookies:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "jdPrice"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveOldCookies(Ljava/lang/String;)V
    .locals 3
    .parameter "cookies"

    .prologue
    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "price"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {p0}, Lcom/jingdong/common/utils/JniUtils;->eP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, tmpCookies:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "price"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveSafety(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "name"
    .parameter "password"
    .parameter "isRemember"

    .prologue
    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lcom/jingdong/common/utils/JniUtils;->eU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, tmpName:Ljava/lang/String;
    const-string v3, "productCode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-static {p1}, Lcom/jingdong/common/utils/JniUtils;->eP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, tmpPassword:Ljava/lang/String;
    const-string v3, "name"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v3, "isCollection"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setRemember(Z)V
    .locals 2
    .parameter "isRemember"

    .prologue
    .line 95
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isCollection"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method
