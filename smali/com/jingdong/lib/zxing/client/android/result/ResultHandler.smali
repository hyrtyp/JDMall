.class public abstract Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.super Ljava/lang/Object;
.source "ResultHandler.java"


# static fields
.field private static final ADDRESS_TYPE_STRINGS:[Ljava/lang/String; = null

.field private static final ADDRESS_TYPE_VALUES:[I = null

.field private static final EMAIL_TYPE_STRINGS:[Ljava/lang/String; = null

.field private static final EMAIL_TYPE_VALUES:[I = null

.field private static final GOOGLE_SHOPPER_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.shopper.results.SearchResultsActivity"

.field private static final GOOGLE_SHOPPER_PACKAGE:Ljava/lang/String; = "com.google.android.apps.shopper"

.field private static final MARKET_REFERRER_SUFFIX:Ljava/lang/String; = "&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

.field private static final MARKET_URI_PREFIX:Ljava/lang/String; = "market://details?id="

.field public static final MAX_BUTTON_COUNT:I = 0x4

.field private static final NO_TYPE:I = -0x1

.field private static final PHONE_TYPE_STRINGS:[Ljava/lang/String;

.field private static final PHONE_TYPE_VALUES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final customProductSearch:Ljava/lang/String;

.field private final rawResult:Lcom/google/zxing/Result;

.field private final result:Lcom/google/zxing/client/result/ParsedResult;

.field private final shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 58
    const-class v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    .line 66
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string v1, "work"

    aput-object v1, v0, v5

    .line 67
    const-string v1, "mobile"

    aput-object v1, v0, v3

    .line 66
    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_STRINGS:[Ljava/lang/String;

    .line 68
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string v1, "work"

    aput-object v1, v0, v5

    .line 69
    const-string v1, "mobile"

    aput-object v1, v0, v3

    const-string v1, "fax"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "pager"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "main"

    aput-object v2, v0, v1

    .line 68
    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->PHONE_TYPE_STRINGS:[Ljava/lang/String;

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string v1, "work"

    aput-object v1, v0, v5

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

    .line 71
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_VALUES:[I

    .line 75
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->PHONE_TYPE_VALUES:[I

    .line 82
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_VALUES:[I

    .line 87
    return-void

    .line 71
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 75
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 82
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 1
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 1
    .parameter "activity"
    .parameter "result"
    .parameter "rawResult"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler$1;

    invoke-direct {v0, p0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler$1;-><init>(Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;)V

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    iput-object p2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    .line 109
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    .line 110
    iput-object p3, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    .line 111
    invoke-direct {p0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->parseCustomSearchURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private static doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 4
    .parameter "typeString"
    .parameter "types"
    .parameter "values"

    .prologue
    const/4 v2, -0x1

    .line 305
    if-nez p0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v2

    .line 308
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 309
    aget-object v1, p1, v0

    .line 310
    .local v1, type:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 311
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    :cond_2
    aget v2, p2, v0

    goto :goto_0

    .line 308
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseCustomSearchURL()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 530
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 532
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_custom_product_search"

    .line 531
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, customProductSearch:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 537
    .end local v0           #customProductSearch:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 523
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 524
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    :cond_0
    return-void
.end method

.method private static toAddressContractType(Ljava/lang/String;)I
    .locals 2
    .parameter "typeString"

    .prologue
    .line 299
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

    .line 300
    sget-object v1, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_VALUES:[I

    .line 299
    invoke-static {p0, v0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static toEmailContractType(Ljava/lang/String;)I
    .locals 2
    .parameter "typeString"

    .prologue
    .line 289
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_STRINGS:[Ljava/lang/String;

    .line 290
    sget-object v1, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_VALUES:[I

    .line 289
    invoke-static {p0, v0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static toPhoneContractType(Ljava/lang/String;)I
    .locals 2
    .parameter "typeString"

    .prologue
    .line 294
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->PHONE_TYPE_STRINGS:[Ljava/lang/String;

    .line 295
    sget-object v1, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->PHONE_TYPE_VALUES:[I

    .line 294
    invoke-static {p0, v0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method


# virtual methods
.method final addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "names"
    .parameter "pronunciation"
    .parameter "phoneNumbers"
    .parameter "phoneTypes"
    .parameter "emails"
    .parameter "emailTypes"
    .parameter "note"
    .parameter "instantMessenger"
    .parameter "address"
    .parameter "addressType"
    .parameter "org"
    .parameter "title"
    .parameter "url"
    .parameter "birthday"

    .prologue
    .line 225
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT_OR_EDIT"

    .line 226
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 225
    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "vnd.android.cursor.item/contact"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v9, "name"

    .line 229
    if-eqz p1, :cond_2

    const/4 v8, 0x0

    aget-object v8, p1, v8

    .line 228
    :goto_0
    invoke-static {v4, v9, v8}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v8, "phonetic_name"

    invoke-static {v4, v8, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-eqz p3, :cond_3

    array-length v8, p3

    .line 235
    :goto_1
    sget-object v9, Lcom/jingdong/lib/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v9, v9

    .line 234
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 236
    .local v5, phoneCount:I
    const/4 v7, 0x0

    .local v7, x:I
    :goto_2
    if-lt v7, v5, :cond_4

    .line 246
    if-eqz p5, :cond_6

    move-object/from16 v0, p5

    array-length v8, v0

    .line 247
    :goto_3
    sget-object v9, Lcom/jingdong/lib/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v9, v9

    .line 246
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 248
    .local v3, emailCount:I
    const/4 v7, 0x0

    :goto_4
    if-lt v7, v3, :cond_7

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v2, aggregatedNotes:Ljava/lang/StringBuilder;
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p13, v9, v8

    const/4 v8, 0x1

    aput-object p14, v9, v8

    const/4 v8, 0x2

    aput-object p7, v9, v8

    array-length v10, v9

    const/4 v8, 0x0

    :goto_5
    if-lt v8, v10, :cond_9

    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 269
    const-string v8, "notes"

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 269
    invoke-static {v4, v8, v9}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    const-string v8, "im_handle"

    move-object/from16 v0, p8

    invoke-static {v4, v8, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v8, "postal"

    move-object/from16 v0, p9

    invoke-static {v4, v8, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-eqz p10, :cond_1

    .line 277
    invoke-static/range {p10 .. p10}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->toAddressContractType(Ljava/lang/String;)I

    move-result v6

    .line 278
    .local v6, type:I
    if-ltz v6, :cond_1

    .line 279
    const-string v8, "postal_type"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    .end local v6           #type:I
    :cond_1
    const-string v8, "company"

    move-object/from16 v0, p11

    invoke-static {v4, v8, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v8, "job_title"

    move-object/from16 v0, p12

    invoke-static {v4, v8, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, v4}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 286
    return-void

    .line 229
    .end local v2           #aggregatedNotes:Ljava/lang/StringBuilder;
    .end local v3           #emailCount:I
    .end local v5           #phoneCount:I
    .end local v7           #x:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 235
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 237
    .restart local v5       #phoneCount:I
    .restart local v7       #x:I
    :cond_4
    sget-object v8, Lcom/jingdong/lib/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    aget-object v9, p3, v7

    invoke-static {v4, v8, v9}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    array-length v8, v0

    if-ge v7, v8, :cond_5

    .line 239
    aget-object v8, p4, v7

    invoke-static {v8}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->toPhoneContractType(Ljava/lang/String;)I

    move-result v6

    .line 240
    .restart local v6       #type:I
    if-ltz v6, :cond_5

    .line 241
    sget-object v8, Lcom/jingdong/lib/zxing/client/android/Contents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    .end local v6           #type:I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 246
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 249
    .restart local v3       #emailCount:I
    :cond_7
    sget-object v8, Lcom/jingdong/lib/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    aget-object v9, p5, v7

    invoke-static {v4, v8, v9}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz p6, :cond_8

    move-object/from16 v0, p6

    array-length v8, v0

    if-ge v7, v8, :cond_8

    .line 251
    aget-object v8, p6, v7

    invoke-static {v8}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->toEmailContractType(Ljava/lang/String;)I

    move-result v6

    .line 252
    .restart local v6       #type:I
    if-ltz v6, :cond_8

    .line 253
    sget-object v8, Lcom/jingdong/lib/zxing/client/android/Contents;->EMAIL_TYPE_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    .end local v6           #type:I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 260
    .restart local v2       #aggregatedNotes:Ljava/lang/StringBuilder;
    :cond_9
    aget-object v1, v9, v8

    .line 261
    .local v1, aNote:Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 263
    const/16 v11, 0xa

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    :cond_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5
.end method

.method final addEmailOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "emails"
    .parameter "emailTypes"

    .prologue
    .line 214
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 215
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 214
    invoke-virtual/range {v0 .. v14}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method final addPhoneOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "phoneNumbers"
    .parameter "phoneTypes"

    .prologue
    .line 209
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 210
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 209
    invoke-virtual/range {v0 .. v14}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public areContentsSecure()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method final dialPhone(Ljava/lang/String;)V
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method final dialPhoneFromUri(Ljava/lang/String;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 541
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 553
    .end local p1
    :goto_0
    return-object p1

    .line 544
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    const-string v3, "%s"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    if-eqz v2, :cond_1

    .line 546
    const-string v2, "%f"

    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 547
    const-string v2, "%t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 550
    .local v0, parsedResultAgain:Lcom/google/zxing/client/result/ParsedResult;
    const-string v2, "%t"

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .end local v0           #parsedResultAgain:Lcom/google/zxing/client/result/ParsedResult;
    :cond_1
    move-object p1, v1

    .line 553
    goto :goto_0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract getButtonCount()I
.end method

.method public abstract getButtonText(I)I
.end method

.method final getDirections(DD)V
    .locals 4
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://maps.google."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/jingdong/lib/zxing/client/android/LocaleManager;->getCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    const-string v3, "/maps?f=d&daddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, contents:Ljava/lang/String;
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getDisplayTitle()I
.end method

.method public getResult()Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    return-object v0
.end method

.method public final getType()Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleButtonPress(I)V
.end method

.method hasCustomProductSearch()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 512
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->rawLaunchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0705ad

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 517
    const v2, 0x7f070581

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method final openBookSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "isbn"

    .prologue
    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://books.google."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/jingdong/lib/zxing/client/android/LocaleManager;->getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    const-string v2, "/books?vid=isbn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 429
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 430
    return-void
.end method

.method final openGoogleShopper(Ljava/lang/String;)V
    .locals 6
    .parameter "query"

    .prologue
    .line 467
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.google.android.apps.shopper"

    const-string v5, "com.google.android.apps.shopper.results.SearchResultsActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v4, "query"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 474
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v4, 0x1

    .line 473
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 476
    .local v0, availableApps:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 478
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 489
    :goto_0
    return-void

    .line 481
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0705ab

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 483
    const v4, 0x7f0705ac

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 485
    const v4, 0x7f070581

    iget-object v5, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    const v4, 0x7f070579

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 487
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method final openMap(Ljava/lang/String;)V
    .locals 3
    .parameter "geoURI"

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method final openProductSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "upc"

    .prologue
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.google."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/jingdong/lib/zxing/client/android/LocaleManager;->getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    const-string v2, "/m/products?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&source=zxing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 422
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 423
    return-void
.end method

.method final openURL(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 445
    const-string v2, "HTTP://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 450
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 452
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_1
    return-void

    .line 447
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const-string v2, "HTTPS://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 453
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 454
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nothing available to handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method rawLaunchIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    const/high16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 501
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 504
    :cond_0
    return-void
.end method

.method final searchBookContents(Ljava/lang/String;)V
    .locals 0
    .parameter "isbnOrUrl"

    .prologue
    .line 438
    return-void
.end method

.method final searchMap(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "address"
    .parameter "title"

    .prologue
    .line 401
    move-object v0, p1

    .line 402
    .local v0, query:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "geo:0,0?q="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 407
    return-void
.end method

.method final sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mailto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method final sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "email"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 332
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 333
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :cond_0
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-static {v0, v1, p3}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "android.intent.extra.TEXT"

    invoke-static {v0, v1, p4}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method final sendMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "phoneNumber"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mmsto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->sendMMSFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method final sendMMSFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    const-string v1, "subject"

    .line 369
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    const v3, 0x7f0705a4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v0, v1, v2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    const-string v1, "sms_body"

    invoke-static {v0, v1, p3}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "compose_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 376
    return-void

    .line 371
    :cond_1
    const-string v1, "subject"

    invoke-static {v0, v1, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "phoneNumber"
    .parameter "body"

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smsto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method final sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "body"

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 353
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sms_body"

    invoke-static {v0, v1, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "compose_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 357
    return-void
.end method

.method final shareByEmail(Ljava/lang/String;)V
    .locals 4
    .parameter "contents"

    .prologue
    .line 319
    const-string v0, "mailto:"

    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    const v3, 0x7f0705b8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method final shareBySMS(Ljava/lang/String;)V
    .locals 4
    .parameter "contents"

    .prologue
    .line 342
    const-string v0, "smsto:"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    const v3, 0x7f0705b8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method showGoogleShopperButton(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 179
    return-void
.end method

.method final webSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v0}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 462
    return-void
.end method
