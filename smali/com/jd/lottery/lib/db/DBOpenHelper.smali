.class public Lcom/jd/lottery/lib/db/DBOpenHelper;
.super Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;
.source "DBOpenHelper.java"


# static fields
.field private static final DB_FILE:Ljava/lang/String; = "jdlottery.db"

.field private static final DB_VER:I = 0x17


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 19
    const-string v0, "jdlottery.db"

    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/jd/lottery/lib/model/Entry;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/jd/lottery/lib/db/DBOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)Z

    .line 26
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/jd/lottery/lib/model/MainPageEntity;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/jd/lottery/lib/db/DBOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)Z

    .line 27
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/jd/lottery/lib/model/CurrIssueEntity;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/jd/lottery/lib/db/DBOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)Z

    .line 28
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/jd/lottery/lib/model/PrevIssueEntity;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/jd/lottery/lib/db/DBOpenHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)Z

    .line 29
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/jd/lottery/lib/db/DBOpenHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Z

    .line 34
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/db/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    return-void
.end method
