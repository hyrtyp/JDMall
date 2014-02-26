.class public Lcom/ja/analytics/db/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "__ja_sdk.db"

.field public static final DB_VERSION_CODE:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static helper:Lcom/ja/analytics/db/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/ja/analytics/db/DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "versionCode"

    .prologue
    .line 18
    const-string v0, "__ja_sdk.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    sget-object v0, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, " JaSdkDatabaseHelper=> "

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public static declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7
    .parameter "context"

    .prologue
    .line 23
    const-class v4, Lcom/ja/analytics/db/DatabaseHelper;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " getDatabase() => context=: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v3, Lcom/ja/analytics/db/DatabaseHelper;->helper:Lcom/ja/analytics/db/DatabaseHelper;

    if-nez v3, :cond_0

    .line 25
    sget-object v3, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v5, " new DatabaseHelper(context, DB_VERSION_CODE) "

    invoke-static {v3, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    new-instance v3, Lcom/ja/analytics/db/DatabaseHelper;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5}, Lcom/ja/analytics/db/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/ja/analytics/db/DatabaseHelper;->helper:Lcom/ja/analytics/db/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    sget-object v3, Lcom/ja/analytics/db/DatabaseHelper;->helper:Lcom/ja/analytics/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/ja/analytics/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 30
    .local v2, writableDatabase:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v5, "writableDatabase =>"

    invoke-static {v3, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .end local v2           #writableDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v4

    return-object v2

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    const-string v3, "__ja_sdk.db"

    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 37
    sget-object v3, Lcom/ja/analytics/db/DatabaseHelper;->helper:Lcom/ja/analytics/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/ja/analytics/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 38
    .local v1, readDatabase:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v5, "ReadableDatabase  =>"

    invoke-static {v3, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    .line 39
    goto :goto_0

    .line 23
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #readDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 45
    sget-object v0, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, " onCreate  =>"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1}, Lcom/ja/analytics/db/EventTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-static {p1}, Lcom/ja/analytics/db/CrashTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 52
    sget-object v0, Lcom/ja/analytics/db/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, " onUpgrade  =>"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {p1, p2, p3}, Lcom/ja/analytics/db/EventTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 54
    return-void
.end method
