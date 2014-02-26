.class public final Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final KEY_AUTO_FOCUS:Ljava/lang/String; = "preferences_auto_focus"

.field public static final KEY_BULK_MODE:Ljava/lang/String; = "preferences_bulk_mode"

.field public static final KEY_COPY_TO_CLIPBOARD:Ljava/lang/String; = "preferences_copy_to_clipboard"

.field public static final KEY_CUSTOM_PRODUCT_SEARCH:Ljava/lang/String; = "preferences_custom_product_search"

.field public static final KEY_DECODE_1D:Ljava/lang/String; = "preferences_decode_1D"

.field public static final KEY_DECODE_DATA_MATRIX:Ljava/lang/String; = "preferences_decode_Data_Matrix"

.field public static final KEY_DECODE_QR:Ljava/lang/String; = "preferences_decode_QR"

.field public static final KEY_DISABLE_CONTINUOUS_FOCUS:Ljava/lang/String; = "preferences_disable_continuous_focus"

.field public static final KEY_FRONT_LIGHT:Ljava/lang/String; = "preferences_front_light"

.field public static final KEY_HELP_VERSION_SHOWN:Ljava/lang/String; = "preferences_help_version_shown"

.field public static final KEY_PLAY_BEEP:Ljava/lang/String; = "preferences_play_beep"

.field public static final KEY_REMEMBER_DUPLICATES:Ljava/lang/String; = "preferences_remember_duplicates"

.field public static final KEY_SEARCH_COUNTRY:Ljava/lang/String; = "preferences_search_country"

.field public static final KEY_SUPPLEMENTAL:Ljava/lang/String; = "preferences_supplemental"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "preferences_vibrate"


# instance fields
.field private decode1D:Landroid/preference/CheckBoxPreference;

.field private decodeDataMatrix:Landroid/preference/CheckBoxPreference;

.field private decodeQR:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private disableLastCheckedPref()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v1, checked:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/preference/CheckBoxPreference;>;"
    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decode1D:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decode1D:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decodeQR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decodeQR:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    if-ge v6, v7, :cond_3

    move v2, v4

    .line 100
    .local v2, disable:Z
    :goto_0
    new-array v0, v8, [Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decode1D:Landroid/preference/CheckBoxPreference;

    aput-object v6, v0, v5

    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decodeQR:Landroid/preference/CheckBoxPreference;

    aput-object v6, v0, v4

    .line 101
    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    aput-object v6, v0, v7

    .line 102
    .local v0, checkBoxPreferences:[Landroid/preference/CheckBoxPreference;
    array-length v8, v0

    move v7, v5

    :goto_1
    if-lt v7, v8, :cond_4

    .line 105
    return-void

    .end local v0           #checkBoxPreferences:[Landroid/preference/CheckBoxPreference;
    .end local v2           #disable:Z
    :cond_3
    move v2, v5

    .line 99
    goto :goto_0

    .line 102
    .restart local v0       #checkBoxPreferences:[Landroid/preference/CheckBoxPreference;
    .restart local v2       #disable:Z
    :cond_4
    aget-object v3, v0, v7

    .line 103
    .local v3, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_5

    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    :goto_2
    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 102
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_5
    move v6, v4

    .line 103
    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 70
    .local v0, preferences:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 73
    const-string v1, "preferences_decode_1D"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 72
    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decode1D:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v1, "preferences_decode_QR"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 74
    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decodeQR:Landroid/preference/CheckBoxPreference;

    .line 77
    const-string v1, "preferences_decode_Data_Matrix"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 76
    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    .line 78
    invoke-direct {p0}, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->disableLastCheckedPref()V

    .line 79
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jingdong/lib/zxing/client/android/PreferencesActivity;->disableLastCheckedPref()V

    .line 85
    return-void
.end method
