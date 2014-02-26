.class public Lcom/jingdong/common/utils/ReadContactsUtil;
.super Ljava/lang/Object;
.source "ReadContactsUtil.java"


# static fields
.field public static final IS_FIRST_READ_CANTACTS:Ljava/lang/String; = "isFirstReadContacts"

.field public static final REQUEST_CODE_READ_CONTACTS:I = 0x44c

.field private static final TAG:Ljava/lang/String; = "ReadContactsUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-static {p0}, Lcom/jingdong/common/utils/ReadContactsUtil;->forwardContacts(Lcom/jingdong/common/frame/IMyActivity;)V

    return-void
.end method

.method private static checkSDKForReadContacts()Z
    .locals 3

    .prologue
    .line 251
    const/4 v1, 0x5

    .line 254
    .local v1, sdkNum:I
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 262
    :goto_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 263
    const/4 v2, 0x1

    .line 266
    :goto_1
    return v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static forwardContacts(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 4
    .parameter "webActivity"

    .prologue
    const/16 v3, 0x44c

    .line 319
    invoke-static {}, Lcom/jingdong/common/utils/ReadContactsUtil;->checkSDKForReadContacts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 321
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p0, v0, v3}, Lcom/jingdong/common/frame/IMyActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 327
    :goto_0
    return-void

    .line 324
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 325
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-interface {p0, v0, v3}, Lcom/jingdong/common/frame/IMyActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static handleContacts(Landroid/content/Context;Landroid/content/Intent;Landroid/webkit/WebView;)V
    .locals 7
    .parameter "context"
    .parameter "data"
    .parameter "webview"

    .prologue
    const/4 v2, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 77
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/jingdong/common/utils/ReadContactsUtil;->checkSDKForReadContacts()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-static {p0, v6, p2}, Lcom/jingdong/common/utils/ReadContactsUtil;->readContactsForNewSDK(Landroid/content/Context;Landroid/database/Cursor;Landroid/webkit/WebView;)V

    .line 96
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 93
    :cond_3
    invoke-static {p0, v6, p2}, Lcom/jingdong/common/utils/ReadContactsUtil;->readContactsForOldSDK(Landroid/content/Context;Landroid/database/Cursor;Landroid/webkit/WebView;)V

    goto :goto_1
.end method

.method private static judgeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    const/16 v1, 0xb

    .line 341
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const-string p0, ""

    .line 356
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 345
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 353
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :cond_3
    const-string p0, ""

    goto :goto_0
.end method

.method public static readContacts(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 3
    .parameter "webActivity"

    .prologue
    .line 49
    const-string v1, "isFirstReadContacts"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/CommonUtil;->getBooleanFromPreference(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50
    .local v0, isFirstReadConstacts:Z
    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0}, Lcom/jingdong/common/utils/ReadContactsUtil;->showPermissonDialog(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/jingdong/common/utils/ReadContactsUtil;->forwardContacts(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0
.end method

.method private static readContactsForNewSDK(Landroid/content/Context;Landroid/database/Cursor;Landroid/webkit/WebView;)V
    .locals 22
    .parameter "context"
    .parameter "cursor"
    .parameter "webview"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 109
    .line 110
    const-string v2, "has_phone_number"

    .line 109
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, hasPhone:Ljava/lang/String;
    const-string v2, "_id"

    .line 111
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, id:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contact_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 119
    const/4 v4, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 118
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 124
    .local v17, phoneCursor:Landroid/database/Cursor;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 128
    .local v15, numberSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v16

    .line 150
    .local v16, numberSize:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v10, finalPhoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 154
    .local v20, resultSize:I
    if-lez v16, :cond_1

    .line 156
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 158
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 166
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 169
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_4

    .line 171
    move/from16 v0, v20

    new-array v9, v0, [Ljava/lang/CharSequence;

    .line 172
    .local v9, charArray:[Ljava/lang/CharSequence;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 173
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    sget-object v2, Lcom/jingdong/common/res/StringUtil;->recharge_get_contacts:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 175
    const/4 v2, 0x0

    new-instance v3, Lcom/jingdong/common/utils/ReadContactsUtil$1;

    move-object/from16 v0, p2

    invoke-direct {v3, v10, v0}, Lcom/jingdong/common/utils/ReadContactsUtil$1;-><init>(Ljava/util/ArrayList;Landroid/webkit/WebView;)V

    invoke-virtual {v8, v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 199
    .end local v8           #builder:Landroid/app/AlertDialog$Builder;
    .end local v9           #charArray:[Ljava/lang/CharSequence;
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 212
    .end local v5           #selection:Ljava/lang/String;
    .end local v10           #finalPhoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #numberSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #numberSize:I
    .end local v17           #phoneCursor:Landroid/database/Cursor;
    .end local v20           #resultSize:I
    :goto_3
    return-void

    .line 131
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v15       #numberSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17       #phoneCursor:Landroid/database/Cursor;
    :cond_2
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 130
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 133
    .local v18, phoneNumber:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 143
    invoke-static/range {v18 .. v18}, Lcom/jingdong/common/utils/ReadContactsUtil;->judgeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 144
    .local v19, resultNumber:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v18           #phoneNumber:Ljava/lang/String;
    .end local v19           #resultNumber:Ljava/lang/String;
    .restart local v10       #finalPhoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v16       #numberSize:I
    .restart local v20       #resultSize:I
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    if-lez v20, :cond_5

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 192
    .local v14, number:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:contactsCallBack(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 193
    .local v21, url:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 196
    .end local v14           #number:Ljava/lang/String;
    .end local v21           #url:Ljava/lang/String;
    :cond_5
    const-string v21, "javascript:contactsCallBack(\'\')"

    .line 197
    .restart local v21       #url:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 206
    .end local v5           #selection:Ljava/lang/String;
    .end local v10           #finalPhoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #numberSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #numberSize:I
    .end local v17           #phoneCursor:Landroid/database/Cursor;
    .end local v20           #resultSize:I
    .end local v21           #url:Ljava/lang/String;
    :cond_6
    const-string v21, "javascript:contactsCallBack(\'\')"

    .line 207
    .restart local v21       #url:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static readContactsForOldSDK(Landroid/content/Context;Landroid/database/Cursor;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "webview"

    .prologue
    .line 222
    .line 223
    const-string v3, "number"

    .line 222
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const-string v2, "javascript:contactsCallBack(\'\')"

    .line 229
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 232
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/jingdong/common/utils/ReadContactsUtil;->judgeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, resultNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:contactsCallBack(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .restart local v2       #url:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    const-string v2, "javascript:contactsCallBack(\'\')"

    .line 239
    .restart local v2       #url:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showPermissonDialog(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 2
    .parameter "webActivity"

    .prologue
    .line 276
    new-instance v0, Lcom/jingdong/common/utils/ReadContactsUtil$2;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/ReadContactsUtil$2;-><init>(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 300
    .local v0, controller:Lcom/jingdong/common/ui/DialogController;
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->recharge_get_contacts_permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 302
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->ok:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 303
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->cancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 304
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->init(Landroid/content/Context;)V

    .line 305
    invoke-virtual {v0}, Lcom/jingdong/common/ui/DialogController;->show()V

    .line 307
    return-void
.end method
