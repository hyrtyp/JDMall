.class public Lcom/ja/analytics/utils/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field private static JaSdkSharedPreferences:Landroid/content/SharedPreferences;

.field private static sessionSessionTimePreferences:Landroid/content/SharedPreferences;

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
    .line 45
    sget-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->sessionSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->sessionSharedPreferences:Landroid/content/SharedPreferences;

    .line 48
    :cond_0
    sget-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->sessionSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getSessionTimePreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 30
    sget-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->sessionSessionTimePreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->sessionSessionTimePreferences:Landroid/content/SharedPreferences;

    .line 33
    :cond_0
    sget-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->sessionSessionTimePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 24
    sget-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->JaSdkSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->JaSdkSharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    :cond_0
    sget-object v0, Lcom/ja/analytics/utils/PreferenceUtils;->JaSdkSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static setSessionTimePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 36
    sget-object v1, Lcom/ja/analytics/utils/PreferenceUtils;->sessionSessionTimePreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/ja/analytics/utils/PreferenceUtils;->sessionSessionTimePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter "params"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/ja/analytics/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter "params"

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/ja/analytics/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "key"
    .parameter "params"

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/ja/analytics/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method
