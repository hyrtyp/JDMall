.class public Lcom/ja/sdk/utils/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field public static final JA_SDK_LOG_SHARE_PREFERENCE:Ljava/lang/String; = "ja_sdk_log_preference"

.field private static JaSdkSharedPreferences:Landroid/content/SharedPreferences;

.field private static sessionSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 32
    sget-object v0, Lcom/ja/sdk/utils/PreferenceUtils;->sessionSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/utils/PreferenceUtils;->sessionSharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    :cond_0
    sget-object v0, Lcom/ja/sdk/utils/PreferenceUtils;->sessionSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    sget-object v0, Lcom/ja/sdk/utils/PreferenceUtils;->JaSdkSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "ja_sdk_log_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/utils/PreferenceUtils;->JaSdkSharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    :cond_0
    sget-object v0, Lcom/ja/sdk/utils/PreferenceUtils;->JaSdkSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter "params"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/ja/sdk/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter "params"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/ja/sdk/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter "params"

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/ja/sdk/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    return-void
.end method
