.class public Lcom/jingdong/common/utils/ShakeUtils;
.super Ljava/lang/Object;
.source "ShakeUtils.java"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "shake_cache.txt"

.field private static final TAG:Ljava/lang/String;

.field public static mShakeRunnableStart:Ljava/lang/Runnable;

.field public static mShakeRunnableStop:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jingdong/common/utils/ShakeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/ShakeUtils;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handelShare(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
    .locals 3
    .parameter "mContext"
    .parameter "text"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5206\u4eab\u5230\uff1a"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public static handleBeforeColorString(Lcom/jingdong/common/frame/IMyActivity;ILjava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 9
    .parameter "mContext"
    .parameter "stringId"
    .parameter "comment"
    .parameter "color"

    .prologue
    const/16 v8, 0x21

    .line 78
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 79
    .local v3, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 80
    .local v0, colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v3

    .line 83
    :cond_1
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v5, p1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, start:I
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v1, v5, v6

    .line 93
    .local v1, end:I
    if-le v1, v4, :cond_0

    .line 94
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const/high16 v6, 0x3f80

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3, v5, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 95
    invoke-virtual {v3, v0, v4, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static handleColorString(Lcom/jingdong/common/frame/IMyActivity;ILjava/lang/String;Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .locals 8
    .parameter "mContext"
    .parameter "stringId"
    .parameter "prize"
    .parameter "title"
    .parameter "start"
    .parameter "color"

    .prologue
    const/16 v7, 0x21

    .line 58
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 59
    .local v3, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 60
    .local v0, colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    :goto_0
    return-object v3

    .line 63
    :cond_0
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-virtual {v4, p1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, label:Ljava/lang/CharSequence;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, p4, v4

    .line 66
    .local v1, end:I
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 68
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3f80

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3, v4, p4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    invoke-virtual {v3, v0, p4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static isCanShakeing(Ljava/util/Date;)Z
    .locals 10
    .parameter "date"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 275
    if-nez p0, :cond_1

    move v4, v7

    .line 314
    :cond_0
    :goto_0
    return v4

    .line 278
    :cond_1
    const/4 v4, 0x0

    .line 279
    .local v4, isCanShake:Z
    const-string v6, ""

    .line 280
    .local v6, standardDateFromSD:Ljava/lang/String;
    const-string v2, ""

    .line 281
    .local v2, currentShakeTimesFromSD:Ljava/lang/String;
    const/4 v0, 0x0

    .line 282
    .local v0, canShakeTimes:I
    const-string v1, ""

    .line 283
    .local v1, currentData:Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    .local v3, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {}, Lcom/jingdong/common/utils/ShakeUtils;->loadShakeTimesFromSD()[Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, shake:[Ljava/lang/String;
    if-eqz v5, :cond_5

    array-length v8, v5

    if-le v8, v9, :cond_5

    .line 287
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 288
    aget-object v8, v5, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 296
    invoke-static {v2, v7}, Lcom/jingdong/common/utils/MathsUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 299
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 301
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 302
    if-gtz v0, :cond_3

    .line 303
    const/4 v4, 0x0

    .line 304
    goto :goto_0

    .line 305
    :cond_3
    const/4 v4, 0x1

    .line 307
    goto :goto_0

    .line 308
    :cond_4
    const/4 v4, 0x1

    .line 311
    goto :goto_0

    .line 312
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isCellphone(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 115
    const-string v2, "1[0-9]{10}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 116
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 117
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x1

    .line 120
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .parameter "mobiles"

    .prologue
    .line 125
    const-string v2, "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 126
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 127
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 130
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadShakeTimesFromSD()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 231
    const/4 v10, 0x5

    invoke-static {v10}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v0

    .line 233
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "shake_cache.txt"

    invoke-direct {v2, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v8, v9

    .line 266
    :cond_0
    :goto_0
    return-object v8

    .line 237
    :cond_1
    const/4 v3, 0x0

    .line 238
    .local v3, inputStream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 241
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 242
    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 243
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_4

    .line 259
    if-eqz v7, :cond_6

    .line 260
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_3
    :goto_1
    move-object v8, v9

    .line 266
    goto :goto_0

    .line 244
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_4
    :try_start_4
    const-string v10, ":"

    invoke-static {v5, v10}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, strings:[Ljava/lang/String;
    array-length v10, v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    const/4 v11, 0x2

    if-lt v10, v11, :cond_2

    .line 259
    if-eqz v7, :cond_0

    .line 260
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #strings:[Ljava/lang/String;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    .line 259
    :goto_2
    if-eqz v6, :cond_3

    .line 260
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 262
    :catch_2
    move-exception v1

    .line 263
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 253
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 259
    :goto_3
    if-eqz v6, :cond_3

    .line 260
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 262
    :catch_4
    move-exception v1

    .line 263
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 257
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 259
    :goto_4
    if-eqz v6, :cond_5

    .line 260
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 265
    :cond_5
    :goto_5
    throw v9

    .line 262
    :catch_5
    move-exception v1

    .line 263
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 262
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .line 263
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_1

    .line 257
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_4

    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_4

    .line 253
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_7
    move-exception v10

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v10

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .line 249
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_9
    move-exception v10

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v10

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "context"
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0, p1, p2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    :cond_0
    return-void
.end method

.method public static shakeCallback(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "mContext"
    .parameter "runnableStart"
    .parameter "runnableStop"

    .prologue
    .line 38
    sput-object p1, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStart:Ljava/lang/Runnable;

    .line 39
    sput-object p2, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStop:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method public static shakeRunnableStart()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStart:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 46
    :cond_0
    return-void
.end method

.method public static shakeRunnableStop()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStop:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 138
    if-nez p0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 142
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 143
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
