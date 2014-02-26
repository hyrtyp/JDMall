.class public Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;
.super Landroid/content/ContentProvider;
.source "DownloadDBProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$Download;,
        Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.jingdong.app.mall.provider"

.field private static final DOWNLOAD_DATA:I = 0x0

.field public static final DOWNLOAD_TABLE:Ljava/lang/String; = "plug"

.field private static final NAME:Ljava/lang/String; = "plug.db"

.field private static final TAG:Ljava/lang/String; = "DownloadDBProvider"

.field public static final URI_DOWNLOAD:Landroid/net/Uri; = null

.field private static final VERSION:I = 0x2


# instance fields
.field db:Landroid/database/sqlite/SQLiteDatabase;

.field mOpenHelper:Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;

.field private sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "content://com.jingdong.app.mall.provider/plug"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->URI_DOWNLOAD:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, num:I
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, tableName:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 90
    return v0
.end method

.method public getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    const-string v0, "plug"

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uri IllegalArgument:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/plug"

    return-object v0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 75
    const-wide/16 v0, -0x1

    .line 76
    .local v0, id:J
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, tableName:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Content is empty"

    invoke-virtual {v3, v2, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 78
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 79
    const/4 v3, 0x0

    .line 81
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 27
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 28
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.jingdong.app.mall.provider"

    const-string v2, "plug"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    new-instance v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;-><init>(Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->mOpenHelper:Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->mOpenHelper:Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    .local v8, cur:Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, tableName:Ljava/lang/String;
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 58
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, num:I
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, tableName:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 99
    return v0
.end method
