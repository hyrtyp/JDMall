.class public final Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# static fields
.field private static final EXPORT_COL_PROJECTION:[Ljava/lang/String; = null

.field private static final EXPORT_DATE_TIME_FORMAT:Ljava/text/DateFormat; = null

.field private static final GET_ITEM_COL_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_COL_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_ITEMS:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_COL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    const-class v0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->TAG:Ljava/lang/String;

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "text"

    aput-object v1, v0, v2

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->TEXT_COL_PROJECTION:[Ljava/lang/String;

    .line 59
    new-array v0, v5, [Ljava/lang/String;

    .line 60
    const-string v1, "text"

    aput-object v1, v0, v2

    const-string v1, "format"

    aput-object v1, v0, v3

    const-string v1, "timestamp"

    aput-object v1, v0, v4

    .line 59
    sput-object v0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->GET_ITEM_COL_PROJECTION:[Ljava/lang/String;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text"

    aput-object v1, v0, v2

    .line 62
    const-string v1, "display"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string v1, "timestamp"

    aput-object v1, v0, v5

    .line 61
    sput-object v0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->EXPORT_COL_PROJECTION:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->ID_COL_PROJECTION:[Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->EXPORT_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 71
    return-void
.end method

.method private static massageHistoryField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 252
    const-string v0, "\""

    const-string v1, "\"\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static saveHistory(Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "history"

    .prologue
    const/4 v6, 0x0

    .line 217
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 218
    const-string v8, "BarcodeScanner"

    .line 217
    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v0, bsRoot:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "History"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .local v2, historyRoot:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v6

    .line 226
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "history-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v1, historyFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 230
    .local v4, out:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 231
    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    .line 230
    invoke-direct {v5, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .local v5, out:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v5, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v6

    .line 241
    if-eqz v5, :cond_0

    .line 243
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v7

    goto :goto_0

    .line 234
    .end local v5           #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v3

    .line 241
    .local v3, ioe:Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_0

    .line 243
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 244
    :catch_2
    move-exception v7

    goto :goto_0

    .line 240
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 241
    :goto_2
    if-eqz v4, :cond_2

    .line 243
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 248
    :cond_2
    :goto_3
    throw v6

    .line 244
    :catch_3
    move-exception v7

    goto :goto_3

    .line 240
    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v5       #out:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 234
    .end local v4           #out:Ljava/io/OutputStreamWriter;
    .restart local v5       #out:Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #out:Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method


# virtual methods
.method public addHistoryItem(Lcom/google/zxing/Result;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 118
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-virtual {v3}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SAVE_HISTORY"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 119
    if-nez v3, :cond_0

    .line 143
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v1, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;

    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v1, v3}, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, helper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "history"

    const-string v4, "text=?"

    .line 128
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 127
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "text"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "format"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "display"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string v3, "history"

    const-string v4, "timestamp"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 140
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    .line 141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 142
    throw v3
.end method

.method public buildAlert()Landroid/app/AlertDialog;
    .locals 9

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->getHistoryItems()Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/zxing/Result;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 99
    .local v6, size:I
    add-int/lit8 v7, v6, 0x2

    new-array v2, v7, [Ljava/lang/String;

    .line 100
    .local v2, dialogItems:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 103
    iget-object v7, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-virtual {v7}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 104
    .local v5, res:Landroid/content/res/Resources;
    array-length v7, v2

    add-int/lit8 v7, v7, -0x2

    .line 105
    const v8, 0x7f07059a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    aput-object v8, v2, v7

    .line 106
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    .line 107
    const v8, 0x7f070596

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 106
    aput-object v8, v2, v7

    .line 108
    new-instance v1, Lcom/jingdong/lib/zxing/client/android/history/HistoryClickListener;

    .line 109
    iget-object v7, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 108
    invoke-direct {v1, p0, v7, v2, v4}, Lcom/jingdong/lib/zxing/client/android/history/HistoryClickListener;-><init>(Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;Lcom/jingdong/lib/zxing/client/android/CaptureActivity;[Ljava/lang/String;Ljava/util/List;)V

    .line 110
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f07059b

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 101
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method buildHistory()Ljava/lang/CharSequence;
    .locals 14

    .prologue
    .line 186
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    .local v11, historyText:Ljava/lang/StringBuilder;
    new-instance v10, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v10, v1}, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 188
    .local v10, helper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 189
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 191
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "history"

    sget-object v2, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->EXPORT_COL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 192
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    .line 191
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 193
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 208
    if-eqz v9, :cond_0

    .line 209
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 213
    return-object v11

    .line 194
    :cond_1
    const/4 v8, 0x0

    .local v8, col:I
    :goto_1
    :try_start_1
    sget-object v1, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->EXPORT_COL_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    if-lt v8, v1, :cond_3

    .line 201
    sget-object v1, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->EXPORT_COL_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 203
    .local v12, timestamp:J
    const/16 v1, 0x22

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    sget-object v2, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->EXPORT_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    .line 205
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v2}, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->massageHistoryField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v8           #col:I
    .end local v12           #timestamp:J
    :catchall_0
    move-exception v1

    .line 208
    if-eqz v9, :cond_2

    .line 209
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 212
    throw v1

    .line 195
    .restart local v8       #col:I
    :cond_3
    const/16 v1, 0x22

    :try_start_2
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->massageHistoryField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method clearHistory()V
    .locals 5

    .prologue
    .line 256
    new-instance v1, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;

    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v1, v2}, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 257
    .local v1, helper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 259
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "history"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 263
    return-void

    .line 260
    :catchall_0
    move-exception v2

    .line 261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 262
    throw v2
.end method

.method getHistoryItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v9, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;

    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v9, v2}, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 75
    .local v9, helper:Landroid/database/sqlite/SQLiteOpenHelper;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v10, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/zxing/Result;>;"
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 79
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "history"

    sget-object v2, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->GET_ITEM_COL_PROJECTION:[Ljava/lang/String;

    .line 80
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    .line 79
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 81
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 88
    if-eqz v8, :cond_0

    .line 89
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 93
    return-object v10

    .line 82
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/zxing/Result;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    .line 84
    const/4 v6, 0x2

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 82
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 85
    .local v1, result:Lcom/google/zxing/Result;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    .end local v1           #result:Lcom/google/zxing/Result;
    :catchall_0
    move-exception v2

    .line 88
    if-eqz v8, :cond_2

    .line 89
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 92
    throw v2
.end method

.method public trimHistory()V
    .locals 11

    .prologue
    .line 146
    new-instance v10, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->activity:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v10, v1}, Lcom/jingdong/lib/zxing/client/android/history/DBHelper;-><init>(Landroid/content/Context;)V

    .line 147
    .local v10, helper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 148
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 150
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "history"

    sget-object v2, Lcom/jingdong/lib/zxing/client/android/history/HistoryManager;->ID_COL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 151
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    .line 150
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 152
    const/4 v8, 0x0

    .line 153
    .local v8, count:I
    :goto_0
    const/16 v1, 0x32

    if-ge v8, v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 161
    if-eqz v9, :cond_1

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 166
    return-void

    .line 154
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    :cond_3
    :try_start_1
    const-string v1, "history"

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 160
    .end local v8           #count:I
    :catchall_0
    move-exception v1

    .line 161
    if-eqz v9, :cond_4

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 165
    throw v1
.end method
