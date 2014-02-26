.class public final Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;
.super Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.source "AddressBookResultHandler.java"


# static fields
.field private static final BUTTON_TEXTS:[I

.field private static final DATE_FORMATS:[Ljava/text/DateFormat;


# instance fields
.field private buttonCount:I

.field private final fields:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x0

    .line 42
    new-array v1, v7, [Ljava/text/DateFormat;

    .line 43
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v1, v2

    const/4 v3, 0x1

    .line 44
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd\'T\'HHmmss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 45
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v1, v3

    const/4 v3, 0x3

    .line 46
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v1, v3

    .line 42
    sput-object v1, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    .line 48
    sget-object v3, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    array-length v4, v3

    move v1, v2

    .local v0, format:Ljava/text/DateFormat;
    :goto_0
    if-lt v1, v4, :cond_0

    .line 53
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->BUTTON_TEXTS:[I

    .line 55
    return-void

    .line 48
    :cond_0
    aget-object v0, v3, v1

    .line 49
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    nop

    :array_0
    .array-data 0x4
        0x76t 0x5t 0x7t 0x7ft
        0x8bt 0x5t 0x7t 0x7ft
        0x7bt 0x5t 0x7t 0x7ft
        0x7dt 0x5t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 12
    .parameter "activity"
    .parameter "result"

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    move-object v0, p2

    .line 80
    check-cast v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 81
    .local v0, addressResult:Lcom/google/zxing/client/result/AddressBookParsedResult;
    invoke-virtual {v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, addresses:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v10, v1

    if-lez v10, :cond_0

    .line 83
    aget-object v10, v1, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 82
    if-lez v10, :cond_0

    move v3, v8

    .line 84
    .local v3, hasAddress:Z
    :goto_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, phoneNumbers:[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 86
    array-length v10, v6

    .line 85
    if-lez v10, :cond_1

    move v5, v8

    .line 87
    .local v5, hasPhoneNumber:Z
    :goto_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, emails:[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v10, v2

    if-lez v10, :cond_2

    move v4, v8

    .line 90
    .local v4, hasEmailAddress:Z
    :goto_2
    new-array v10, v11, [Z

    iput-object v10, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    .line 91
    iget-object v10, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    aput-boolean v8, v10, v9

    .line 92
    iget-object v10, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    aput-boolean v3, v10, v8

    .line 93
    iget-object v8, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    const/4 v10, 0x2

    aput-boolean v5, v8, v10

    .line 94
    iget-object v8, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    const/4 v10, 0x3

    aput-boolean v4, v8, v10

    .line 96
    iput v9, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    .line 97
    const/4 v7, 0x0

    .local v7, x:I
    :goto_3
    if-lt v7, v11, :cond_3

    .line 102
    return-void

    .end local v2           #emails:[Ljava/lang/String;
    .end local v3           #hasAddress:Z
    .end local v4           #hasEmailAddress:Z
    .end local v5           #hasPhoneNumber:Z
    .end local v6           #phoneNumbers:[Ljava/lang/String;
    .end local v7           #x:I
    :cond_0
    move v3, v9

    .line 82
    goto :goto_0

    .restart local v3       #hasAddress:Z
    .restart local v6       #phoneNumbers:[Ljava/lang/String;
    :cond_1
    move v5, v9

    .line 85
    goto :goto_1

    .restart local v2       #emails:[Ljava/lang/String;
    .restart local v5       #hasPhoneNumber:Z
    :cond_2
    move v4, v9

    .line 88
    goto :goto_2

    .line 98
    .restart local v4       #hasEmailAddress:Z
    .restart local v7       #x:I
    :cond_3
    iget-object v8, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_4

    .line 99
    iget v8, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    .line 97
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method private mapIndexToAction(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 64
    iget v2, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    if-ge p1, v2, :cond_0

    .line 65
    const/4 v0, -0x1

    .line 66
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 75
    .end local v0           #count:I
    .end local v1           #x:I
    :cond_0
    const/4 v1, -0x1

    :cond_1
    return v1

    .line 67
    .restart local v0       #count:I
    .restart local v1       #x:I
    :cond_2
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->fields:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 70
    :cond_3
    if-eq v0, p1, :cond_1

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "s"

    .prologue
    .line 153
    sget-object v2, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 160
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 153
    :cond_0
    aget-object v0, v2, v1

    .line 155
    .local v0, currentFormat:Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 156
    :catch_0
    move-exception v4

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->buttonCount:I

    return v0
.end method

.method public getButtonText(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 111
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->BUTTON_TEXTS:[I

    invoke-direct {p0, p1}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->mapIndexToAction(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 168
    .local v7, result:Lcom/google/zxing/client/result/AddressBookParsedResult;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v1, contents:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 172
    .local v3, namesLength:I
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPronunciation()Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, pronunciation:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 174
    const-string v9, "\n("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/16 v9, 0x29

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 180
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 181
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 182
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, numbers:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 184
    array-length v11, v5

    move v9, v10

    :goto_0
    if-lt v9, v11, :cond_3

    .line 189
    :cond_1
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 190
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 192
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, birthday:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 194
    invoke-static {v0}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 195
    .local v2, date:Ljava/util/Date;
    if-eqz v2, :cond_2

    .line 197
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v9

    .line 198
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 197
    invoke-virtual {v9, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 201
    .end local v2           #date:Ljava/util/Date;
    :cond_2
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 203
    if-lez v3, :cond_4

    .line 205
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 206
    .local v8, styled:Landroid/text/Spannable;
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v8, v9, v10, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 210
    .end local v8           #styled:Landroid/text/Spannable;
    :goto_1
    return-object v8

    .line 184
    .end local v0           #birthday:Ljava/lang/String;
    :cond_3
    aget-object v4, v5, v9

    .line 185
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 184
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 210
    .end local v4           #number:Ljava/lang/String;
    .restart local v0       #birthday:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 216
    const v0, 0x7f0705d9

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 23
    .parameter "index"

    .prologue
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 117
    .local v18, addressResult:Lcom/google/zxing/client/result/AddressBookParsedResult;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v20

    .line 118
    .local v20, addresses:[Ljava/lang/String;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    :cond_0
    const/4 v11, 0x0

    .line 120
    .local v11, address1:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddressTypes()[Ljava/lang/String;

    move-result-object v19

    .line 121
    .local v19, addressTypes:[Ljava/lang/String;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    :cond_1
    const/4 v12, 0x0

    .line 123
    .local v12, address1Type:Ljava/lang/String;
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->mapIndexToAction(I)I

    move-result v17

    .line 124
    .local v17, action:I
    packed-switch v17, :pswitch_data_0

    .line 150
    :goto_2
    return-void

    .line 119
    .end local v11           #address1:Ljava/lang/String;
    .end local v12           #address1Type:Ljava/lang/String;
    .end local v17           #action:I
    .end local v19           #addressTypes:[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    aget-object v11, v20, v2

    goto :goto_0

    .line 122
    .restart local v11       #address1:Ljava/lang/String;
    .restart local v19       #addressTypes:[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    aget-object v12, v19, v2

    goto :goto_1

    .line 126
    .restart local v12       #address1Type:Ljava/lang/String;
    .restart local v17       #action:I
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPronunciation()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneTypes()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmailTypes()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object v9

    .line 131
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getInstantMessenger()Ljava/lang/String;

    move-result-object v10

    .line 132
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v13

    .line 133
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURL()Ljava/lang/String;

    move-result-object v15

    .line 134
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v2, p0

    .line 126
    invoke-virtual/range {v2 .. v16}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 137
    :pswitch_1
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v21

    .line 138
    .local v21, names:[Ljava/lang/String;
    if-eqz v21, :cond_4

    const/4 v2, 0x0

    aget-object v22, v21, v2

    .line 139
    .local v22, title:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->searchMap(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 138
    .end local v22           #title:Ljava/lang/String;
    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    .line 142
    .end local v21           #names:[Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->dialPhone(Ljava/lang/String;)V

    goto :goto_2

    .line 145
    :pswitch_3
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/jingdong/lib/zxing/client/android/result/AddressBookResultHandler;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
