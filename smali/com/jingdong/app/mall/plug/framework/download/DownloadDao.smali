.class public final Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;
.super Ljava/lang/Object;
.source "DownloadDao.java"


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DESCREPTION:Ljava/lang/String; = "description"

.field public static final GROUP:Ljava/lang/String; = "group"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INSTALLPATH:Ljava/lang/String; = "install_path"

.field public static final LAUNCH:Ljava/lang/String; = "launch"

.field public static final LUNCHPATH:Ljava/lang/String; = "lunch_path"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PATH:Ljava/lang/String; = "download_filepath"

.field public static final PLUGKEY:Ljava/lang/String; = "plug_key"

.field public static final PROCESS:Ljava/lang/String; = "process"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TOTAL:Ljava/lang/String; = "total"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final VERSION:Ljava/lang/String; = "version"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static dao:Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

.field public static final url:Landroid/net/Uri;


# instance fields
.field final TAG:Ljava/lang/String;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->dao:Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    .line 38
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;->URI_DOWNLOAD:Landroid/net/Uri;

    sput-object v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    .line 279
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "DownloadDao"

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    return-void
.end method

.method public static declared-synchronized getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    const-class v1, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->dao:Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->dao:Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    .line 56
    :cond_0
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->dao:Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPlugInfo(Landroid/database/Cursor;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 588
    const/4 v1, 0x0

    .line 590
    .local v1, info:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :try_start_0
    const-string v3, "plug_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->createPlug(I)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 592
    :cond_0
    const/4 v3, 0x0

    .line 620
    :goto_0
    return-object v3

    .line 594
    :cond_1
    const-string v3, "id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    .line 595
    const-string v3, "progress"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->progress:J

    .line 596
    const-string v3, "total"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->total:J

    .line 597
    const-string v3, "size"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->size:J

    .line 598
    const-string v3, "description"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->description:Ljava/lang/String;

    .line 599
    const-string v3, "icon"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->picUrl:Ljava/lang/String;

    .line 600
    const-string v3, "download_filepath"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    .line 601
    const-string v3, "install_path"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    .line 603
    const-string v3, "url"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downloadUrl:Ljava/lang/String;

    .line 604
    const-string v3, "name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugName:Ljava/lang/String;

    .line 605
    const-string v3, "version"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    .line 606
    const-string v3, "plug_key"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugKey:Ljava/lang/String;

    .line 607
    const-string v3, "status"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 608
    .local v2, status:I
    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status(I)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 609
    const-string v3, "date"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->date:Ljava/lang/String;

    .line 610
    const-string v3, "lunch_path"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    .line 611
    const-string v3, "launch"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    .line 612
    const-string v3, "plug_update"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->update:I

    .line 613
    const-string v3, "screen"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    .line 614
    const-string v3, "process"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->process:I

    .line 615
    const-string v3, "plug_group"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->group:Ljava/lang/String;

    .line 616
    const-string v3, "size"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #status:I
    :goto_1
    move-object v3, v1

    .line 620
    goto/16 :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 0

    .prologue
    .line 637
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized delete(Ljava/lang/String;)I
    .locals 9
    .parameter "id"

    .prologue
    .line 246
    monitor-enter p0

    const/4 v1, -0x1

    .line 248
    .local v1, flag:I
    :try_start_0
    const-string v2, "id=?"

    .line 250
    .local v2, selection:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 253
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2           #selection:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized exist(Ljava/lang/String;)Z
    .locals 12
    .parameter "id"

    .prologue
    .line 124
    monitor-enter p0

    const/4 v7, 0x0

    .line 126
    .local v7, isExist:Z
    const/4 v2, 0x0

    .line 127
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    const-string v3, "id=?"

    .line 130
    .local v3, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 131
    .local v5, sortOrder:Ljava/lang/String;
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    .local v6, cur:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 133
    const-string v0, ""

    const-string v1, "cur==null"

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v7, 0x0

    move v8, v7

    .line 147
    .end local v3           #selection:Ljava/lang/String;
    .end local v5           #sortOrder:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v7           #isExist:Z
    .local v8, isExist:I
    :goto_0
    monitor-exit p0

    return v8

    .line 137
    .end local v8           #isExist:I
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v5       #sortOrder:Ljava/lang/String;
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v7       #isExist:Z
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    const/4 v7, 0x1

    .line 140
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3           #selection:Ljava/lang/String;
    .end local v5           #sortOrder:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    :goto_1
    move v8, v7

    .line 147
    .restart local v8       #isExist:I
    goto :goto_0

    .line 124
    .end local v8           #isExist:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized initStatus()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 72
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "status"

    sget-object v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->UNDOWNLOAD:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOADING:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-virtual {v7}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOAD_FAIL:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-virtual {v7}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 75
    .local v1, selectionArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const-string v7, "status=? or status=?"

    invoke-virtual {v5, v6, v2, v7, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #selectionArgs:[Ljava/lang/String;
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v3

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "DownloadDao"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/jingdong/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 80
    goto :goto_0

    .line 72
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized insert(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->exist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "id"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "progress"

    iget-wide v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->progress:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v2, "total"

    iget-wide v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->total:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v2, "description"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "version"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "download_filepath"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "install_path"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "plug_type"

    iget v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v2, "icon"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->picUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "url"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "name"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "plug_key"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "status"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v2, "date"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->date:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "lunch_path"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "launch"

    iget v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v2, "plug_update"

    iget v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->update:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v2, "screen"

    iget v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v2, "process"

    iget v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->process:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v2, "plug_group"

    iget-object v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->group:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "size"

    iget-wide v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 217
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "DownloadDao"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized select(Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 9
    .parameter "plugId"

    .prologue
    .line 436
    monitor-enter p0

    const/4 v8, 0x0

    .line 438
    .local v8, info:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :try_start_0
    const-string v3, "id=?"

    .line 439
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 446
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getPlugInfo(Landroid/database/Cursor;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v8

    .line 450
    :cond_0
    if-eqz v6, :cond_1

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v8

    .line 454
    :catch_0
    move-exception v7

    .line 455
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 436
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectAll()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .local v10, list:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "  status DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 369
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 370
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 371
    const/4 v8, 0x0

    .local v8, i:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .local v11, size:I
    :goto_0
    if-lt v8, v11, :cond_2

    .line 380
    .end local v8           #i:I
    .end local v11           #size:I
    :cond_0
    if-eqz v6, :cond_1

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v10

    .line 372
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #i:I
    .restart local v11       #size:I
    :cond_2
    :try_start_2
    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getPlugInfo(Landroid/database/Cursor;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v9

    .line 373
    .local v9, info:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v9, :cond_3

    .line 374
    iget-object v0, v9, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 371
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 384
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #i:I
    .end local v9           #info:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .end local v11           #size:I
    :catch_0
    move-exception v7

    .line 385
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 366
    .end local v7           #e:Ljava/lang/Exception;
    .end local v10           #list:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectAllToList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 403
    const-string v5, "  status DESC"

    .line 402
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 405
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 407
    const/4 v8, 0x0

    .local v8, i:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .local v10, size:I
    :goto_0
    if-lt v8, v10, :cond_2

    .line 416
    .end local v8           #i:I
    .end local v10           #size:I
    :cond_0
    if-eqz v6, :cond_1

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    monitor-exit p0

    return-object p1

    .line 408
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #i:I
    .restart local v10       #size:I
    :cond_2
    :try_start_1
    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getPlugInfo(Landroid/database/Cursor;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v9

    .line 409
    .local v9, info:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v9, :cond_3

    .line 410
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 407
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 420
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #i:I
    .end local v9           #info:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .end local v10           #size:I
    :catch_0
    move-exception v7

    .line 421
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 402
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V
    .locals 8
    .parameter "pluginfo"

    .prologue
    const-wide/16 v6, -0x1

    .line 290
    monitor-enter p0

    :try_start_0
    const-string v1, "id = ?"

    .line 291
    .local v1, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 292
    .local v2, whereArgs:[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v0, values:Landroid/content/ContentValues;
    iget-wide v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->progress:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_0

    .line 294
    const-string v3, "progress"

    iget-wide v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->progress:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 296
    :cond_0
    iget-wide v3, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->total:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    .line 297
    const-string v3, "total"

    iget-wide v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->total:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    :cond_1
    const-string v3, "description"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v3, "version"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v3, "download_filepath"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "install_path"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "icon"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v3, "url"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v3, "name"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v3, "plug_key"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugKey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v3, "plug_type"

    iget v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v3, "status"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v3, "date"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->date:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v3, "lunch_path"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v3, "launch"

    iget v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v3, "plug_update"

    iget v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->update:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v3, "screen"

    iget v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v3, "process"

    iget v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->process:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v3, "plug_group"

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->group:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v3, "size"

    iget-wide v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 317
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0           #values:Landroid/content/ContentValues;
    .end local v1           #where:Ljava/lang/String;
    .end local v2           #whereArgs:[Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 318
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public declared-synchronized updatePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "id"
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->exist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v0, values:Landroid/content/ContentValues;
    const-string v3, "download_filepath"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->url:Landroid/net/Uri;

    const-string v5, "id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0           #values:Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    .line 92
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    move v1, v2

    .line 101
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
