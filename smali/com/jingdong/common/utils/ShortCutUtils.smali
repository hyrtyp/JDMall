.class public Lcom/jingdong/common/utils/ShortCutUtils;
.super Ljava/lang/Object;
.source "ShortCutUtils.java"


# static fields
.field static final ACTION_INSTALL:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field static final ACTION_UNINSTALL:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field public static final ADD_SHORT_CUT:I = 0x1

.field public static final DELETE_JD_APP_SHORT_CUT:I = 0x2

.field private static final JD_APP_NAME:Ljava/lang/String; = "\u4eac\u4e1c\u5546\u57ce"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOrDeleteShortcut(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 10
    .parameter "activity"
    .parameter "pakageName"
    .parameter "className"
    .parameter "shortcutName"
    .parameter "icon"
    .parameter "duplicate"
    .parameter "type"

    .prologue
    .line 223
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v4, localIntent:Landroid/content/Intent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".MainActivity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, p0, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    const/high16 v8, 0x20

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    move-object v3, p3

    .line 230
    .local v3, label:Ljava/lang/String;
    const/4 v0, 0x0

    .line 232
    .local v0, appIcon:I
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 234
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/16 v8, 0x2080

    :try_start_0
    invoke-virtual {v6, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 235
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_0

    .line 236
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    :cond_0
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v7, shortcut:Landroid/content/Intent;
    const-string v8, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    .line 249
    .local v5, localShortcutIconResource:Landroid/content/Intent$ShortcutIconResource;
    const-string v8, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    const-string v8, "duplicate"

    invoke-virtual {v7, v8, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    packed-switch p6, :pswitch_data_0

    .line 262
    :goto_0
    invoke-virtual {p0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #localShortcutIconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v7           #shortcut:Landroid/content/Intent;
    :goto_1
    return-void

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 254
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #localShortcutIconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v7       #shortcut:Landroid/content/Intent;
    :pswitch_0
    const-string v8, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 258
    :pswitch_1
    const-string v8, "android.intent.extra.shortcut.NAME"

    const-string v9, "\u4eac\u4e1c\u5546\u57ce"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v8, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static addShortcutToDesktop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 12
    .parameter "context"
    .parameter "pakageName"
    .parameter "className"
    .parameter "shortcutName"
    .parameter "icon"
    .parameter "duplicate"

    .prologue
    .line 87
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v8, shortcut:Landroid/content/Intent;
    move-object v5, p3

    .local v5, label:Ljava/lang/String;
    move-object/from16 v4, p4

    .line 90
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    .local v4, iconBitmapDrawabel:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 95
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/16 v9, 0x81

    :try_start_0
    invoke-virtual {v7, p1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 96
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_0

    .line 97
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    :cond_0
    if-nez v4, :cond_1

    .line 100
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_1
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v9, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string v9, "duplicate"

    move/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    new-instance v2, Landroid/content/ComponentName;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v2, comp:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v6, launcherIntent:Landroid/content/Intent;
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    const-string v9, "android.intent.extra.shortcut.INTENT"

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #comp:Landroid/content/ComponentName;
    .end local v6           #launcherIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addShortcutToOptions(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 11
    .parameter "activity"
    .parameter "pakageName"
    .parameter "className"
    .parameter "shortcutName"
    .parameter "icon"
    .parameter "duplicate"

    .prologue
    .line 37
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v7, shortcut:Landroid/content/Intent;
    move-object v5, p3

    .local v5, label:Ljava/lang/String;
    move-object v4, p4

    .line 40
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .local v4, iconBitmapDrawabel:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 45
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/16 v8, 0x2080

    :try_start_0
    invoke-virtual {v6, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 46
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_0

    .line 47
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 49
    :cond_0
    if-nez v4, :cond_1

    .line 50
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v8, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v2, comp:Landroid/content/ComponentName;
    const-string v8, "android.intent.extra.shortcut.INTENT"

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 67
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #comp:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v3

    .line 53
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addSortcutForJdApp(Landroid/app/Activity;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 170
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 171
    .local v7, defaltPreference:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    .local v2, className:Ljava/lang/String;
    move-object v0, p0

    move-object v4, v3

    .line 205
    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/utils/ShortCutUtils;->addOrDeleteShortcut(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    .line 206
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "add_short_cut_flag_new"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, p0

    move-object v4, v3

    .line 207
    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/utils/ShortCutUtils;->addShortcutToOptions(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 208
    return-void
.end method

.method public static delShortcutFromDesktop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "pakageName"
    .parameter "className"
    .parameter "shortcutName"

    .prologue
    .line 136
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v5, shortcut:Landroid/content/Intent;
    move-object v3, p3

    .line 141
    .local v3, label:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 143
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v6, 0x2080

    :try_start_0
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_0

    .line 145
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 154
    :cond_0
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v1, comp:Landroid/content/ComponentName;
    const-string v6, "android.intent.extra.shortcut.INTENT"

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #comp:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteOldJdAppShortCut(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/utils/ShortCutUtils;->addOrDeleteShortcut(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    .line 272
    return-void
.end method
